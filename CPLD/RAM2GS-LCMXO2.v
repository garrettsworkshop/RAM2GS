module RAM2GS(PHI2, MAin, CROW, Din, Dout,
              nCCAS, nCRAS, nFWE, LED,
              RBA, RA, RD, nRCS, RCLK, RCLKout, RCKE, 
              nRWE, nRRAS, nRCAS, RDQMH, RDQML);


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
    
    /* SDRAM Clock in/out */
    input RCLK;
	output RCLKout;
	ODDRXE rck(
		.SCLK(RCLK),
		.Q(RCLKout),
		.D0(0), .D1(1),
		.RST(0));
    
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
    assign RA[9:0] = !nRowColSel ? RowA[9:0] : MAin[9:0];
    output RDQML, RDQMH;
    assign RDQML = !nRowColSel ? 1'b1 : !MAin[9];
    assign RDQMH = !nRowColSel ? 1'b1 :  MAin[9];
    reg [7:0] WRD;
    inout [7:0] RD;
    assign RD[7:0] = (!nCCAS && !nFWE) ? WRD[7:0] : 8'bZ;

    /* UFM Interface */
    reg wb_rst;
    reg wb_cyc_stb;
	reg wb_req;
    reg wb_we;
    reg [7:0] wb_adr;
    reg [7:0] wb_dati;
	wire wb_ack;
    wire [7:0] wb_dato;
	wire ufm_irq;
    REFB ufmefb (
        .wb_clk_i(RCLK),
        .wb_rst_i(wb_rst),
        .wb_cyc_i(wb_cyc_stb),
        .wb_stb_i(wb_cyc_stb),
        .wb_we_i(wb_we),
        .wb_adr_i(wb_adr),
        .wb_dat_i(wb_dati),
        .wb_dat_o(wb_dato),
        .wb_ack_o(wb_ack),
		.wbc_ufm_irq(ufm_irq));
	
    /* UFM Command Interface */
    reg C1Submitted = 0;
    reg ADSubmitted = 0;
    reg CmdEnable = 0;
    reg CmdValid = 0;
    reg Cmdn8MEGEN = 0;
    reg CmdLEDEN = 0;
    reg CmdUFMWrite = 0;
    reg CmdUFMShift = 0;
    reg CmdUFMData = 0;
    wire ADWR = Bank[7:0]==8'hFB && MAin[7:0]==8'hFF && !nFWE;
    wire C1WR = Bank[7:0]==8'hFB && MAin[7:0]==8'hFE && !nFWE;
    wire CMDWR = Bank[7:0]==8'hFB && MAin[7:0]==8'hFD && !nFWE;
    
    /* State Counters */
    reg InitReady = 0; // 1 if ready for init sequence
    reg Ready = 0; // 1 if done with init sequence
    reg [1:0] S = 0; // post-RAS State counter
    reg [17:0] FS = 0; // Fast init state counter
    reg [3:0] IS = 0; // Init state counter
    
    /* Synchronize PHI2, RAS, CAS */
    always @(posedge RCLK) begin
        PHI2r <= PHI2; PHI2r2 <= PHI2r; PHI2r3 <= PHI2r2;
        RASr <= !nCRAS; RASr2 <= RASr; RASr3 <= RASr2;
        CASr <= !nCCAS; CASr2 <= CASr; CASr3 <= CASr2;
    end
    
    /* Latch 65816 bank when PHI2 rises */
    always @(posedge PHI2) begin
        if (Ready) RA11 <= (Din[6] && !n8MEGEN) ^ XOR8MEG; // Set RA11
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
        FWEr <= !nFWE;
        CBR <= !nCCAS;
    end

    /* Latch write data when CAS falls */
    always @(negedge nCCAS) begin
        WRD[7:0] <= Din[7:0];
    end

    /* State counter from RAS */
    always @(posedge RCLK) begin
        if (!RASr2) S <= 0;
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
        RCKE <= ((RASr || RASr2) && RCKEEN) || (!RASr2 && RASr3);
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
                    RCKEEN <= !CBR && !FWEr;
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
                RCKEEN <= !CBR; // Disable clock if refresh cycle
            end else if (S==2) begin
                if (!FWEr && !CBR) begin
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
                RCKEEN <= !CBR && FWEr; // Enable clock only for writes
            end else if (S==3) begin
                if (CASr2 && !CASr3 && !CBR && FWEr) begin
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
                nRowColSel <= !(!FWEr || CASr3 || CBR);
                RCKEEN <= !(!FWEr || CASr2 || CBR);
            end
        end else if (InitReady) begin
            if (S==0 && RASr2) begin
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
            if (S==3 && !RASr2 && IS==15) Ready <= 1'b1;
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
        if (C1WR && Din[7:0]==8'hC1) begin // "C1" magic number
            if (ADSubmitted) begin
                CmdEnable <= 1'b1;
            end
            C1Submitted <= 1'b1;
            ADSubmitted <= 1'b0;
        end else if (ADWR && Din[7:0]==8'hAD) begin // "AD" magic number
            if (C1Submitted) begin
                CmdEnable <= 1'b1;
            end
            ADSubmitted <= 1'b1;
            C1Submitted <= 1'b0;
        end else if (C1WR || ADWR) begin // wrong magic number submitted
            CmdEnable <= 1'b0;
            C1Submitted <= 1'b0;
            ADSubmitted <= 1'b0;
        end else if (CMDWR) CmdEnable <= 1'b0;

        // Submit command
        if (CMDWR && CmdEnable) begin
            // if (Din[7:4]==4'h0 && Din[3:2]==2'b00) begin // MAX w/LED 
            // if (Din[7:4]==4'h0) begin // MAX w/o LED
            // if (Din[7:4]==4'h0 && Din[3:2]==2'b01) begin // LCMXO / iCE40 / AGM
            if (Din[7:4]==4'h0 && Din[3:2]==2'b10) begin // LCMXO2
                XOR8MEG <= Din[0] && !(LEDEN && Din[1]);
                CmdValid <= 1'b0;
            end else if (Din[7:4]==4'h0) begin // Unsupported type 
                XOR8MEG <= 0;
                CmdValid <= 1'b0;
            end else if (Din[7:4]==4'h1) begin
                CmdLEDEN <= Din[1];
                Cmdn8MEGEN <= !Din[0];
                CmdUFMShift <= 1'b0;
                CmdUFMWrite <= 1'b0;
                CmdValid <= 1'b1;
            end else if (Din[7:4]==4'h2) begin
                // Reserved for MAX commands
                CmdValid <= 1'b0;
            end else if (Din[7:4]==4'h3 && !Din[3]) begin
                // Reserved for SPI (LCMXO, iCE40) commands
                // Din[2] - CS
                // Din[1] - SCK
                // Din[0] - SDI
                CmdValid <= 1'b0;
            end else if (Din[7:4]==4'h3 &&  Din[3]) begin
                // LCMXO2 commands
                // Din[1] - Shift when low, execute when high
                // Din[0] - Shift data
                CmdUFMShift <= !Din[1];
                CmdUFMWrite <= Din[1:0] == 2'b10;
				CmdUFMData <= Din[0];
                CmdLEDEN <= LEDEN;
                Cmdn8MEGEN <= n8MEGEN;
                CmdValid <= 1'b1;
            end else CmdValid <= 1'b0;
        end else CmdValid <= 1'b0;
    end

    /* UFM Control */
    always @(posedge RCLK) begin
        if (!InitReady && FS[17:15]==3'h0) begin
            wb_rst <= !FS[14];
            wb_we <= 1'b0;
			wb_cyc_stb <= 1'b0;
			wb_req <= 1'b0;
            wb_adr[7:0] <= 8'h00;
            wb_dati[7:0] <= 8'h00;
        end else if (!InitReady && FS[17:15]==3'h1) begin
            wb_rst <= 1'b0;
			
			if (FS[8:0]==0) wb_cyc_stb <= 0;
			else if (FS[8:0]==1 && wb_req) wb_cyc_stb <= 1;
			else if (wb_ack) wb_cyc_stb <= 0;
            case (FS[14:9])
                0: begin // Open frame
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h70;
                    wb_dati[7:0] <= 8'h80;
					wb_req <= 1;
                end 1: begin // Enable configuration interface - command
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h74;
					wb_req <= 1;
                end 2: begin // Enable configuration interface - operand 1/3
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h08;
					wb_req <= 1;
                end 3: begin // Enable configuration interface - operand 2/3
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;
                end 4: begin // Enable configuration interface - operand 3/3
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;
                end 5: begin // Close frame
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h70;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;

                end 6: begin // Open frame
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h70;
                    wb_dati[7:0] <= 8'h80;
					wb_req <= 1;
                end 7: begin // Poll status register - command
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h3C;
					wb_req <= 1;
                end 8: begin // Poll status register - operand 1/3
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;
                end 9: begin // Poll status register - operand 2/3
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;
                end 10: begin // Poll status register - operand 3/3
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;
                end 11, 12, 13, 14: begin // Read status register 1-4
                    wb_we <= 1'b0;
                    wb_adr[7:0] <= 8'h73;
                    wb_dati[7:0] <= 8'h3C;
					wb_req <= 1;
                end 15: begin // Close frame
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h70;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;

                end 16: begin // Open frame
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h70;
                    wb_dati[7:0] <= 8'h80;
					wb_req <= 1;
                end 17: begin // Set UFM address - command
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'hB4;
					wb_req <= 1;
                end 18: begin // Set UFM address - operand 1/3
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;
                end 19: begin // Set UFM address - operand 2/3
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;
                end 20: begin // Set UFM address - operand 3/3
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;
                end 21: begin // Set UFM address - data 1/4
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h40;
					wb_req <= 1;
                end 22: begin // Set UFM address - data 2/4
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;
                end 23: begin // Set UFM address - data 3/4
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;
                end 24: begin // Set UFM address - data 4/4
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 190;
					wb_req <= 1;
                end 25: begin // Close frame
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h70;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;

                end 26: begin // Open frame
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h70;
                    wb_dati[7:0] <= 8'h80;
					wb_req <= 1;
                end 27: begin // Read UFM page - command
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'hCA;
					wb_req <= 1;
                end 28: begin // Read UFM page - operand 1/3
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h10;
					wb_req <= 1;
                end 29: begin // Read UFM page - operand 2/3
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;
                end 30: begin // Read UFM page - operand 3/3
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h01;
					wb_req <= 1;
                end 31: begin // Read UFM page - data 0
                    wb_we <= 1'b0;
                    wb_adr[7:0] <= 8'h73;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;
                    if (wb_ack) begin
                        LEDEN <= wb_dato[1];
                        n8MEGEN <= wb_dato[0];
                    end
                end     32, 33, 34,
                    35, 36, 37, 38,
                    39, 40, 41, 42,
                    43, 44, 45, 46: begin // Read UFM page - data 1-15
                    wb_we <= 1'b0;
                    wb_adr[7:0] <= 8'h73;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;
                end 47: begin // Close frame
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h70;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;

                end 48: begin // Open frame
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h70;
                    wb_dati[7:0] <= 8'h80;
					wb_req <= 1;
                end 49: begin // Disable configuration interface - command
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h26;
					wb_req <= 1;
                end 50: begin // Disable configuration interface - operand 1/2
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;
                end 51: begin // Disable configuration interface - operand 2/2
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;
                end 52: begin // Close frame
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h70;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;

                end 53: begin // Open frame
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h70;
                    wb_dati[7:0] <= 8'h80;
					wb_req <= 1;
                end 54: begin // Bypass - command
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h71;
                    wb_dati[7:0] <= 8'hFF;
					wb_req <= 1;
                end 55: begin // Close frame
                    wb_we <= 1'b1;
                    wb_adr[7:0] <= 8'h70;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 1;
                end default: begin
                    wb_we <= 1'b0;
                    wb_adr[7:0] <= 8'h70;
                    wb_dati[7:0] <= 8'h00;
					wb_req <= 0;
                end
            endcase
        end else if (!InitReady) begin
            wb_rst <= 1'b0;
            wb_cyc_stb <= 1'b0;
			wb_req <= 1'b0;
            wb_we <= 1'b0;
            wb_adr[7:0] <= 8'h00;
            wb_dati[7:0] <= 8'h00;
        end else if (!PHI2r2 && PHI2r3 && CmdValid) begin
            wb_rst <= 1'b0;
			wb_req <= 1'b0;
            // Set user command signals after PHI2 falls
            LEDEN <= CmdLEDEN;
            n8MEGEN <= Cmdn8MEGEN;
            if (CmdUFMShift) begin
                wb_adr[7:0] <= { wb_adr[6:0], wb_dati[7] };
                wb_dati[7:0] <= { wb_dati[6:0], wb_we };
                wb_we <= CmdUFMData;
            end
            wb_cyc_stb <= CmdUFMWrite;
        end else wb_cyc_stb <= 0;
    end
endmodule
