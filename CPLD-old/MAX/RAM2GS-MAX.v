module RAM2GS(PHI2, MAin, CROW, Din, Dout,
			  nCCAS, nCRAS, nFWE, LED,
			  RBA, RA, RD, nRCS, RCLK, RCKE,
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
	assign LED = ~(~nCRAS &&  LEDEN);

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
	inout [7:0] RD = (~nCCAS & ~nFWE) ? WRD[7:0] : 8'bZ;

	/* UFM Interface */
	reg [15:15] UFMD = 0; // UFM data register bit 15
	reg ARCLK = 0; // UFM address register clock
	// UFM address register data input tied to 0
	reg ARShift = 0; // 1 to Shift UFM address in, 0 to increment
	reg DRCLK = 0; // UFM data register clock
	reg DRDIn = 0; // UFM data register input
	reg DRShift = 0; // 1 to shift UFM out, 0 to load from current address
	reg UFMErase = 0; // Rising edge starts erase. UFM+RTP must not be busy
	reg UFMProgram = 0; // Rising edge starts program. UFM+RTP must not be busy
	reg UFMOscEN = 0; // UFM oscillator enable
	wire UFMBusy; // 1 if UFM is doing user operation. Asynchronous
	wire RTPBusy; // 1 if real-time programming in progress. Asynchronous
	wire DRDOut; // UFM data output
	// UFM oscillator always enabled
	wire UFMOsc; // UFM oscillator output (3.3-5.5 MHz)
	UFM UFM_inst ( // UFM IP block (for Altera MAX II and MAX V)
		.arclk (ARCLK),
		.ardin (1'b0),
		.arshft (ARShift),
		.drclk (DRCLK),
		.drdin (DRDIn),
		.drshft (DRShift),
		.erase (UFMErase),
		.oscena (UFMOscEN),
		.program (UFMProgram),
		.busy (UFMBusy),
		.drdout (DRDOut),
		.osc (UFMOsc),
		.rtpbusy (RTPBusy));
	reg UFMBusyReg = 0; // UFMBusy registered to sync with RCLK
	reg RTPBusyReg = 0; // RTPBusy registered to sync with RCLK

	/* UFM State */
	reg UFMInitDone = 0; // 1 if UFM initialization finished
	reg UFMReqErase = 0; // 1 if UFM requires erase

	/* UFM Command Interface */
	reg C1Submitted = 0;
	reg ADSubmitted = 0;
	reg CmdEnable = 0;
	reg CmdSubmitted = 0;
	reg CmdLEDEN = 0;
	reg Cmdn8MEGEN = 0;
	reg CmdDRCLK = 0;
	reg CmdDRDIn = 0;
	reg CmdUFMErase = 0; // Set by user command. Programs UFM
	reg CmdUFMPrgm = 0; // Set by user command. Erases UFM
	wire ADWR = Bank[7:0]==8'hFB & MAin[7:0]==8'hFF & ~nFWE;
	wire C1WR = Bank[7:0]==8'hFB & MAin[7:0]==8'hFE & ~nFWE;
	wire CMDWR = Bank[7:0]==8'hFB & MAin[7:0]==8'hFD & ~nFWE;
	
	/* State Counters */
	reg InitReady = 0; // 1 if ready for init sequence
	reg Ready = 0; // 1 if done with init sequence
	reg [1:0] S = 0; // post-RAS State counter
	reg [17:0] FS = 0; // Fast init state counter
	reg [3:0] IS = 0; // Init state counter
	reg WriteDone;
	
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
			RBA[1:0] <= 2'b00;		// Reserved in mode register
			RowA[9] <= 1'b1;		// "1" for single write mode
			RowA[8] <= 1'b0;		// Reserved
			RowA[7] <= 1'b0;		// "0" for not test mode
			RowA[6:4] <= 3'b010;	// "2" for CAS latency 2
			RowA[3] <= 1'b0;		// "0" for sequential burst (not used)
			RowA[2:0] <= 3'b000;	// "0" for burst length 1 (no burst)
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
		else S <= S+1;
	end
	/* Init state counter */
	always @(posedge RCLK) begin
		// Wait ~4.178ms (at 62.5 MHz) before starting init sequence
		FS <= FS+1;
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
				IS <= IS+1;
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
				UFMOscEN <= 1'b1;
			end
			C1Submitted <= 1'b1;
			ADSubmitted <= 1'b0;
		end else if (ADWR & Din[7:0]==8'hAD) begin // "AD" magic number
			if (C1Submitted) begin
				CmdEnable <= 1'b1;
				UFMOscEN <= 1'b1;
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
			if (Din[7:4]==4'h0 && Din[3:2]==2'b01) begin
				// LCMXO, LCMXO2, iCE40 ignore this unless Din[2] and Din[1] set
				// MAX w/ LED ignores this unless Din[2] set
				// MAX w/o LED does not check Din[3:1].
				XOR8MEG <= Din[0];
			end else if (Din[7:4]==4'h1) begin
				CmdLEDEN <= ~Din[1];
				Cmdn8MEGEN <= ~Din[0];
				CmdSubmitted <= 1'b1;
			end else if (Din[7:4]==4'h2) begin
				// MAX commands
				CmdLEDEN <= LEDEN;
				Cmdn8MEGEN <= n8MEGEN;
				CmdUFMErase <= Din[3];
				CmdUFMPrgm <= Din[2];
				CmdDRCLK <= Din[1];
				CmdDRDIn <= Din[0];
				CmdSubmitted <= 1'b1;
			end else if (Din[7:4]==4'h3 && ~Din[3]) begin
				// Reserved for LCMXO2 commands
				// Din[1] - Shift when high, execute when low
				// Din[0] - Shift data
			end else if (Din[7:4]==4'h3 && Din[3]) begin
				// Reserved for SPI (LCMXO, iCE40) commands
				// Din[2] - CS
				// Din[1] - SCK
				// Din[0] - SDI
			end
		end
	end

	/* UFM Control */
	always @(posedge RCLK) begin
		if (~Ready) begin
			if (~UFMInitDone & FS[17:16]==2'b00) begin
				// Shift 0 into address register
				ARCLK <= FS[3]; // Clock address register
				ARShift <= 1'b1; // Shift 0 into address register
				DRCLK <= 1'b0; // Don't clock data register
				DRDIn <= 1'b0; // DRDIn is don't care
				DRShift <= 1'b0; // DRShift is don't care
			end else if (~UFMInitDone & FS[17:16]==2'b01 & FS[7:4]==4'h0) begin
				// Parallel transfer UFM data to shift register
				ARCLK <= 1'b0; // Don't clock address register
				ARShift <= 1'b0; // ARShift is don't care
				DRCLK <= FS[3]; // Clock data register
				DRDIn <= 1'b0; // DRDIn is don't care
				DRShift <= 1'b0; // Parallel transfer to data register
			end else if (~UFMInitDone & FS[17:16]==2'b01 & FS[7:4]==4'h4) begin
				// Shift UFM data shift register
				ARCLK <= 1'b0; // Don't clock address register
				ARShift <= 1'b0; // ARShift is don't care
				DRCLK <= FS[3]; // Clock data register
				DRDIn <= 1'b0; // DRDIn is don't care
				DRShift <= 1'b1; // Shift data register
				// Capture bit 15 of this UFM word in UFMD register
				if (FS[3:0]==4'h7) UFMD[15] <= DRDOut;
			end else if (~UFMInitDone & FS[17:16]==2'b01 & FS[7:4]==4'h5) begin
				// Shift UFM data shift register
				ARCLK <= 1'b0; // Don't clock address register
				ARShift <= 1'b0; // ARShift is don't care
				DRCLK <= FS[3]; // Clock data register
				DRDIn <= 1'b0; // DRDIn is don't care
				DRShift <= 1'b1; // Shift data register
				// If valid setting here, set capacity setting to UFMD[14]
				if (FS[3:0]==4'h7 && ~UFMD[15]) n8MEGEN <= ~DRDOut;
			end else if (~UFMInitDone & FS[17:16]==2'b01 & FS[7:4]==4'h6) begin
				if (UFMD[15]) UFMInitDone <= 1'b1; // If current spot erased, quit iterating
				else begin // If valid setting here
					LEDEN <= ~DRDOut; // LED enabled if UFMD[13]==0
					// If last byte in sector, mark need to erase
					if (FS[15:8]==8'hFF) begin
						UFMReqErase <= 1'b1; // Mark need to wrap around
						UFMInitDone <= 1'b1; // Quit iterating
					end
				end

				// Increment UFM address
				ARCLK <= FS[3]; // Clock address register
				ARShift <= 1'b0; // Increment UFM address
				DRCLK <= 1'b0; // Don't clock data register
				DRDIn <= 1'b0; // DRDIn is don't care
				DRShift <= 1'b0; // DRShift is don't care
			end else if (FS[17:16]==2'b10 & UFMReqErase) begin
				// Shift 0 into address register
				ARCLK <= FS[3]; // Clock address register
				ARShift <= 1'b1; // Shift 0 into address register
				DRCLK <= 1'b0; // Don't clock data register
				DRDIn <= 1'b0; // DRDIn is don't care
				DRShift <= 1'b0; // DRShift is don't care
			end else begin
				// Don't do anything with UFM
				ARCLK <= 1'b0; // Don't clock address register
				ARShift <= 1'b0; // ARShift is don't care
				DRCLK <= 1'b0; // Don't clock data register
				DRDIn <= 1'b0; // DRDIn is don't care
				DRShift <= 1'b0; // DRShift is don't care
			end

			// Don't erase or program UFM during initialization 
			UFMErase <= 1'b0;
			UFMProgram <= 1'b0;
		end else begin
			// Can only shift UFM data register now
			ARCLK <= 1'b0;
			ARShift <= 1'b0;
			DRShift <= 1'b1;

			// Set user command signals after PHI2 falls
			if (~PHI2r2 & PHI2r3 & CmdSubmitted) begin
				n8MEGEN <= Cmdn8MEGEN;
				DRCLK <= CmdDRCLK;
				DRDIn <= CmdDRDIn;
			end

			// UFM programming sequence
			if (CmdUFMPrgm | CmdUFMErase) begin
				if (~UFMBusyReg & ~RTPBusyReg) begin
					if (UFMReqErase | CmdUFMErase) UFMErase <= 1'b1;
					else if (CmdUFMPrgm) UFMProgram <= 1'b1;
				end else if (UFMBusyReg) UFMReqErase <= 1'b0;
			end
		end
	end
endmodule
