module RAM2GS(PHI2, MAin, CROW, Din, Dout,
              nCCAS, nCRAS, nFWE, LED,
              RBA, RA, RD, nRCS, RCLK, RCKE,
              nRWE, nRRAS, nRCAS, RDQMH, RDQML,
              nUFMCS, UFMCLK, UFMSDI, UFMSDO);

    /* 65816 Phase 2 Clock */
    input PHI2;

    /* Async. DRAM Control Inputs */
    input nCCAS, nCRAS;

    /* Synchronized PHI2 and DRAM signals */
    reg PHI2r, PHI2r2, PHI2r3;
    reg RASr, RASr2, RASr3;
    reg CASr, CASr2, CASr3;
    reg FWEr;
    reg CBR;

    /* Activity LED */
    reg LEDEN = 0;
    output LED;
    assign LED = !(!nCRAS && !CBR && LEDEN);

    /* 65816 Data */
    input [7:0] Din;
    output [7:0] Dout;
    assign Dout[7:0] = RD[7:0];

    /* Latched 65816 Bank Address */
    reg [7:0] Bank;

    /* Async. DRAM Address Bus */
    input [1:0] CROW;
    input [9:0] MAin;
    input nFWE;
    reg n8MEGEN = 0;
    reg XOR8MEG = 0;
    
    /* SDRAM Clock */
    input RCLK;
    
    /* SDRAM */
    reg RCKEEN;
    output reg RCKE = 0;
    output reg nRCS = 1, nRRAS = 1, nRCAS = 1, nRWE = 1;
    output reg [1:0] RBA;
    reg nRowColSel;
    reg RA11;
    reg RA10;
    reg [9:0] RowA;
    output [11:0] RA;
    assign RA[11] = RA11;
    assign RA[10] = RA10;
    assign RA[9:0] = ~nRowColSel ? RowA[9:0] : MAin[9:0];
    output RDQML, RDQMH;
    assign RDQML = ~nRowColSel ? 1'b1 : ~MAin[9];
    assign RDQMH = ~nRowColSel ? 1'b1 :  MAin[9];
    reg [7:0] WRD;
    inout [7:0] RD;
    assign RD[7:0] = (~nCCAS & ~nFWE) ? WRD[7:0] : 8'bZ;

    /* UFM Interface */
    output reg nUFMCS = 1;
    output reg UFMCLK = 0;
    output reg UFMSDI = 0;
    input UFMSDO;

    /* UFM Command Interface */
    reg C1Submitted = 0;
    reg ADSubmitted = 0;
    reg CmdEnable = 0;
    reg CmdSubmitted = 0;
    reg Cmdn8MEGEN = 0;
    reg CmdLEDEN = 0;
    reg CmdUFMCLK = 0;
    reg CmdUFMSDI = 0;
    reg CmdUFMCS = 0;
    wire ADWR = Bank[7:0]==8'hFB & MAin[7:0]==8'hFF & ~nFWE;
    wire C1WR = Bank[7:0]==8'hFB & MAin[7:0]==8'hFE & ~nFWE;
    wire CMDWR = Bank[7:0]==8'hFB & MAin[7:0]==8'hFD & ~nFWE;
    
    /* State Counters */
    reg InitReady = 0; // 1 if ready for init sequence
    reg Ready = 0; // 1 if done with init sequence
    reg [1:0] S = 0; // post-RAS State counter
    reg [17:0] FS = 0; // Fast init state counter
    reg [3:0] IS = 0; // Init state counter
    
    /* Synchronize PHI2, RAS, CAS */
    always @(posedge RCLK) begin
        PHI2r <= PHI2; PHI2r2 <= PHI2r; PHI2r3 <= PHI2r2;
        RASr <= ~nCRAS; RASr2 <= RASr; RASr3 <= RASr2;
        CASr <= ~nCCAS; CASr2 <= CASr; CASr3 <= CASr2;
    end
    
    /* Latch 65816 bank when PHI2 rises */
    always @(posedge PHI2) begin
        if (Ready) RA11 <= (Din[6] & ~n8MEGEN) ^ XOR8MEG; // Set RA11
        else RA11 <= 1'b0; // Reserved in mode register
        Bank[7:0] <= Din[7:0]; // Latch bank
    end
    
    /* Latch bank address, row address, WE, and CAS when RAS falls */
    always @(negedge nCRAS) begin
        if (Ready) begin
            RBA[1:0] <= CROW[1:0];
            RowA[9:0] <= MAin[9:0];
        end else begin
            RBA[1:0] <= 2'b00;      // Reserved in mode register
            RowA[9] <= 1'b1;        // "1" for single write mode
            RowA[8] <= 1'b0;        // Reserved
            RowA[7] <= 1'b0;        // "0" for not test mode
            RowA[6:4] <= 3'b010;    // "2" for CAS latency 2
            RowA[3] <= 1'b0;        // "0" for sequential burst (not used)
            RowA[2:0] <= 3'b000;    // "0" for burst length 1 (no burst)
        end
        FWEr <= ~nFWE;
        CBR <= ~nCCAS;
    end

    /* Latch write data when CAS falls */
    always @(negedge nCCAS) begin
        WRD[7:0] <= Din[7:0];
    end

    /* State counter from RAS */
    always @(posedge RCLK) begin
        if (~RASr2) S <= 0;
        else if (S==2'h3) S <= 2'h3;
        else S <= S+2'h1;
    end
    /* Init state counter */
    always @(posedge RCLK) begin
        // Wait ~4.178ms (at 62.5 MHz) before starting init sequence
        FS <= FS+18'h1;
        if (FS[17:10] == 8'hFF) InitReady <= 1'b1;
    end

    /* SDRAM CKE */
    always @(posedge RCLK) begin
        // Only 1 LUT4 allowed for this function!
        RCKE <= ((RASr | RASr2) & RCKEEN) | (~RASr2 & RASr3);
    end

    /* SDRAM command */
    always @(posedge RCLK) begin
        if (Ready) begin
            if (S==0) begin
                if (RASr2) begin
                    if (CBR) begin
                        // AREF
                        nRCS <= 1'b0;
                        nRRAS <= 1'b0;
                        nRCAS <= 1'b0;
                        nRWE <= 1'b1;
                        RA10 <= 1'b1; // RA10 is don't care
                    end else begin
                        // ACT
                        nRCS <= 1'b0;
                        nRRAS <= 1'b0;
                        nRCAS <= 1'b1;
                        nRWE <= 1'b1;
                        RA10 <= 1'b1; // Bank RA10 consistently "1"
                    end
                    // Enable clock only for reads
                    RCKEEN <= ~CBR & ~FWEr;
                end else if (RCKE) begin
                    // PCall
                    nRCS <= 1'b0;
                    nRRAS <= 1'b0;
                    nRCAS <= 1'b1;
                    nRWE <= 1'b0;
                    RA10 <= 1'b1; // "all"
                    RCKEEN <= 1'b1;
                end else begin
                    // NOP
                    nRCS <= 1'b1;
                    nRRAS <= 1'b1;
                    nRCAS <= 1'b1;
                    nRWE <= 1'b1;
                    RA10 <= 1'b1; // RA10 is don't care
                    RCKEEN <= 1'b1;
                end
                nRowColSel <= 1'b0; // Select registered row addres
            end else if (S==1) begin
                // NOP
                nRCS <= 1'b1;
                nRRAS <= 1'b1;
                nRCAS <= 1'b1;
                nRWE <= 1'b1;
                RA10 <= 1'b1; // RA10 is don't care
                nRowColSel <= 1'b1; // Select asynchronous column address
                RCKEEN <= ~CBR; // Disable clock if refresh cycle
            end else if (S==2) begin
                if (~FWEr & ~CBR) begin
                    // RD
                    nRCS <= 1'b0;
                    nRRAS <= 1'b1;
                    nRCAS <= 1'b0;
                    nRWE <= 1'b1;
                    RA10 <= 1'b1; // Auto-precharge
                end else begin
                    // NOP
                    nRCS <= 1'b1;
                    nRRAS <= 1'b1;
                    nRCAS <= 1'b1;
                    nRWE <= 1'b1;
                    RA10 <= 1'b1; // RA10 is don't care
                end
                nRowColSel <= 1'b1; // Select asynchronous column address
                RCKEEN <= ~CBR & FWEr; // Enable clock only for writes
            end else if (S==3) begin
                if (CASr2 & ~CASr3 & ~CBR & FWEr) begin
                    // WR
                    nRCS <= 1'b0;
                    nRRAS <= 1'b1;
                    nRCAS <= 1'b0;
                    nRWE <= 1'b0;
                    RA10 <= 1'b1; // Auto-precharge
                end else begin
                    // NOP
                    nRCS <= 1'b1;
                    nRRAS <= 1'b1;
                    nRCAS <= 1'b1;
                    nRWE <= 1'b1;
                    RA10 <= 1'b1; // RA10 is don't care
                end
                nRowColSel <= ~(~FWEr | CASr3 | CBR);
                RCKEEN <= ~(~FWEr | CASr2 | CBR);
            end
        end else if (InitReady) begin
            if (S==0 & RASr2) begin
                if (IS==0) begin
                    // NOP
                    nRCS <= 1'b1;
                    nRRAS <= 1'b1;
                    nRCAS <= 1'b1;
                    nRWE <= 1'b1;
                    RA10 <= 1'b1; // RA10 is don't care
                end else if (IS==1) begin
                    // PC all
                    nRCS <= 1'b0;
                    nRRAS <= 1'b0;
                    nRCAS <= 1'b1;
                    nRWE <= 1'b0;
                    RA10 <= 1'b1; // "all"
                end else if (IS==9) begin
                    // Load mode register
                    nRCS <= 1'b0;
                    nRRAS <= 1'b0;
                    nRCAS <= 1'b0;
                    nRWE <= 1'b0;
                    RA10 <= 1'b0; // Reserved in mode register
                end else begin
                    // AREF
                    nRCS <= 1'b0;
                    nRRAS <= 1'b0;
                    nRCAS <= 1'b0;
                    nRWE <= 1'b1;
                    RA10 <= 1'b1; // RA10 is don't care
                end
                IS <= IS+4'h1;
            end else begin
                // NOP
                nRCS <= 1'b1;
                nRRAS <= 1'b1;
                nRCAS <= 1'b1;
                nRWE <= 1'b1;
                RA10 <= 1'b1; // RA10 is don't care
            end
            if (S==3 & ~RASr2 & IS==15) Ready <= 1'b1;
            nRowColSel <= 1'b0; // Select registered row address
            RCKEEN <= 1'b1;
        end else begin
            // NOP
            nRCS <= 1'b1;
            nRRAS <= 1'b1;
            nRCAS <= 1'b1;
            nRWE <= 1'b1;
            RA10 <= 1'b1; // RA10 is don't care
            nRowColSel <= 1'b0; // Select registered row address
            RCKEEN <= 1'b0;
        end
    end
    
    /* Submit command when PHI2 falls */
    always @(negedge PHI2) begin
        // Magic number check
        if (C1WR & Din[7:0]==8'hC1) begin // "C1" magic number
            if (ADSubmitted) begin
                CmdEnable <= 1'b1;
            end
            C1Submitted <= 1'b1;
            ADSubmitted <= 1'b0;
        end else if (ADWR & Din[7:0]==8'hAD) begin // "AD" magic number
            if (C1Submitted) begin
                CmdEnable <= 1'b1;
            end
            ADSubmitted <= 1'b1;
            C1Submitted <= 1'b0;
        end else if (C1WR | ADWR) begin // wrong magic number submitted
            CmdEnable <= 1'b0;
            C1Submitted <= 1'b0;
            ADSubmitted <= 1'b0;
        end else if (CMDWR) CmdEnable <= 1'b0;

        // Submit command
        if (CMDWR & CmdEnable) begin
            // if (Din[7:4]==4'h0 && Din[3:2]==2'b00) begin // MAX w/LED 
            // if (Din[7:4]==4'h0) begin // MAX w/o LED
            if (Din[7:4]==4'h0 && Din[3:2]==2'b01) begin // LCMXO / iCE40 / AGM
            // if (Din[7:4]==4'h0 && Din[3:2]==2'b10) begin // LCMXO2
                XOR8MEG <= Din[0] && !(LEDEN && Din[1]);
            end else if (Din[7:4]==4'h0) begin // Unsupported type 
                XOR8MEG <= 0;
            end else if (Din[7:4]==4'h1) begin
                CmdLEDEN <= Din[1];
                Cmdn8MEGEN <= ~Din[0];
                CmdSubmitted <= 1'b1;
            end else if (Din[7:4]==4'h2) begin
                // Reserved for MAX commands
            end else if (Din[7:4]==4'h3 && !Din[3]) begin
                // SPI (LCMXO, iCE40, AGM) commands
                CmdLEDEN <= LEDEN;
                Cmdn8MEGEN <= n8MEGEN;
                CmdUFMCS <= Din[2];
                CmdUFMCLK <= Din[1];
                CmdUFMSDI <= Din[0];
                CmdSubmitted <= 1'b1;
            end else if (Din[7:4]==4'h3 &&  Din[3]) begin
                // Reserved for LCMXO2 commands
                // Din[1] - Shift when high, execute when low
                // Din[0] - Shift data
            end
        end
    end

    /* UFM Control */
    always @(posedge RCLK) begin
        if (~InitReady && FS[17:10]==8'h00) begin
            nUFMCS <= 1'b1;
            UFMCLK <= 1'b0;
            UFMSDI <= 1'b0;
        end else if (~InitReady && FS[17:10]==8'h01) begin
            nUFMCS <= 1'b0;
            UFMCLK <= 1'b0;
            UFMSDI <= 1'b0;
        end else if (~InitReady && FS[17:10]==8'h02) begin
            nUFMCS <= 1'b0;
            UFMCLK <= FS[4];
            case (FS[9:5]) // Shift out read data command (0x03)
                5'h00: UFMSDI <= 1'b0; // command bit 7 (0)
                5'h01: UFMSDI <= 1'b0; // command bit 6 (0)
                5'h02: UFMSDI <= 1'b0; // command bit 5 (0)
                5'h03: UFMSDI <= 1'b0; // command bit 4 (0)
                5'h04: UFMSDI <= 1'b0; // command bit 3 (0)
                5'h05: UFMSDI <= 1'b0; // command bit 2 (0)
                5'h06: UFMSDI <= 1'b1; // command bit 1 (1)
                5'h07: UFMSDI <= 1'b1; // command bit 0 (1)
                5'h08: UFMSDI <= 1'b0; // address bit 23 (0)
                5'h09: UFMSDI <= 1'b0; // address bit 22 (0)
                5'h0A: UFMSDI <= 1'b0; // address bit 21 (0)
                5'h0B: UFMSDI <= 1'b0; // address bit 20 (0)
                5'h0C: UFMSDI <= 1'b0; // address bit 19 (0)
                5'h0D: UFMSDI <= 1'b0; // address bit 18 (0)
                5'h0E: UFMSDI <= 1'b0; // address bit 17 (0)
                5'h0F: UFMSDI <= 1'b0; // address bit 16 (0)
                5'h10: UFMSDI <= 1'b0; // address bit 15 (0)
                5'h11: UFMSDI <= 1'b0; // address bit 14 (0)
                5'h12: UFMSDI <= 1'b0; // address bit 13 (0)
                5'h13: UFMSDI <= 1'b1; // address bit 12 (0)
                5'h14: UFMSDI <= 1'b0; // address bit 11 (0)
                5'h15: UFMSDI <= 1'b0; // address bit 10 (0)
                5'h16: UFMSDI <= 1'b0; // address bit 09 (0)
                5'h17: UFMSDI <= 1'b0; // address bit 08 (0)
                5'h18: UFMSDI <= 1'b0; // address bit 07 (0)
                5'h19: UFMSDI <= 1'b0; // address bit 06 (0)
                5'h1A: UFMSDI <= 1'b0; // address bit 05 (0)
                5'h1B: UFMSDI <= 1'b0; // address bit 04 (0)
                5'h1C: UFMSDI <= 1'b0; // address bit 03 (0)
                5'h1D: UFMSDI <= 1'b0; // address bit 02 (0)
                5'h1E: UFMSDI <= 1'b0; // address bit 01 (0)
                5'h1F: UFMSDI <= 1'b0; // address bit 00 (0)
            endcase
        end else if (~InitReady && FS[17:10]==8'h03) begin
            nUFMCS <= 1'b0;
            UFMCLK <= FS[4];
            UFMSDI <= 1'b0;
            // Latch n8MEGEN and LEDEN
            if (FS[9:5]==5'h00 && FS[4:0]==5'h10) n8MEGEN <= ~UFMSDO;
            if (FS[9:5]==5'h01 && FS[4:0]==5'h10) LEDEN <= ~UFMSDO;
        end else if (~InitReady && FS[17:10]!=8'hFE && FS[17:10]!=8'hFF) begin
            nUFMCS <= 1'b0;
            UFMCLK <= FS[1];
            UFMSDI <= 1'b0;
        end else if (~InitReady) begin
            nUFMCS <= 1'b1;
            UFMCLK <= 1'b0;
            UFMSDI <= 1'b0;
        end else if (~PHI2r2 & PHI2r3 & CmdSubmitted) begin
            // Set user command signals after PHI2 falls
            LEDEN <= CmdLEDEN;
            n8MEGEN <= Cmdn8MEGEN;
            nUFMCS <= ~CmdUFMCS;
            UFMCLK <= CmdUFMCLK;
            UFMSDI <= CmdUFMSDI;
        end
    end
endmodule
