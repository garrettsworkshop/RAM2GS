// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Tue Aug 17 06:19:46 2021
//
// Verilog Description of module RAM2GS
//

module RAM2GS (PHI2, MAin, CROW, Din, Dout, nCCAS, nCRAS, nFWE, 
            LED, RBA, RA, RD, nRCS, RCLK, RCKE, nRWE, nRRAS, 
            nRCAS, RDQMH, RDQML) /* synthesis syn_module_defined=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(1[8:14])
    input PHI2;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(7[8:12])
    input [9:0]MAin;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(34[14:18])
    input [1:0]CROW;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(33[14:18])
    input [7:0]Din;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(25[14:17])
    output [7:0]Dout;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(26[15:19])
    input nCCAS;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(15[8:13])
    input nCRAS;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(15[15:20])
    input nFWE;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(35[8:12])
    output LED;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(11[9:12])
    output [1:0]RBA;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(46[19:22])
    output [11:0]RA;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(51[16:18])
    inout [7:0]RD;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(59[14:16])
    output nRCS;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(45[13:17])
    input RCLK;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(40[8:12])
    output RCKE;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(44[13:17])
    output nRWE;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(45[45:49])
    output nRRAS;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(45[23:28])
    output nRCAS;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(45[34:39])
    output RDQMH;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(55[16:21])
    output RDQML;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(55[9:14])
    
    wire PHI2_c /* synthesis is_clock=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(7[8:12])
    wire nCCAS_c /* synthesis is_clock=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(15[8:13])
    wire nCRAS_c /* synthesis is_clock=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(15[15:20])
    wire RCLK_c /* synthesis SET_AS_NETWORK=RCLK_c, is_clock=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(40[8:12])
    wire wb_clk /* synthesis is_clock=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(317[6:12])
    wire nCCAS_N_3 /* synthesis is_inv_clock=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(26[15:19])
    wire nCRAS_N_9 /* synthesis is_inv_clock=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(46[19:22])
    wire PHI2_N_151 /* synthesis is_inv_clock=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(37[6:13])
    
    wire GND_net, VCC_net, LEDEN, PHI2r, PHI2r2, PHI2r3, RASr, 
        RASr2, RASr3, CASr, CASr2, CASr3, FWEr, CBR, Din_c_7, 
        Din_c_6, Din_c_5, Din_c_4, Din_c_3, Din_c_2, Din_c_1, Din_c_0;
    wire [7:0]Bank;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(30[12:16])
    
    wire CROW_c_1, CROW_c_0, MAin_c_9, MAin_c_8, MAin_c_7, MAin_c_6, 
        MAin_c_5, MAin_c_4, MAin_c_3, MAin_c_2, MAin_c_1, MAin_c_0, 
        nFWE_c, n8MEGEN, XOR8MEG, RCKEEN, RCKE_c, nRCS_c, nRRAS_c, 
        nRCAS_c, nRWE_c, RBA_c_1, RBA_c_0, nRowColSel, RA_c, n1975;
    wire [9:0]RowA;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(50[12:16])
    
    wire RA_c_9, RA_c_8, RA_c_7, RA_c_6, RA_c_5, RA_c_4, RA_c_3, 
        RA_c_2, RA_c_1, RA_c_0, RDQML_c, RDQMH_c;
    wire [7:0]WRD;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(58[12:15])
    
    wire C1Submitted, ADSubmitted, CmdEnable, CmdSubmitted, CmdLEDEN, 
        Cmdn8MEGEN, CmdUFMData, CmdUFMShift, n4097, InitReady, Ready, 
        n10;
    wire [17:0]FS;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(78[13:15])
    
    wire wb_rst, wb_cyc_stb, wb_we;
    wire [7:0]wb_adr;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(321[12:18])
    wire [7:0]wb_dati;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(322[12:19])
    wire [1:0]wb_dato;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(323[13:20])
    
    wire LED_N_134, RA11_N_217, n1197, n3, RCKE_N_165, nRowColSel_N_35, 
        nRWE_N_215, nRowColSel_N_34, nRowColSel_N_33, nRowColSel_N_32, 
        nRCS_N_179, n2557, nRCS_N_175, n2556, n4883, nRCS_N_174, 
        nRCAS_N_199, nRWE_N_211, RCKEEN_N_153, nRCS_N_172, nRCAS_N_198, 
        nRWE_N_210, nRWE_N_209, n1196, n1195, n1194, n1193, n3622, 
        Ready_N_284, nRCS_N_170, Ready_N_280, nRCS_N_169, nRRAS_N_189, 
        nRCAS_N_194, nRWE_N_204, RCKEEN_N_152, n3989, n1, CmdEnable_N_243, 
        C1Submitted_N_232, XOR8MEG_N_149, CmdLEDEN_N_251, Cmdn8MEGEN_N_260, 
        n4901, n2199, wb_adr_7__N_92, RCLK_c_enable_27, n4149, n17, 
        wb_we_N_354, n2426, n5144, n4539, n93, n38, n4900, n87, 
        wb_we_N_351, n638, n646, n4893, wb_cyc_stb_N_350, n4888, 
        n5142, n4087, wb_cyc_stb_N_348, n89, n4880, n80, n4899, 
        n2238, n746, n747, n748, n751, n752, n754, n755, n756, 
        n757, n758, n759, n760, n761, n4094, n4093, n4882, n4628, 
        n23, n4624, n4892, n4092, n4622, n3609, n4091, LEDEN_N_110, 
        n8MEGEN_N_139, PHI2_N_151_enable_3, n4610, RCLK_c_enable_25, 
        RCLK_c_enable_28, n4887, n4548, n84, wb_we_N_338, n2549, 
        n83, n1969, n1971, wb_cyc_stb_N_307, n4517;
    wire [7:0]wb_adr_7__N_60;
    wire [7:0]wb_dati_7__N_68;
    
    wire n1192, n1191, n1189, n1188, n1187, n1186, n1185, n6, 
        n3_adj_1, n4519, n2308, n14, n86, n39, PHI2_N_151_enable_1, 
        n12, n2040, n2104, n1286, n4869, PHI2_N_151_enable_5, RCLK_c_enable_24, 
        n4165, n1972, Dout_c, n1965, n1974, n10_adj_2, n78, n2262, 
        n2252, n2258, n1973, n14_adj_3, n4884, n2244, n1885, n56, 
        n4859, n4858, n1889, RCLK_c_enable_20, RCLK_c_enable_29, n4898, 
        n45, n53, n85, n92, RCLK_c_enable_26, n4526, n4090, n1970, 
        n4939, n4938, n95, n4937, n4089, n2384, n4850, n42, 
        n3_adj_4, n4936, n1968, n91, n94, n90, n88, n79, n4935, 
        n42_adj_5, n81, n82, n1_adj_6, n14_adj_7, n4574, n4504, 
        n4088, n4086, n12_adj_8, n4934, PHI2_N_151_enable_6, n4933, 
        n4585, n4932, n4733, n98, n4732, n3671, n4931, n4930, 
        n4125, n4929, n4928, n4731, n4927, n4926, n4925, n4924, 
        n4730, n4897, n4923, RCLK_c_enable_22, n4729, n53_adj_9, 
        n175, n4921, n4920, n4919, n4164, n4918, n4917, n4916, 
        n4915, n12_adj_10, n4914, n4913, n4896, n4807, n4806, 
        n4582, n15, n4129, n3969, n4911, n3711, n4910, n4527, 
        n4909, n4530, n4891, n6_adj_11, n4718, n4908, n6_adj_12, 
        n4895, n4890, n4886, n4, n4907, n4_adj_13, PHI2_N_151_enable_7, 
        n4782, n4889, n4894, n14_adj_14, n4885, n4777, n4776, 
        n6_adj_15, n4906, n4905, n4941, n4632, n4513, n3_adj_16, 
        n20, n4904, n4775, n4618, n4774, n4634, n22, n4903, 
        n4902, n4940, n7;
    
    VHI i2 (.Z(VCC_net));
    INV i4006 (.A(nCCAS_c), .Z(nCCAS_N_3));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(15[8:13])
    FD1P3AX IS_FSM__i15 (.D(n1185), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(Ready_N_284));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(255[11:15])
    defparam IS_FSM__i15.GSR = "ENABLED";
    FD1P3AX IS_FSM__i14 (.D(n1186), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n1185));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(255[11:15])
    defparam IS_FSM__i14.GSR = "ENABLED";
    FD1S3AX PHI2r2_513 (.D(PHI2r), .CK(RCLK_c), .Q(PHI2r2));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(83[9] 87[5])
    defparam PHI2r2_513.GSR = "ENABLED";
    FD1S3AX PHI2r3_514 (.D(PHI2r2), .CK(RCLK_c), .Q(PHI2r3));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(83[9] 87[5])
    defparam PHI2r3_514.GSR = "ENABLED";
    FD1S3AX RASr_515 (.D(nCRAS_N_9), .CK(RCLK_c), .Q(RASr));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(83[9] 87[5])
    defparam RASr_515.GSR = "ENABLED";
    FD1S3AX RASr2_516 (.D(RASr), .CK(RCLK_c), .Q(RASr2));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(83[9] 87[5])
    defparam RASr2_516.GSR = "ENABLED";
    FD1S3AX RASr3_517 (.D(RASr2), .CK(RCLK_c), .Q(RASr3));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(83[9] 87[5])
    defparam RASr3_517.GSR = "ENABLED";
    FD1S3AX CASr_518 (.D(nCCAS_N_3), .CK(RCLK_c), .Q(CASr));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(83[9] 87[5])
    defparam CASr_518.GSR = "ENABLED";
    FD1S3AX CASr2_519 (.D(CASr), .CK(RCLK_c), .Q(CASr2));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(83[9] 87[5])
    defparam CASr2_519.GSR = "ENABLED";
    FD1S3AX CASr3_520 (.D(CASr2), .CK(RCLK_c), .Q(CASr3));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(83[9] 87[5])
    defparam CASr3_520.GSR = "ENABLED";
    FD1S3IX RowA_i0 (.D(MAin_c_0), .CK(nCRAS_N_9), .CD(n4935), .Q(RowA[0]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(97[9] 112[5])
    defparam RowA_i0.GSR = "ENABLED";
    FD1S3IX S_FSM_i2 (.D(n2556), .CK(RCLK_c), .CD(n4933), .Q(nRowColSel_N_34));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(123[13:16])
    defparam S_FSM_i2.GSR = "ENABLED";
    FD1S3AX WRD_i0 (.D(Din_c_0), .CK(nCCAS_N_3), .Q(WRD[0]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(115[9] 117[5])
    defparam WRD_i0.GSR = "ENABLED";
    FD1S3AX FWEr_525 (.D(n4932), .CK(nCRAS_N_9), .Q(FWEr));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(97[9] 112[5])
    defparam FWEr_525.GSR = "ENABLED";
    FD1S3AX CBR_526 (.D(nCCAS_N_3), .CK(nCRAS_N_9), .Q(CBR));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(97[9] 112[5])
    defparam CBR_526.GSR = "ENABLED";
    FD1S3IX RBA__i1 (.D(CROW_c_0), .CK(nCRAS_N_9), .CD(n4935), .Q(RBA_c_0));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(97[9] 112[5])
    defparam RBA__i1.GSR = "ENABLED";
    FD1P3AX IS_FSM__i13 (.D(n1187), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n1186));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(255[11:15])
    defparam IS_FSM__i13.GSR = "ENABLED";
    FD1P3AX IS_FSM__i12 (.D(n1188), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n1187));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(255[11:15])
    defparam IS_FSM__i12.GSR = "ENABLED";
    EFB ufmefb (.WBCLKI(wb_clk), .WBRSTI(wb_rst), .WBCYCI(wb_cyc_stb), 
        .WBSTBI(wb_cyc_stb), .WBWEI(wb_we), .WBADRI0(wb_adr[0]), .WBADRI1(wb_adr[1]), 
        .WBADRI2(wb_adr[2]), .WBADRI3(wb_adr[3]), .WBADRI4(wb_adr[4]), 
        .WBADRI5(wb_adr[5]), .WBADRI6(wb_adr[6]), .WBADRI7(wb_adr[7]), 
        .WBDATI0(wb_dati[0]), .WBDATI1(wb_dati[1]), .WBDATI2(wb_dati[2]), 
        .WBDATI3(wb_dati[3]), .WBDATI4(wb_dati[4]), .WBDATI5(wb_dati[5]), 
        .WBDATI6(wb_dati[6]), .WBDATI7(wb_dati[7]), .I2C1SCLI(GND_net), 
        .I2C1SDAI(GND_net), .I2C2SCLI(GND_net), .I2C2SDAI(GND_net), .SPISCKI(GND_net), 
        .SPIMISOI(GND_net), .SPIMOSII(GND_net), .SPISCSN(GND_net), .TCCLKI(GND_net), 
        .TCRSTN(GND_net), .TCIC(GND_net), .PLL0DATI0(GND_net), .PLL0DATI1(GND_net), 
        .PLL0DATI2(GND_net), .PLL0DATI3(GND_net), .PLL0DATI4(GND_net), 
        .PLL0DATI5(GND_net), .PLL0DATI6(GND_net), .PLL0DATI7(GND_net), 
        .PLL0ACKI(GND_net), .PLL1DATI0(GND_net), .PLL1DATI1(GND_net), 
        .PLL1DATI2(GND_net), .PLL1DATI3(GND_net), .PLL1DATI4(GND_net), 
        .PLL1DATI5(GND_net), .PLL1DATI6(GND_net), .PLL1DATI7(GND_net), 
        .PLL1ACKI(GND_net), .WBDATO0(wb_dato[0]), .WBDATO1(wb_dato[1])) /* synthesis syn_instantiated=1 */ ;
    defparam ufmefb.EFB_I2C1 = "DISABLED";
    defparam ufmefb.EFB_I2C2 = "DISABLED";
    defparam ufmefb.EFB_SPI = "DISABLED";
    defparam ufmefb.EFB_TC = "DISABLED";
    defparam ufmefb.EFB_TC_PORTMODE = "NO_WB";
    defparam ufmefb.EFB_UFM = "DISABLED";
    defparam ufmefb.EFB_WB_CLK_FREQ = "50.0";
    defparam ufmefb.DEV_DENSITY = "1200L";
    defparam ufmefb.UFM_INIT_PAGES = 0;
    defparam ufmefb.UFM_INIT_START_PAGE = 0;
    defparam ufmefb.UFM_INIT_ALL_ZEROS = "ENABLED";
    defparam ufmefb.UFM_INIT_FILE_NAME = "NONE";
    defparam ufmefb.UFM_INIT_FILE_FORMAT = "HEX";
    defparam ufmefb.I2C1_ADDRESSING = "7BIT";
    defparam ufmefb.I2C2_ADDRESSING = "7BIT";
    defparam ufmefb.I2C1_SLAVE_ADDR = "0b1000001";
    defparam ufmefb.I2C2_SLAVE_ADDR = "0b1000010";
    defparam ufmefb.I2C1_BUS_PERF = "100kHz";
    defparam ufmefb.I2C2_BUS_PERF = "100kHz";
    defparam ufmefb.I2C1_CLK_DIVIDER = 1;
    defparam ufmefb.I2C2_CLK_DIVIDER = 1;
    defparam ufmefb.I2C1_GEN_CALL = "DISABLED";
    defparam ufmefb.I2C2_GEN_CALL = "DISABLED";
    defparam ufmefb.I2C1_WAKEUP = "DISABLED";
    defparam ufmefb.I2C2_WAKEUP = "DISABLED";
    defparam ufmefb.SPI_MODE = "SLAVE";
    defparam ufmefb.SPI_CLK_DIVIDER = 1;
    defparam ufmefb.SPI_LSB_FIRST = "DISABLED";
    defparam ufmefb.SPI_CLK_INV = "DISABLED";
    defparam ufmefb.SPI_PHASE_ADJ = "DISABLED";
    defparam ufmefb.SPI_SLAVE_HANDSHAKE = "DISABLED";
    defparam ufmefb.SPI_INTR_TXRDY = "DISABLED";
    defparam ufmefb.SPI_INTR_RXRDY = "DISABLED";
    defparam ufmefb.SPI_INTR_TXOVR = "DISABLED";
    defparam ufmefb.SPI_INTR_RXOVR = "DISABLED";
    defparam ufmefb.SPI_WAKEUP = "DISABLED";
    defparam ufmefb.TC_MODE = "CTCM";
    defparam ufmefb.TC_SCLK_SEL = "PCLOCK";
    defparam ufmefb.TC_CCLK_SEL = 1;
    defparam ufmefb.GSR = "ENABLED";
    defparam ufmefb.TC_TOP_SET = 65535;
    defparam ufmefb.TC_OCR_SET = 32767;
    defparam ufmefb.TC_OC_MODE = "TOGGLE";
    defparam ufmefb.TC_RESETN = "ENABLED";
    defparam ufmefb.TC_TOP_SEL = "ON";
    defparam ufmefb.TC_OV_INT = "OFF";
    defparam ufmefb.TC_OCR_INT = "OFF";
    defparam ufmefb.TC_ICR_INT = "OFF";
    defparam ufmefb.TC_OVERFLOW = "ENABLED";
    defparam ufmefb.TC_ICAPTURE = "DISABLED";
    FD1P3AX IS_FSM__i11 (.D(n1189), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n1188));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(255[11:15])
    defparam IS_FSM__i11.GSR = "ENABLED";
    FD1P3AX IS_FSM__i10 (.D(nRWE_N_210), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n1189));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(255[11:15])
    defparam IS_FSM__i10.GSR = "ENABLED";
    FD1P3AX IS_FSM__i9 (.D(n1191), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(nRWE_N_210));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(255[11:15])
    defparam IS_FSM__i9.GSR = "ENABLED";
    FD1P3AX IS_FSM__i8 (.D(n1192), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n1191));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(255[11:15])
    defparam IS_FSM__i8.GSR = "ENABLED";
    FD1S3AX RCKE_531 (.D(RCKE_N_165), .CK(RCLK_c), .Q(RCKE_c)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(133[9] 136[5])
    defparam RCKE_531.GSR = "ENABLED";
    FD1P3AY nRCS_532 (.D(nRCS_N_169), .SP(RCLK_c_enable_20), .CK(RCLK_c), 
            .Q(nRCS_c)) /* synthesis lse_init_val=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(139[9] 277[5])
    defparam nRCS_532.GSR = "ENABLED";
    FD1P3AX IS_FSM__i7 (.D(n1193), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n1192));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(255[11:15])
    defparam IS_FSM__i7.GSR = "ENABLED";
    FD1P3AX IS_FSM__i6 (.D(n1194), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n1193));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(255[11:15])
    defparam IS_FSM__i6.GSR = "ENABLED";
    FD1S3IX S_FSM_i3 (.D(n2556), .CK(RCLK_c), .CD(n2557), .Q(nRowColSel_N_33));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(123[13:16])
    defparam S_FSM_i3.GSR = "ENABLED";
    FD1P3AX IS_FSM__i5 (.D(n1195), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n1194));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(255[11:15])
    defparam IS_FSM__i5.GSR = "ENABLED";
    FD1P3AX IS_FSM__i4 (.D(n1196), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n1195));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(255[11:15])
    defparam IS_FSM__i4.GSR = "ENABLED";
    FD1P3AX IS_FSM__i3 (.D(n1197), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n1196));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(255[11:15])
    defparam IS_FSM__i3.GSR = "ENABLED";
    FD1P3AX IS_FSM__i2 (.D(nRCAS_N_198), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n1197));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(255[11:15])
    defparam IS_FSM__i2.GSR = "ENABLED";
    FD1P3AX IS_FSM__i1 (.D(nRCS_N_172), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(nRCAS_N_198));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(255[11:15])
    defparam IS_FSM__i1.GSR = "ENABLED";
    FD1P3AY nRRAS_533 (.D(nRRAS_N_189), .SP(RCLK_c_enable_20), .CK(RCLK_c), 
            .Q(nRRAS_c)) /* synthesis lse_init_val=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(139[9] 277[5])
    defparam nRRAS_533.GSR = "ENABLED";
    LUT4 m1_lut (.Z(n5144)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    FD1P3AY nRCAS_534 (.D(nRCAS_N_194), .SP(RCLK_c_enable_20), .CK(RCLK_c), 
            .Q(nRCAS_c)) /* synthesis lse_init_val=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(139[9] 277[5])
    defparam nRCAS_534.GSR = "ENABLED";
    FD1P3AY nRWE_535 (.D(nRWE_N_204), .SP(RCLK_c_enable_29), .CK(RCLK_c), 
            .Q(nRWE_c)) /* synthesis lse_init_val=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(139[9] 277[5])
    defparam nRWE_535.GSR = "ENABLED";
    FD1S3JX RA10_536 (.D(n4129), .CK(RCLK_c), .PD(nRWE_N_209), .Q(n1975));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(139[9] 277[5])
    defparam RA10_536.GSR = "ENABLED";
    FD1P3AX RCKEEN_537 (.D(RCKEEN_N_152), .SP(RCLK_c_enable_20), .CK(RCLK_c), 
            .Q(RCKEEN));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(139[9] 277[5])
    defparam RCKEEN_537.GSR = "ENABLED";
    FD1S3JX C1Submitted_542 (.D(n2549), .CK(PHI2_N_151), .PD(C1Submitted_N_232), 
            .Q(C1Submitted)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(280[9] 315[5])
    defparam C1Submitted_542.GSR = "ENABLED";
    FD1P3IX wb_we_553 (.D(wb_we_N_338), .SP(RCLK_c_enable_25), .CD(wb_adr_7__N_92), 
            .CK(RCLK_c), .Q(wb_we));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_we_553.GSR = "ENABLED";
    LUT4 nRCS_I_34_3_lut_4_lut (.A(RCKE_c), .B(RASr2), .C(nRowColSel_N_35), 
         .D(nRCS_N_175), .Z(nRCS_N_174)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam nRCS_I_34_3_lut_4_lut.init = 16'h1f10;
    FD1S3AX CmdSubmitted_549 (.D(XOR8MEG_N_149), .CK(PHI2_N_151), .Q(CmdSubmitted)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(280[9] 315[5])
    defparam CmdSubmitted_549.GSR = "ENABLED";
    FD1S3AX FS_972__i17 (.D(n78), .CK(RCLK_c), .Q(FS[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972__i17.GSR = "ENABLED";
    PFUMX i12 (.BLUT(n3), .ALUT(n758), .C0(InitReady), .Z(wb_dati_7__N_68[3]));
    FD1S3AX FS_972__i16 (.D(n79), .CK(RCLK_c), .Q(FS[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972__i16.GSR = "ENABLED";
    FD1S3AX FS_972__i15 (.D(n80), .CK(RCLK_c), .Q(FS[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972__i15.GSR = "ENABLED";
    FD1S3AX FS_972__i14 (.D(n81), .CK(RCLK_c), .Q(FS[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972__i14.GSR = "ENABLED";
    FD1S3AX FS_972__i13 (.D(n82), .CK(RCLK_c), .Q(FS[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972__i13.GSR = "ENABLED";
    FD1S3AX FS_972__i12 (.D(n83), .CK(RCLK_c), .Q(FS[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972__i12.GSR = "ENABLED";
    FD1S3AX FS_972__i11 (.D(n84), .CK(RCLK_c), .Q(FS[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972__i11.GSR = "ENABLED";
    FD1S3AX FS_972__i10 (.D(n85), .CK(RCLK_c), .Q(FS[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972__i10.GSR = "ENABLED";
    FD1S3AX FS_972__i9 (.D(n86), .CK(RCLK_c), .Q(FS[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972__i9.GSR = "ENABLED";
    FD1S3AX FS_972__i8 (.D(n87), .CK(RCLK_c), .Q(FS[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972__i8.GSR = "ENABLED";
    FD1S3AX FS_972__i7 (.D(n88), .CK(RCLK_c), .Q(FS[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972__i7.GSR = "ENABLED";
    FD1S3AX FS_972__i6 (.D(n89), .CK(RCLK_c), .Q(FS[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972__i6.GSR = "ENABLED";
    FD1S3AX wb_adr_i0 (.D(wb_adr_7__N_60[0]), .CK(RCLK_c), .Q(wb_adr[0]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_adr_i0.GSR = "ENABLED";
    FD1S3AX FS_972__i5 (.D(n90), .CK(RCLK_c), .Q(FS[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972__i5.GSR = "ENABLED";
    FD1S3AX FS_972__i4 (.D(n91), .CK(RCLK_c), .Q(FS[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972__i4.GSR = "ENABLED";
    FD1S3AX FS_972__i3 (.D(n92), .CK(RCLK_c), .Q(FS[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972__i3.GSR = "ENABLED";
    FD1S3AX FS_972__i2 (.D(n93), .CK(RCLK_c), .Q(FS[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972__i2.GSR = "ENABLED";
    FD1S3AX FS_972__i1 (.D(n94), .CK(RCLK_c), .Q(FS[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972__i1.GSR = "ENABLED";
    FD1P3AX wb_rst_551 (.D(n3671), .SP(RCLK_c_enable_22), .CK(RCLK_c), 
            .Q(wb_rst));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_rst_551.GSR = "ENABLED";
    FD1S3AX wb_dati_i0 (.D(wb_dati_7__N_68[0]), .CK(RCLK_c), .Q(wb_dati[0]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_dati_i0.GSR = "ENABLED";
    FD1S3AX S_FSM_i1 (.D(n4921), .CK(RCLK_c), .Q(nRowColSel_N_35));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(123[13:16])
    defparam S_FSM_i1.GSR = "ENABLED";
    FD1P3AX LEDEN_556 (.D(LEDEN_N_110), .SP(RCLK_c_enable_24), .CK(RCLK_c), 
            .Q(LEDEN)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam LEDEN_556.GSR = "ENABLED";
    FD1P3AX n8MEGEN_557 (.D(n8MEGEN_N_139), .SP(RCLK_c_enable_24), .CK(RCLK_c), 
            .Q(n8MEGEN)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam n8MEGEN_557.GSR = "ENABLED";
    FD1S3AX PHI2r_512 (.D(PHI2_c), .CK(RCLK_c), .Q(PHI2r));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(83[9] 87[5])
    defparam PHI2r_512.GSR = "ENABLED";
    FD1S3IX S_FSM_i4 (.D(n1286), .CK(RCLK_c), .CD(n4921), .Q(nRowColSel_N_32));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(123[13:16])
    defparam S_FSM_i4.GSR = "ENABLED";
    IB RCLK_pad (.I(RCLK), .O(RCLK_c));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(40[8:12])
    IB nFWE_pad (.I(nFWE), .O(nFWE_c));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(35[8:12])
    IB nCRAS_pad (.I(nCRAS), .O(nCRAS_c));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(15[15:20])
    IB nCCAS_pad (.I(nCCAS), .O(nCCAS_c));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(15[8:13])
    IB Din_pad_0 (.I(Din[0]), .O(Din_c_0));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(25[14:17])
    IB Din_pad_1 (.I(Din[1]), .O(Din_c_1));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(25[14:17])
    IB Din_pad_2 (.I(Din[2]), .O(Din_c_2));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(25[14:17])
    IB Din_pad_3 (.I(Din[3]), .O(Din_c_3));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(25[14:17])
    IB Din_pad_4 (.I(Din[4]), .O(Din_c_4));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(25[14:17])
    IB Din_pad_5 (.I(Din[5]), .O(Din_c_5));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(25[14:17])
    IB Din_pad_6 (.I(Din[6]), .O(Din_c_6));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(25[14:17])
    IB Din_pad_7 (.I(Din[7]), .O(Din_c_7));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(25[14:17])
    IB CROW_pad_0 (.I(CROW[0]), .O(CROW_c_0));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(33[14:18])
    IB CROW_pad_1 (.I(CROW[1]), .O(CROW_c_1));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(33[14:18])
    IB MAin_pad_0 (.I(MAin[0]), .O(MAin_c_0));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(34[14:18])
    IB MAin_pad_1 (.I(MAin[1]), .O(MAin_c_1));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(34[14:18])
    IB MAin_pad_2 (.I(MAin[2]), .O(MAin_c_2));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(34[14:18])
    IB MAin_pad_3 (.I(MAin[3]), .O(MAin_c_3));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(34[14:18])
    IB MAin_pad_4 (.I(MAin[4]), .O(MAin_c_4));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(34[14:18])
    IB MAin_pad_5 (.I(MAin[5]), .O(MAin_c_5));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(34[14:18])
    IB MAin_pad_6 (.I(MAin[6]), .O(MAin_c_6));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(34[14:18])
    IB MAin_pad_7 (.I(MAin[7]), .O(MAin_c_7));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(34[14:18])
    IB MAin_pad_8 (.I(MAin[8]), .O(MAin_c_8));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(34[14:18])
    IB MAin_pad_9 (.I(MAin[9]), .O(MAin_c_9));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(34[14:18])
    IB PHI2_pad (.I(PHI2), .O(PHI2_c));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(7[8:12])
    OB RDQML_pad (.I(RDQML_c), .O(RDQML));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(55[9:14])
    OB RDQMH_pad (.I(RDQMH_c), .O(RDQMH));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(55[16:21])
    OB nRCAS_pad (.I(nRCAS_c), .O(nRCAS));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(45[34:39])
    OB nRRAS_pad (.I(nRRAS_c), .O(nRRAS));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(45[23:28])
    OB nRWE_pad (.I(nRWE_c), .O(nRWE));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(45[45:49])
    OB RCKE_pad (.I(RCKE_c), .O(RCKE));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(44[13:17])
    OB nRCS_pad (.I(nRCS_c), .O(nRCS));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(45[13:17])
    OB RA_pad_0 (.I(RA_c_0), .O(RA[0]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(51[16:18])
    OB RA_pad_1 (.I(RA_c_1), .O(RA[1]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(51[16:18])
    OB RA_pad_2 (.I(RA_c_2), .O(RA[2]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(51[16:18])
    OB RA_pad_3 (.I(RA_c_3), .O(RA[3]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(51[16:18])
    OB RA_pad_4 (.I(RA_c_4), .O(RA[4]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(51[16:18])
    OB RA_pad_5 (.I(RA_c_5), .O(RA[5]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(51[16:18])
    OB RA_pad_6 (.I(RA_c_6), .O(RA[6]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(51[16:18])
    OB RA_pad_7 (.I(RA_c_7), .O(RA[7]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(51[16:18])
    OB RA_pad_8 (.I(RA_c_8), .O(RA[8]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(51[16:18])
    OB RA_pad_9 (.I(RA_c_9), .O(RA[9]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(51[16:18])
    OB RA_pad_10 (.I(n1975), .O(RA[10]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(51[16:18])
    OB RA_pad_11 (.I(RA_c), .O(RA[11]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(51[16:18])
    OB RBA_pad_0 (.I(RBA_c_0), .O(RBA[0]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(46[19:22])
    OB RBA_pad_1 (.I(RBA_c_1), .O(RBA[1]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(46[19:22])
    OB LED_pad (.I(LED_N_134), .O(LED));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(11[9:12])
    OB Dout_pad_0 (.I(Dout_c), .O(Dout[0]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(26[15:19])
    OB Dout_pad_1 (.I(n1974), .O(Dout[1]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(26[15:19])
    OB Dout_pad_2 (.I(n1973), .O(Dout[2]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(26[15:19])
    OB Dout_pad_3 (.I(n1972), .O(Dout[3]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(26[15:19])
    OB Dout_pad_4 (.I(n1971), .O(Dout[4]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(26[15:19])
    OB Dout_pad_5 (.I(n1970), .O(Dout[5]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(26[15:19])
    OB Dout_pad_6 (.I(n1969), .O(Dout[6]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(26[15:19])
    OB Dout_pad_7 (.I(n1968), .O(Dout[7]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(26[15:19])
    BB Dout_pad_0__1130 (.I(WRD[0]), .T(n1965), .B(RD[0]), .O(Dout_c));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(59[14:16])
    BB Dout_pad_1__1129 (.I(WRD[1]), .T(n1965), .B(RD[1]), .O(n1974));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(59[14:16])
    BB Dout_pad_2__1128 (.I(WRD[2]), .T(n1965), .B(RD[2]), .O(n1973));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(59[14:16])
    BB Dout_pad_3__1127 (.I(WRD[3]), .T(n1965), .B(RD[3]), .O(n1972));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(59[14:16])
    BB Dout_pad_4__1126 (.I(WRD[4]), .T(n1965), .B(RD[4]), .O(n1971));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(59[14:16])
    BB Dout_pad_5__1125 (.I(WRD[5]), .T(n1965), .B(RD[5]), .O(n1970));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(59[14:16])
    BB Dout_pad_6__1124 (.I(WRD[6]), .T(n1965), .B(RD[6]), .O(n1969));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(59[14:16])
    FD1S3AX wb_dati_i7 (.D(wb_dati_7__N_68[7]), .CK(RCLK_c), .Q(wb_dati[7]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_dati_i7.GSR = "ENABLED";
    FD1S3AX wb_dati_i6 (.D(wb_dati_7__N_68[6]), .CK(RCLK_c), .Q(wb_dati[6]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_dati_i6.GSR = "ENABLED";
    FD1S3AX wb_dati_i5 (.D(wb_dati_7__N_68[5]), .CK(RCLK_c), .Q(wb_dati[5]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_dati_i5.GSR = "ENABLED";
    FD1S3AX wb_dati_i4 (.D(wb_dati_7__N_68[4]), .CK(RCLK_c), .Q(wb_dati[4]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_dati_i4.GSR = "ENABLED";
    FD1S3AX wb_dati_i3 (.D(wb_dati_7__N_68[3]), .CK(RCLK_c), .Q(wb_dati[3]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_dati_i3.GSR = "ENABLED";
    FD1S3AX wb_dati_i2 (.D(wb_dati_7__N_68[2]), .CK(RCLK_c), .Q(wb_dati[2]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_dati_i2.GSR = "ENABLED";
    FD1S3AX wb_dati_i1 (.D(wb_dati_7__N_68[1]), .CK(RCLK_c), .Q(wb_dati[1]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_dati_i1.GSR = "ENABLED";
    CCU2D FS_972_add_4_3 (.A0(FS[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FS[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4086), 
          .COUT(n4087), .S0(n94), .S1(n93));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972_add_4_3.INIT0 = 16'hfaaa;
    defparam FS_972_add_4_3.INIT1 = 16'hfaaa;
    defparam FS_972_add_4_3.INJECT1_0 = "NO";
    defparam FS_972_add_4_3.INJECT1_1 = "NO";
    PFUMX i1369 (.BLUT(wb_we_N_351), .ALUT(n2104), .C0(n4886), .Z(n2238));
    FD1P3IX wb_cyc_stb_552 (.D(wb_cyc_stb_N_307), .SP(RCLK_c_enable_25), 
            .CD(wb_adr_7__N_92), .CK(RCLK_c), .Q(wb_cyc_stb));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_cyc_stb_552.GSR = "ENABLED";
    FD1S3AX wb_adr_i7 (.D(wb_adr_7__N_60[7]), .CK(RCLK_c), .Q(wb_adr[7]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_adr_i7.GSR = "ENABLED";
    FD1S3AX wb_adr_i6 (.D(wb_adr_7__N_60[6]), .CK(RCLK_c), .Q(wb_adr[6]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_adr_i6.GSR = "ENABLED";
    FD1S3AX wb_adr_i5 (.D(wb_adr_7__N_60[5]), .CK(RCLK_c), .Q(wb_adr[5]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_adr_i5.GSR = "ENABLED";
    FD1S3AX wb_adr_i4 (.D(wb_adr_7__N_60[4]), .CK(RCLK_c), .Q(wb_adr[4]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_adr_i4.GSR = "ENABLED";
    FD1S3AX wb_adr_i3 (.D(wb_adr_7__N_60[3]), .CK(RCLK_c), .Q(wb_adr[3]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_adr_i3.GSR = "ENABLED";
    FD1S3AX wb_adr_i2 (.D(wb_adr_7__N_60[2]), .CK(RCLK_c), .Q(wb_adr[2]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_adr_i2.GSR = "ENABLED";
    FD1S3AX wb_adr_i1 (.D(wb_adr_7__N_60[1]), .CK(RCLK_c), .Q(wb_adr[1]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_adr_i1.GSR = "ENABLED";
    FD1S3IX RBA__i2 (.D(CROW_c_1), .CK(nCRAS_N_9), .CD(n4935), .Q(RBA_c_1));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(97[9] 112[5])
    defparam RBA__i2.GSR = "ENABLED";
    CCU2D FS_972_add_4_17 (.A0(FS[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FS[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4093), 
          .COUT(n4094), .S0(n80), .S1(n79));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972_add_4_17.INIT0 = 16'hfaaa;
    defparam FS_972_add_4_17.INIT1 = 16'hfaaa;
    defparam FS_972_add_4_17.INJECT1_0 = "NO";
    defparam FS_972_add_4_17.INJECT1_1 = "NO";
    CCU2D FS_972_add_4_15 (.A0(FS[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FS[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4092), 
          .COUT(n4093), .S0(n82), .S1(n81));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972_add_4_15.INIT0 = 16'hfaaa;
    defparam FS_972_add_4_15.INIT1 = 16'hfaaa;
    defparam FS_972_add_4_15.INJECT1_0 = "NO";
    defparam FS_972_add_4_15.INJECT1_1 = "NO";
    FD1P3AX CmdEnable_541 (.D(CmdEnable_N_243), .SP(PHI2_N_151_enable_1), 
            .CK(PHI2_N_151), .Q(CmdEnable)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(280[9] 315[5])
    defparam CmdEnable_541.GSR = "ENABLED";
    FD1P3AX InitReady_530 (.D(n5144), .SP(RCLK_c_enable_26), .CK(RCLK_c), 
            .Q(InitReady)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(126[9] 130[5])
    defparam InitReady_530.GSR = "ENABLED";
    PFUMX i12_adj_1 (.BLUT(n3_adj_4), .ALUT(n755), .C0(InitReady), .Z(wb_dati_7__N_68[6]));
    LUT4 i1_3_lut_4_lut_then_4_lut (.A(FS[5]), .B(FS[8]), .C(FS[6]), .D(FS[7]), 
         .Z(n4941)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(78[13:15])
    defparam i1_3_lut_4_lut_then_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_else_4_lut (.A(FS[5]), .B(FS[8]), .C(FS[6]), .D(FS[7]), 
         .Z(n4940)) /* synthesis lut_function=(!(A (B+(D))+!A (B+(C (D))))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(78[13:15])
    defparam i1_3_lut_4_lut_else_4_lut.init = 16'h0133;
    LUT4 i2692_2_lut (.A(RCKE_c), .B(RASr2), .Z(nRWE_N_215)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(160[14] 176[8])
    defparam i2692_2_lut.init = 16'hdddd;
    LUT4 i217_2_lut_rep_70 (.A(FS[9]), .B(FS[5]), .Z(n4919)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i217_2_lut_rep_70.init = 16'heeee;
    LUT4 i1_2_lut (.A(n3989), .B(n3969), .Z(wb_dati_7__N_68[1])) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 n4542_bdd_4_lut (.A(FS[10]), .B(FS[11]), .C(FS[7]), .D(n4924), 
         .Z(n4806)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C+(D)))+!A)) */ ;
    defparam n4542_bdd_4_lut.init = 16'h0082;
    LUT4 i1_2_lut_4_lut (.A(n4929), .B(XOR8MEG_N_149), .C(Din_c_4), .D(n4931), 
         .Z(PHI2_N_151_enable_3)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h4000;
    PFUMX i3861 (.BLUT(n4777), .ALUT(n761), .C0(InitReady), .Z(wb_dati_7__N_68[0]));
    FD1S3AX Bank_i0 (.D(Din_c_0), .CK(PHI2_c), .Q(Bank[0]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(90[9] 94[5])
    defparam Bank_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(CBR), .B(FWEr), .C(n4618), .D(nRowColSel_N_34), 
         .Z(n20)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(206[26:30])
    defparam i1_4_lut_4_lut.init = 16'h5540;
    LUT4 n10_bdd_4_lut_3959 (.A(n10_adj_2), .B(FS[10]), .C(FS[11]), .D(n14), 
         .Z(n4517)) /* synthesis lut_function=(A+(B (D)+!B ((D)+!C))) */ ;
    defparam n10_bdd_4_lut_3959.init = 16'hffab;
    LUT4 i3141_4_lut_4_lut (.A(n4895), .B(n3609), .C(FS[10]), .D(FS[11]), 
         .Z(n38)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C)+!B (C+(D))))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam i3141_4_lut_4_lut.init = 16'h5350;
    FD1S3AX WRD_i7 (.D(Din_c_7), .CK(nCCAS_N_3), .Q(WRD[7]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(115[9] 117[5])
    defparam WRD_i7.GSR = "ENABLED";
    FD1S3AX WRD_i6 (.D(Din_c_6), .CK(nCCAS_N_3), .Q(WRD[6]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(115[9] 117[5])
    defparam WRD_i6.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_77 (.A(RASr2), .B(InitReady), .C(nRowColSel_N_35), 
         .Z(n4926)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(225[8:20])
    defparam i2_3_lut_rep_77.init = 16'h8080;
    FD1S3AX WRD_i5 (.D(Din_c_5), .CK(nCCAS_N_3), .Q(WRD[5]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(115[9] 117[5])
    defparam WRD_i5.GSR = "ENABLED";
    CCU2D FS_972_add_4_13 (.A0(FS[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FS[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4091), 
          .COUT(n4092), .S0(n84), .S1(n83));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972_add_4_13.INIT0 = 16'hfaaa;
    defparam FS_972_add_4_13.INIT1 = 16'hfaaa;
    defparam FS_972_add_4_13.INJECT1_0 = "NO";
    defparam FS_972_add_4_13.INJECT1_1 = "NO";
    FD1S3AX WRD_i4 (.D(Din_c_4), .CK(nCCAS_N_3), .Q(WRD[4]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(115[9] 117[5])
    defparam WRD_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_57_4_lut (.A(RASr2), .B(InitReady), .C(nRowColSel_N_35), 
         .D(nRCS_N_172), .Z(n4906)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(225[8:20])
    defparam i1_2_lut_rep_57_4_lut.init = 16'hff7f;
    FD1S3AX WRD_i3 (.D(Din_c_3), .CK(nCCAS_N_3), .Q(WRD[3]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(115[9] 117[5])
    defparam WRD_i3.GSR = "ENABLED";
    FD1S3AX WRD_i2 (.D(Din_c_2), .CK(nCCAS_N_3), .Q(WRD[2]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(115[9] 117[5])
    defparam WRD_i2.GSR = "ENABLED";
    FD1S3AX WRD_i1 (.D(Din_c_1), .CK(nCCAS_N_3), .Q(WRD[1]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(115[9] 117[5])
    defparam WRD_i1.GSR = "ENABLED";
    FD1S3JX RowA_i9 (.D(MAin_c_9), .CK(nCRAS_N_9), .PD(n4935), .Q(RowA[9]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(97[9] 112[5])
    defparam RowA_i9.GSR = "ENABLED";
    FD1S3IX RowA_i8 (.D(MAin_c_8), .CK(nCRAS_N_9), .CD(n4935), .Q(RowA[8]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(97[9] 112[5])
    defparam RowA_i8.GSR = "ENABLED";
    LUT4 n2426_bdd_4_lut (.A(n2426), .B(n4165), .C(FS[11]), .D(FS[10]), 
         .Z(n5142)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n2426_bdd_4_lut.init = 16'hca00;
    FD1S3IX RowA_i7 (.D(MAin_c_7), .CK(nCRAS_N_9), .CD(n4935), .Q(RowA[7]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(97[9] 112[5])
    defparam RowA_i7.GSR = "ENABLED";
    FD1S3IX RowA_i6 (.D(MAin_c_6), .CK(nCRAS_N_9), .CD(n4935), .Q(RowA[6]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(97[9] 112[5])
    defparam RowA_i6.GSR = "ENABLED";
    BB Dout_pad_7__1123 (.I(WRD[7]), .T(n1965), .B(RD[7]), .O(n1968));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(59[14:16])
    FD1S3JX RowA_i5 (.D(MAin_c_5), .CK(nCRAS_N_9), .PD(n4935), .Q(RowA[5]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(97[9] 112[5])
    defparam RowA_i5.GSR = "ENABLED";
    FD1S3IX RowA_i4 (.D(MAin_c_4), .CK(nCRAS_N_9), .CD(n4935), .Q(RowA[4]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(97[9] 112[5])
    defparam RowA_i4.GSR = "ENABLED";
    FD1S3IX RowA_i3 (.D(MAin_c_3), .CK(nCRAS_N_9), .CD(n4935), .Q(RowA[3]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(97[9] 112[5])
    defparam RowA_i3.GSR = "ENABLED";
    FD1S3IX RowA_i2 (.D(MAin_c_2), .CK(nCRAS_N_9), .CD(n4935), .Q(RowA[2]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(97[9] 112[5])
    defparam RowA_i2.GSR = "ENABLED";
    LUT4 i3798_2_lut_4_lut (.A(RASr2), .B(InitReady), .C(nRowColSel_N_35), 
         .D(Ready), .Z(RCLK_c_enable_27)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(225[8:20])
    defparam i3798_2_lut_4_lut.init = 16'h0080;
    LUT4 i3_4_lut (.A(Din_c_6), .B(n4624), .C(Din_c_5), .D(n4548), .Z(C1Submitted_N_232)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0200;
    FD1S3IX RowA_i1 (.D(MAin_c_1), .CK(nCRAS_N_9), .CD(n4935), .Q(RowA[1]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(97[9] 112[5])
    defparam RowA_i1.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3AX Bank_i7 (.D(Din_c_7), .CK(PHI2_c), .Q(Bank[7]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(90[9] 94[5])
    defparam Bank_i7.GSR = "ENABLED";
    LUT4 i1392_4_lut (.A(wb_we_N_354), .B(n2258), .C(n10_adj_2), .D(n4), 
         .Z(n2262)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(525[4] 647[11])
    defparam i1392_4_lut.init = 16'hccca;
    LUT4 i1388_4_lut (.A(n4897), .B(n2238), .C(n10_adj_2), .D(n4891), 
         .Z(n2258)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(525[4] 647[11])
    defparam i1388_4_lut.init = 16'hccca;
    CCU2D FS_972_add_4_11 (.A0(FS[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FS[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4090), 
          .COUT(n4091), .S0(n86), .S1(n85));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972_add_4_11.INIT0 = 16'hfaaa;
    defparam FS_972_add_4_11.INIT1 = 16'hfaaa;
    defparam FS_972_add_4_11.INJECT1_0 = "NO";
    defparam FS_972_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_35_3_lut_4_lut_4_lut (.A(n4920), .B(n4902), .C(n4899), 
         .D(FS[10]), .Z(n4884)) /* synthesis lut_function=(A+(B (C)+!B !((D)+!C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(648[30:46])
    defparam i1_2_lut_rep_35_3_lut_4_lut_4_lut.init = 16'heafa;
    LUT4 i1_2_lut_rep_78 (.A(FS[7]), .B(FS[6]), .Z(n4927)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(78[13:15])
    defparam i1_2_lut_rep_78.init = 16'heeee;
    LUT4 i2_2_lut_rep_51_3_lut_4_lut (.A(FS[7]), .B(FS[6]), .C(FS[8]), 
         .D(FS[9]), .Z(n4900)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(78[13:15])
    defparam i2_2_lut_rep_51_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut (.A(FS[7]), .B(FS[6]), .C(FS[8]), .D(FS[5]), 
         .Z(n53_adj_9)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(78[13:15])
    defparam i1_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1_2_lut_rep_79 (.A(FS[5]), .B(FS[9]), .Z(n4928)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam i1_2_lut_rep_79.init = 16'h2222;
    LUT4 n34_bdd_2_lut_3877_3_lut (.A(FS[5]), .B(FS[9]), .C(n4806), .Z(n4807)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam n34_bdd_2_lut_3877_3_lut.init = 16'h2020;
    LUT4 n61_bdd_4_lut_3912 (.A(n4923), .B(n12_adj_8), .C(n45), .D(FS[10]), 
         .Z(n4850)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;
    defparam n61_bdd_4_lut_3912.init = 16'hccec;
    FD1S3AX Bank_i6 (.D(Din_c_6), .CK(PHI2_c), .Q(Bank[6]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(90[9] 94[5])
    defparam Bank_i6.GSR = "ENABLED";
    LUT4 i3122_3_lut_3_lut_4_lut (.A(n4927), .B(n4905), .C(n646), .D(FS[10]), 
         .Z(n23)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam i3122_3_lut_3_lut_4_lut.init = 16'h11f0;
    FD1S3AX Bank_i5 (.D(Din_c_5), .CK(PHI2_c), .Q(Bank[5]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(90[9] 94[5])
    defparam Bank_i5.GSR = "ENABLED";
    FD1S3AX Bank_i4 (.D(Din_c_4), .CK(PHI2_c), .Q(Bank[4]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(90[9] 94[5])
    defparam Bank_i4.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_4_lut (.A(FS[10]), .B(n3_adj_16), .C(FS[11]), 
         .D(n4895), .Z(n42_adj_5)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 n1097_bdd_2_lut_3927 (.A(n4858), .B(FS[9]), .Z(n4859)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam n1097_bdd_2_lut_3927.init = 16'hbbbb;
    FD1S3AX Bank_i3 (.D(Din_c_3), .CK(PHI2_c), .Q(Bank[3]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(90[9] 94[5])
    defparam Bank_i3.GSR = "ENABLED";
    FD1S3AX Bank_i2 (.D(Din_c_2), .CK(PHI2_c), .Q(Bank[2]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(90[9] 94[5])
    defparam Bank_i2.GSR = "ENABLED";
    FD1S3AX FS_972__i0 (.D(n95), .CK(RCLK_c), .Q(FS[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972__i0.GSR = "ENABLED";
    LUT4 i7_4_lut_4_lut (.A(FS[4]), .B(n4517), .C(n10), .D(n14_adj_14), 
         .Z(n4539)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(692[20:26])
    defparam i7_4_lut_4_lut.init = 16'h4000;
    LUT4 FS_5__bdd_4_lut_3949 (.A(FS[5]), .B(FS[8]), .C(FS[6]), .D(FS[7]), 
         .Z(n4858)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A !(B+(C (D)))) */ ;
    defparam FS_5__bdd_4_lut_3949.init = 16'h8133;
    FD1S3AX Bank_i1 (.D(Din_c_1), .CK(PHI2_c), .Q(Bank[1]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(90[9] 94[5])
    defparam Bank_i1.GSR = "ENABLED";
    LUT4 n9_bdd_2_lut_3908_4_lut (.A(n4910), .B(n4919), .C(FS[10]), .D(FS[12]), 
         .Z(n4775)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam n9_bdd_2_lut_3908_4_lut.init = 16'h0200;
    FD1P3AX CmdUFMData_548 (.D(Din_c_0), .SP(PHI2_N_151_enable_3), .CK(PHI2_N_151), 
            .Q(CmdUFMData)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(280[9] 315[5])
    defparam CmdUFMData_548.GSR = "ENABLED";
    LUT4 i3106_3_lut_3_lut (.A(FS[12]), .B(FS[11]), .C(n53), .Z(n1_adj_6)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(684[30:46])
    defparam i3106_3_lut_3_lut.init = 16'h7070;
    LUT4 nRCAS_I_0_594_3_lut_4_lut (.A(nRCAS_N_198), .B(n4906), .C(Ready), 
         .D(nRCAS_N_199), .Z(nRCAS_N_194)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(267[12] 276[6])
    defparam nRCAS_I_0_594_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i5_4_lut_4_lut (.A(FS[12]), .B(n4895), .C(n4519), .D(n2308), 
         .Z(n12_adj_10)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(684[30:46])
    defparam i5_4_lut_4_lut.init = 16'h4000;
    LUT4 Din_7__I_0_i6_2_lut_rep_80 (.A(Din_c_6), .B(Din_c_7), .Z(n4929)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(304[17:31])
    defparam Din_7__I_0_i6_2_lut_rep_80.init = 16'heeee;
    LUT4 i1_4_lut_4_lut_adj_2 (.A(n4907), .B(FS[12]), .C(n42), .D(n4807), 
         .Z(n3_adj_4)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i1_4_lut_4_lut_adj_2.init = 16'h5140;
    LUT4 FS_7__bdd_4_lut_3948 (.A(FS[7]), .B(FS[9]), .C(FS[8]), .D(n4939), 
         .Z(n638)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)+!B !(C+(D))))) */ ;
    defparam FS_7__bdd_4_lut_3948.init = 16'h373e;
    PFUMX i29 (.BLUT(n56), .ALUT(n1_adj_6), .C0(n4632), .Z(n14_adj_3));
    LUT4 i2_3_lut_rep_33_4_lut (.A(Din_c_6), .B(Din_c_7), .C(Din_c_4), 
         .D(XOR8MEG_N_149), .Z(n4882)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(304[17:31])
    defparam i2_3_lut_rep_33_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_59_3_lut (.A(Din_c_6), .B(Din_c_7), .C(Din_c_5), 
         .Z(n4908)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(304[17:31])
    defparam i1_2_lut_rep_59_3_lut.init = 16'hfefe;
    LUT4 i21_3_lut_4_lut_4_lut (.A(n4907), .B(n759), .C(InitReady), .D(n4880), 
         .Z(wb_dati_7__N_68[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i21_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i13 (.BLUT(n4539), .ALUT(n4513), .C0(InitReady), .Z(RCLK_c_enable_24));
    LUT4 i1_4_lut_4_lut_adj_3 (.A(n4907), .B(n4900), .C(n4890), .D(FS[5]), 
         .Z(n45)) /* synthesis lut_function=(!(A+(B (C)+!B !((D)+!C)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i1_4_lut_4_lut_adj_3.init = 16'h1505;
    LUT4 FS_6__bdd_4_lut_3962 (.A(FS[6]), .B(FS[5]), .C(FS[8]), .D(FS[7]), 
         .Z(n4869)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(B (C+(D))+!B (C)))) */ ;
    defparam FS_6__bdd_4_lut_3962.init = 16'h7ef0;
    LUT4 i3707_2_lut_rep_81 (.A(MAin_c_3), .B(MAin_c_6), .Z(n4930)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3707_2_lut_rep_81.init = 16'h8888;
    LUT4 i1_2_lut_rep_82 (.A(Din_c_3), .B(Din_c_5), .Z(n4931)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_82.init = 16'h8888;
    PFUMX i3859 (.BLUT(n4775), .ALUT(n4774), .C0(FS[11]), .Z(n4776));
    LUT4 i21_3_lut_4_lut_4_lut_adj_4 (.A(n4907), .B(n756), .C(InitReady), 
         .D(n4880), .Z(wb_dati_7__N_68[5])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i21_3_lut_4_lut_4_lut_adj_4.init = 16'hc5c0;
    LUT4 i1_4_lut_4_lut_adj_5 (.A(n4907), .B(FS[12]), .C(n42), .D(n39), 
         .Z(n3)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i1_4_lut_4_lut_adj_5.init = 16'h5140;
    FD1P3AX CmdUFMShift_547 (.D(Din_c_1), .SP(PHI2_N_151_enable_3), .CK(PHI2_N_151), 
            .Q(CmdUFMShift)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(280[9] 315[5])
    defparam CmdUFMShift_547.GSR = "ENABLED";
    FD1P3AX Cmdn8MEGEN_546 (.D(Cmdn8MEGEN_N_260), .SP(PHI2_N_151_enable_5), 
            .CK(PHI2_N_151), .Q(Cmdn8MEGEN)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(280[9] 315[5])
    defparam Cmdn8MEGEN_546.GSR = "ENABLED";
    FD1P3AX CmdLEDEN_545 (.D(CmdLEDEN_N_251), .SP(PHI2_N_151_enable_5), 
            .CK(PHI2_N_151), .Q(CmdLEDEN)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(280[9] 315[5])
    defparam CmdLEDEN_545.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_4_lut (.A(n4907), .B(FS[12]), .C(n42_adj_5), .D(n38), 
         .Z(n3_adj_1)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h5140;
    FD1P3AX Ready_540 (.D(n5144), .SP(Ready_N_280), .CK(RCLK_c), .Q(Ready)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(139[9] 277[5])
    defparam Ready_540.GSR = "ENABLED";
    FD1P3AX XOR8MEG_544 (.D(Din_c_0), .SP(PHI2_N_151_enable_6), .CK(PHI2_N_151), 
            .Q(XOR8MEG)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(280[9] 315[5])
    defparam XOR8MEG_544.GSR = "ENABLED";
    LUT4 i3748_4_lut (.A(Din_c_3), .B(MAin_c_0), .C(Din_c_2), .D(n4888), 
         .Z(n4624)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3748_4_lut.init = 16'hfffe;
    FD1S3IX RA11_521 (.D(RA11_N_217), .CK(PHI2_c), .CD(n4935), .Q(RA_c));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(90[9] 94[5])
    defparam RA11_521.GSR = "ENABLED";
    FD1P3AX IS_FSM__i0 (.D(Ready_N_284), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(nRCS_N_172));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(255[11:15])
    defparam IS_FSM__i0.GSR = "ENABLED";
    FD1P3AX wb_clk_550 (.D(n1889), .SP(RCLK_c_enable_28), .CK(RCLK_c), 
            .Q(wb_clk));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(351[9] 730[5])
    defparam wb_clk_550.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_6 (.A(n4907), .B(FS[11]), .C(n3711), .D(n175), 
         .Z(n17)) /* synthesis lut_function=(!(A+(B (C)+!B !(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i1_4_lut_4_lut_adj_6.init = 16'h1504;
    FD1P3AX nRowColSel_538 (.D(n1885), .SP(RCLK_c_enable_29), .CK(RCLK_c), 
            .Q(nRowColSel));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(139[9] 277[5])
    defparam nRowColSel_538.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_62_4_lut (.A(Din_c_3), .B(Din_c_5), .C(Din_c_2), 
         .D(Din_c_6), .Z(n4911)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_rep_62_4_lut.init = 16'h0080;
    LUT4 i2_1_lut_rep_83 (.A(nFWE_c), .Z(n4932)) /* synthesis lut_function=(!(A)) */ ;
    defparam i2_1_lut_rep_83.init = 16'h5555;
    LUT4 i1_2_lut_2_lut (.A(nFWE_c), .B(n4504), .Z(n4548)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i1684_1_lut_rep_84 (.A(nRowColSel_N_35), .Z(n4933)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(123[13:16])
    defparam i1684_1_lut_rep_84.init = 16'h5555;
    LUT4 i2736_4_lut (.A(wb_adr[7]), .B(InitReady), .C(wb_adr[6]), .D(n4901), 
         .Z(wb_adr_7__N_60[7])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[12] 729[6])
    defparam i2736_4_lut.init = 16'hc088;
    LUT4 i29_3_lut (.A(n14_adj_7), .B(n746), .C(InitReady), .Z(wb_adr_7__N_60[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i29_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_4_lut (.A(nRowColSel_N_35), .B(RASr2), .C(InitReady), 
         .D(nRCS_N_172), .Z(nRCS_N_170)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(123[13:16])
    defparam i3_4_lut_4_lut.init = 16'hff7f;
    LUT4 i2787_2_lut_rep_85 (.A(FS[10]), .B(FS[11]), .Z(n4934)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2787_2_lut_rep_85.init = 16'h8888;
    LUT4 i2791_2_lut_rep_42_3_lut_4_lut_4_lut_2_lut (.A(FS[11]), .B(n14), 
         .Z(n4891)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i2791_2_lut_rep_42_3_lut_4_lut_4_lut_2_lut.init = 16'hdddd;
    LUT4 i3_4_lut_4_lut_adj_7 (.A(n4907), .B(n4904), .C(InitReady), .D(n4895), 
         .Z(n3969)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i3_4_lut_4_lut_adj_7.init = 16'h0004;
    FD1P3IX ADSubmitted_543 (.D(n4883), .SP(PHI2_N_151_enable_7), .CD(C1Submitted_N_232), 
            .CK(PHI2_N_151), .Q(ADSubmitted)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(280[9] 315[5])
    defparam ADSubmitted_543.GSR = "ENABLED";
    LUT4 CmdLEDEN_I_69_3_lut_4_lut (.A(Din_c_4), .B(n4908), .C(Din_c_1), 
         .D(LEDEN), .Z(CmdLEDEN_N_251)) /* synthesis lut_function=(A (B (D)+!B !(C))+!A (D)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(304[17:31])
    defparam CmdLEDEN_I_69_3_lut_4_lut.init = 16'hdf02;
    LUT4 Cmdn8MEGEN_I_72_3_lut_4_lut (.A(Din_c_4), .B(n4908), .C(Din_c_0), 
         .D(n8MEGEN), .Z(Cmdn8MEGEN_N_260)) /* synthesis lut_function=(A (B (D)+!B !(C))+!A (D)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(304[17:31])
    defparam Cmdn8MEGEN_I_72_3_lut_4_lut.init = 16'hdf02;
    CCU2D FS_972_add_4_9 (.A0(FS[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FS[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4089), 
          .COUT(n4090), .S0(n88), .S1(n87));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972_add_4_9.INIT0 = 16'hfaaa;
    defparam FS_972_add_4_9.INIT1 = 16'hfaaa;
    defparam FS_972_add_4_9.INJECT1_0 = "NO";
    defparam FS_972_add_4_9.INJECT1_1 = "NO";
    LUT4 i3804_2_lut_4_lut (.A(FS[11]), .B(n4909), .C(n10_adj_2), .D(FS[9]), 
         .Z(n3671)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(522[30:46])
    defparam i3804_2_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_53 (.A(FS[11]), .B(n14), .Z(n4902)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(648[30:46])
    defparam i1_2_lut_rep_53.init = 16'heeee;
    LUT4 i3808_2_lut_4_lut (.A(FS[11]), .B(n4909), .C(n10_adj_2), .D(InitReady), 
         .Z(wb_adr_7__N_92)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(522[30:46])
    defparam i3808_2_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_64_3_lut (.A(FS[10]), .B(FS[11]), .C(n14), .Z(n4913)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_64_3_lut.init = 16'hf7f7;
    LUT4 mux_427_i5_3_lut_4_lut (.A(n4917), .B(CmdUFMShift), .C(wb_adr[3]), 
         .D(wb_adr[4]), .Z(n748)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[16:47])
    defparam mux_427_i5_3_lut_4_lut.init = 16'hf780;
    LUT4 i1044_1_lut_rep_86 (.A(Ready), .Z(n4935)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(139[9] 277[5])
    defparam i1044_1_lut_rep_86.init = 16'h5555;
    LUT4 n4729_bdd_2_lut_3976 (.A(n4729), .B(FS[11]), .Z(n4730)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n4729_bdd_2_lut_3976.init = 16'h2222;
    LUT4 i1_3_lut_rep_34_4_lut (.A(MAin_c_0), .B(n4888), .C(n4911), .D(n4548), 
         .Z(n4883)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(72[15:31])
    defparam i1_3_lut_rep_34_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_3_lut (.A(FS[11]), .B(n14), .C(FS[10]), .Z(n4)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(648[30:46])
    defparam i1_2_lut_3_lut.init = 16'hefef;
    LUT4 n3572_bdd_4_lut_3847 (.A(n4890), .B(wb_cyc_stb_N_350), .C(n638), 
         .D(FS[10]), .Z(n4729)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n3572_bdd_4_lut_3847.init = 16'h88f0;
    LUT4 n4733_bdd_2_lut (.A(n4733), .B(n3969), .Z(wb_adr_7__N_60[0])) /* synthesis lut_function=(A+(B)) */ ;
    defparam n4733_bdd_2_lut.init = 16'heeee;
    LUT4 i28_3_lut (.A(n14_adj_7), .B(n748), .C(InitReady), .Z(wb_adr_7__N_60[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i28_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_44_3_lut_4_lut (.A(FS[11]), .B(n14), .C(FS[10]), 
         .D(n4920), .Z(n4893)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(648[30:46])
    defparam i1_2_lut_rep_44_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_2_lut_adj_8 (.A(Ready), .B(nRowColSel_N_34), .Z(n6)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(139[9] 277[5])
    defparam i1_2_lut_2_lut_adj_8.init = 16'hdddd;
    LUT4 i1_2_lut_rep_37_3_lut_4_lut (.A(FS[11]), .B(n14), .C(FS[10]), 
         .D(n4920), .Z(n4886)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(648[30:46])
    defparam i1_2_lut_rep_37_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_4_lut (.A(Ready), .B(n2040), .C(nRowColSel_N_32), 
         .D(nRowColSel_N_35), .Z(RCLK_c_enable_29)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(139[9] 277[5])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i2742_4_lut (.A(wb_adr[3]), .B(InitReady), .C(wb_adr[2]), .D(n4901), 
         .Z(wb_adr_7__N_60[3])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[12] 729[6])
    defparam i2742_4_lut.init = 16'hc088;
    LUT4 i2_2_lut_4_lut (.A(FS[11]), .B(n4909), .C(n10_adj_2), .D(FS[9]), 
         .Z(n10)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(522[30:46])
    defparam i2_2_lut_4_lut.init = 16'h00fe;
    LUT4 i2743_4_lut (.A(wb_adr[2]), .B(InitReady), .C(wb_adr[1]), .D(n4901), 
         .Z(wb_adr_7__N_60[2])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[12] 729[6])
    defparam i2743_4_lut.init = 16'hc088;
    CCU2D FS_972_add_4_7 (.A0(FS[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FS[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4088), 
          .COUT(n4089), .S0(n90), .S1(n89));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972_add_4_7.INIT0 = 16'hfaaa;
    defparam FS_972_add_4_7.INIT1 = 16'hfaaa;
    defparam FS_972_add_4_7.INJECT1_0 = "NO";
    defparam FS_972_add_4_7.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut (.A(FS[7]), .B(n4919), .C(FS[8]), .D(FS[6]), 
         .Z(n3_adj_16)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0100;
    LUT4 nRCS_N_179_bdd_4_lut (.A(nRCS_N_179), .B(n2040), .C(nRWE_N_215), 
         .D(nRowColSel_N_35), .Z(nRWE_N_211)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C+!(D))) */ ;
    defparam nRCS_N_179_bdd_4_lut.init = 16'hf0dd;
    LUT4 i34_4_lut (.A(n7), .B(ADSubmitted), .C(C1Submitted_N_232), .D(n4889), 
         .Z(PHI2_N_151_enable_1)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i34_4_lut.init = 16'hc0c5;
    LUT4 FS_8__bdd_3_lut_4_lut (.A(FS[7]), .B(n4919), .C(FS[6]), .D(FS[8]), 
         .Z(n4718)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam FS_8__bdd_3_lut_4_lut.init = 16'h0100;
    LUT4 i13_4_lut (.A(MAin_c_0), .B(C1Submitted), .C(MAin_c_1), .D(n6_adj_11), 
         .Z(n7)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (C))) */ ;
    defparam i13_4_lut.init = 16'h2505;
    LUT4 i2_2_lut_rep_54_2_lut (.A(Ready), .B(nRowColSel_N_35), .Z(n4903)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(139[9] 277[5])
    defparam i2_2_lut_rep_54_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_rep_87 (.A(FS[7]), .B(FS[5]), .Z(n4936)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_87.init = 16'h8888;
    LUT4 n34_bdd_2_lut_3867_3_lut_4_lut (.A(n4782), .B(n4930), .C(n4628), 
         .D(n4582), .Z(PHI2_N_151_enable_7)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam n34_bdd_2_lut_3867_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_9 (.A(n4938), .B(n4914), .C(FS[9]), .D(n98), 
         .Z(n2199)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(78[13:15])
    defparam i1_3_lut_4_lut_adj_9.init = 16'hc5cf;
    LUT4 i3_4_lut_adj_10 (.A(FS[11]), .B(FS[12]), .C(n4907), .D(n23), 
         .Z(n4125)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(78[13:15])
    defparam i3_4_lut_adj_10.init = 16'h0400;
    LUT4 i1_2_lut_rep_49_3_lut_4_lut (.A(FS[7]), .B(FS[5]), .C(FS[9]), 
         .D(n4937), .Z(n4898)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_49_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_11 (.A(FS[10]), .B(n4923), .C(n12_adj_8), 
         .D(n45), .Z(n14_adj_7)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i1_3_lut_4_lut_adj_11.init = 16'hf4f0;
    LUT4 i1_2_lut_rep_88 (.A(FS[6]), .B(FS[8]), .Z(n4937)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam i1_2_lut_rep_88.init = 16'h8888;
    LUT4 i1_2_lut_rep_65_3_lut_4_lut (.A(FS[6]), .B(FS[8]), .C(FS[5]), 
         .D(FS[7]), .Z(n4914)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam i1_2_lut_rep_65_3_lut_4_lut.init = 16'h8000;
    LUT4 i3_4_lut_adj_12 (.A(Din_c_1), .B(Din_c_0), .C(Din_c_7), .D(Din_c_4), 
         .Z(n4504)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i3_4_lut_adj_12.init = 16'h0040;
    LUT4 i1_2_lut_rep_89 (.A(FS[7]), .B(FS[8]), .Z(n4938)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_89.init = 16'heeee;
    LUT4 i2_3_lut (.A(InitReady), .B(FS[12]), .C(n754), .Z(n4165)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[12] 729[6])
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_45_3_lut_4_lut (.A(FS[7]), .B(FS[8]), .C(FS[9]), 
         .D(n4939), .Z(n4894)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_45_3_lut_4_lut.init = 16'hfffe;
    LUT4 n61_bdd_4_lut (.A(n4923), .B(n4895), .C(n4530), .D(FS[10]), 
         .Z(n4880)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam n61_bdd_4_lut.init = 16'h11f0;
    LUT4 i1_2_lut_rep_90 (.A(FS[5]), .B(FS[6]), .Z(n4939)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(78[13:15])
    defparam i1_2_lut_rep_90.init = 16'heeee;
    LUT4 i2_2_lut_rep_66_3_lut_4_lut (.A(FS[5]), .B(FS[6]), .C(FS[8]), 
         .D(FS[7]), .Z(n4915)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(78[13:15])
    defparam i2_2_lut_rep_66_3_lut_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut_adj_13 (.A(n4582), .B(n4628), .C(n15), .D(n4930), 
         .Z(n2384)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i13_4_lut_adj_13.init = 16'hf7ff;
    LUT4 i1_2_lut_adj_14 (.A(MAin_c_7), .B(Bank[2]), .Z(n15)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_14.init = 16'hdddd;
    LUT4 i1_2_lut_rep_38_4_lut (.A(n53_adj_9), .B(n4914), .C(FS[9]), .D(FS[11]), 
         .Z(n4887)) /* synthesis lut_function=(A (B (C (D)))+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(464[4] 521[11])
    defparam i1_2_lut_rep_38_4_lut.init = 16'hc500;
    LUT4 i2_2_lut_3_lut_4_lut (.A(nRCS_N_172), .B(n4926), .C(Ready), .D(nRCAS_N_198), 
         .Z(n4129)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(267[12] 276[6])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 i1_3_lut_3_lut_4_lut (.A(FS[7]), .B(n4924), .C(n4914), .D(FS[9]), 
         .Z(wb_cyc_stb_N_348)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i1_2_lut_rep_58 (.A(n14), .B(FS[13]), .Z(n4907)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i1_2_lut_rep_58.init = 16'heeee;
    LUT4 i1_2_lut_adj_15 (.A(RASr2), .B(nRowColSel_N_32), .Z(n2556)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(83[9] 87[5])
    defparam i1_2_lut_adj_15.init = 16'h2222;
    CCU2D FS_972_add_4_19 (.A0(FS[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4094), 
          .S0(n78));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972_add_4_19.INIT0 = 16'hfaaa;
    defparam FS_972_add_4_19.INIT1 = 16'h0000;
    defparam FS_972_add_4_19.INJECT1_0 = "NO";
    defparam FS_972_add_4_19.INJECT1_1 = "NO";
    LUT4 i3746_2_lut_3_lut (.A(n14), .B(FS[13]), .C(FS[10]), .Z(n4622)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i3746_2_lut_3_lut.init = 16'hfefe;
    LUT4 i3709_2_lut (.A(Bank[3]), .B(MAin_c_5), .Z(n4582)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3709_2_lut.init = 16'h8888;
    LUT4 i3711_4_lut (.A(n4890), .B(n4887), .C(n2199), .D(FS[10]), .Z(n4585)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i3711_4_lut.init = 16'ha088;
    PFUMX i12_adj_16 (.BLUT(n4526), .ALUT(n751), .C0(InitReady), .Z(wb_adr_7__N_60[1]));
    LUT4 i3751_4_lut (.A(Bank[1]), .B(n4610), .C(n4574), .D(Bank[0]), 
         .Z(n4628)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3751_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_2_lut_3_lut (.A(n14), .B(FS[13]), .C(n14_adj_3), .Z(n12_adj_8)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i1_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i3734_4_lut (.A(MAin_c_4), .B(Bank[5]), .C(Bank[4]), .D(Bank[6]), 
         .Z(n4610)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3734_4_lut.init = 16'h8000;
    PFUMX i1383 (.BLUT(n2244), .ALUT(n2252), .C0(n4634), .Z(wb_we_N_338));
    LUT4 i2856_2_lut_3_lut_4_lut (.A(n14), .B(FS[13]), .C(n4915), .D(FS[9]), 
         .Z(n2426)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i2856_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1669_3_lut_4_lut (.A(InitReady), .B(n4886), .C(wb_dato[0]), 
         .D(Cmdn8MEGEN), .Z(n8MEGEN_N_139)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i1669_3_lut_4_lut.init = 16'hfe10;
    LUT4 i3701_2_lut (.A(Bank[7]), .B(MAin_c_2), .Z(n4574)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3701_2_lut.init = 16'h8888;
    LUT4 n34_bdd_2_lut_3863_2_lut_3_lut (.A(n14), .B(FS[13]), .C(n4776), 
         .Z(n4777)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam n34_bdd_2_lut_3863_2_lut_3_lut.init = 16'h1010;
    LUT4 i1382_3_lut (.A(wb_we_N_354), .B(wb_cyc_stb), .C(InitReady), 
         .Z(n2252)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(525[4] 647[11])
    defparam i1382_3_lut.init = 16'hcaca;
    PFUMX i12_adj_17 (.BLUT(n3_adj_1), .ALUT(n757), .C0(InitReady), .Z(wb_dati_7__N_68[4]));
    LUT4 n34_bdd_2_lut_3841_2_lut_3_lut (.A(n14), .B(FS[13]), .C(n4731), 
         .Z(n4732)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam n34_bdd_2_lut_3841_2_lut_3_lut.init = 16'h1010;
    LUT4 i1375_4_lut (.A(n4897), .B(n2238), .C(n10_adj_2), .D(n4913), 
         .Z(n2244)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(525[4] 647[11])
    defparam i1375_4_lut.init = 16'hccca;
    LUT4 i6_4_lut (.A(n4149), .B(n12_adj_10), .C(n4622), .D(n4164), 
         .Z(n4526)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i6_4_lut.init = 16'h0800;
    LUT4 mux_427_i1_3_lut_4_lut (.A(n4917), .B(CmdUFMShift), .C(wb_dati[7]), 
         .D(wb_adr[0]), .Z(n752)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[16:47])
    defparam mux_427_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 i6_4_lut_adj_18 (.A(FS[13]), .B(n12), .C(FS[17]), .D(FS[14]), 
         .Z(RCLK_c_enable_26)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_18.init = 16'h8000;
    LUT4 i5_4_lut (.A(FS[12]), .B(FS[16]), .C(FS[15]), .D(n4934), .Z(n12)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_4_lut_adj_19 (.A(Din_c_5), .B(n4929), .C(XOR8MEG_N_149), 
         .D(Din_c_4), .Z(PHI2_N_151_enable_6)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(304[17:31])
    defparam i2_3_lut_4_lut_adj_19.init = 16'h0010;
    LUT4 i1_2_lut_rep_39 (.A(MAin_c_1), .B(n2384), .Z(n4888)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(72[15:31])
    defparam i1_2_lut_rep_39.init = 16'hdddd;
    PFUMX i3833 (.BLUT(n4732), .ALUT(n752), .C0(InitReady), .Z(n4733));
    LUT4 i1683_1_lut (.A(nRowColSel_N_34), .Z(n2557)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(123[13:16])
    defparam i1683_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_36_3_lut (.A(MAin_c_1), .B(n2384), .C(MAin_c_0), 
         .Z(n4885)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(72[15:31])
    defparam i1_2_lut_rep_36_3_lut.init = 16'hdfdf;
    LUT4 i92_4_lut (.A(n4887), .B(n2199), .C(FS[10]), .D(n4890), .Z(n53)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i92_4_lut.init = 16'hcafa;
    LUT4 i3812_2_lut (.A(FS[11]), .B(FS[12]), .Z(n4632)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i3812_2_lut.init = 16'hbbbb;
    LUT4 i6_4_lut_adj_20 (.A(FS[10]), .B(n4527), .C(n4924), .D(n4936), 
         .Z(n14_adj_14)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i6_4_lut_adj_20.init = 16'h0400;
    LUT4 i4_4_lut (.A(FS[1]), .B(n4902), .C(n4920), .D(n6_adj_12), .Z(n4527)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i4_4_lut.init = 16'h0100;
    PFUMX i3123 (.BLUT(n4125), .ALUT(n760), .C0(InitReady), .Z(n3989));
    LUT4 i1_3_lut (.A(FS[0]), .B(FS[2]), .C(FS[3]), .Z(n6_adj_12)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_60 (.A(FS[10]), .B(n14), .Z(n4909)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(684[30:46])
    defparam i1_2_lut_rep_60.init = 16'heeee;
    LUT4 nRCS_N_170_I_0_4_lut (.A(nRCS_N_170), .B(n4918), .C(Ready), .D(nRowColSel_N_35), 
         .Z(nRRAS_N_189)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(224[12] 276[6])
    defparam nRCS_N_170_I_0_4_lut.init = 16'h3afa;
    LUT4 i1_3_lut_adj_21 (.A(n4882), .B(Din_c_5), .C(Din_c_3), .Z(PHI2_N_151_enable_5)) /* synthesis lut_function=(A ((C)+!B)) */ ;
    defparam i1_3_lut_adj_21.init = 16'ha2a2;
    LUT4 FS_17__I_0_579_i10_2_lut (.A(FS[12]), .B(FS[13]), .Z(n10_adj_2)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(461[30:46])
    defparam FS_17__I_0_579_i10_2_lut.init = 16'heeee;
    LUT4 i3_4_lut_adj_22 (.A(FS[15]), .B(FS[17]), .C(FS[16]), .D(FS[14]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_22.init = 16'hfffe;
    LUT4 i1_2_lut_rep_50_3_lut (.A(FS[10]), .B(n14), .C(FS[11]), .Z(n4899)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(684[30:46])
    defparam i1_2_lut_rep_50_3_lut.init = 16'hefef;
    LUT4 i1_2_lut_rep_43_3_lut_4_lut (.A(FS[10]), .B(n14), .C(n4920), 
         .D(FS[11]), .Z(n4892)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(684[30:46])
    defparam i1_2_lut_rep_43_3_lut_4_lut.init = 16'hfeff;
    LUT4 i3_4_lut_adj_23 (.A(MAin_c_1), .B(MAin_c_0), .C(CmdEnable), .D(n4889), 
         .Z(XOR8MEG_N_149)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i3_4_lut_adj_23.init = 16'h0040;
    LUT4 i3712_2_lut_rep_40 (.A(nFWE_c), .B(n2384), .Z(n4889)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3712_2_lut_rep_40.init = 16'heeee;
    LUT4 nRCAS_I_46_4_lut (.A(nRCS_N_175), .B(CBR), .C(nRowColSel_N_35), 
         .D(RASr2), .Z(nRCAS_N_199)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(178[13] 223[7])
    defparam nRCAS_I_46_4_lut.init = 16'h3afa;
    LUT4 i66_4_lut (.A(FS[10]), .B(n3609), .C(FS[11]), .D(n2308), .Z(n39)) /* synthesis lut_function=(!(A (C+(D))+!A (B+!(C)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i66_4_lut.init = 16'h101a;
    LUT4 i2_2_lut (.A(InitReady), .B(Ready_N_284), .Z(n6_adj_15)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(83[9] 87[5])
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i2_2_lut_4_lut_adj_24 (.A(n4931), .B(Din_c_6), .C(Din_c_2), .D(n4504), 
         .Z(n6_adj_11)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_2_lut_4_lut_adj_24.init = 16'h2000;
    LUT4 FS_17__I_0_572_i10_2_lut_rep_71 (.A(FS[12]), .B(FS[13]), .Z(n4920)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(684[30:46])
    defparam FS_17__I_0_572_i10_2_lut_rep_71.init = 16'hdddd;
    LUT4 i1676_3_lut_4_lut (.A(nFWE_c), .B(n2384), .C(MAin_c_1), .D(C1Submitted), 
         .Z(n2549)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1676_3_lut_4_lut.init = 16'hef00;
    LUT4 RA11_I_57_3_lut (.A(Din_c_6), .B(XOR8MEG), .C(n8MEGEN), .Z(RA11_N_217)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(91[22:51])
    defparam RA11_I_57_3_lut.init = 16'hc6c6;
    LUT4 i2387_3_lut_4_lut (.A(FS[5]), .B(n4924), .C(FS[11]), .D(n53_adj_9), 
         .Z(n98)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i2387_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i1_4_lut (.A(FS[2]), .B(n4884), .C(n4886), .D(n4517), .Z(n1)) /* synthesis lut_function=(!((B (C (D)))+!A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam i1_4_lut.init = 16'h2aaa;
    LUT4 i2506_4_lut (.A(RASr), .B(RCKEEN), .C(RASr2), .D(RASr3), .Z(RCKE_N_165)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(19[12:17])
    defparam i2506_4_lut.init = 16'hcfc8;
    LUT4 i2801_4_lut (.A(FWEr), .B(n4903), .C(n2040), .D(n4_adj_13), 
         .Z(n1885)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(139[9] 277[5])
    defparam i2801_4_lut.init = 16'h3032;
    LUT4 i1_2_lut_adj_25 (.A(CASr3), .B(CBR), .Z(n4_adj_13)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(222[16:37])
    defparam i1_2_lut_adj_25.init = 16'heeee;
    LUT4 i2_2_lut_3_lut_4_lut_adj_26 (.A(n4898), .B(n4894), .C(n4897), 
         .D(FS[11]), .Z(n4519)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_26.init = 16'h4000;
    LUT4 n9_bdd_4_lut_3892 (.A(n4895), .B(n4718), .C(FS[10]), .D(FS[12]), 
         .Z(n4774)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D)+!C !(D))+!B (C+!(D))))) */ ;
    defparam n9_bdd_4_lut_3892.init = 16'h05c0;
    LUT4 i1_4_lut_adj_27 (.A(FS[10]), .B(n646), .C(n4895), .D(FS[11]), 
         .Z(n42)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C+!(D))))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i1_4_lut_adj_27.init = 16'h0544;
    LUT4 MAin_9__I_0_565_i3_3_lut (.A(RowA[2]), .B(MAin_c_2), .C(nRowColSel), 
         .Z(RA_c_2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(54[19:54])
    defparam MAin_9__I_0_565_i3_3_lut.init = 16'hcaca;
    LUT4 MAin_9__I_0_565_i4_3_lut (.A(RowA[3]), .B(MAin_c_3), .C(nRowColSel), 
         .Z(RA_c_3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(54[19:54])
    defparam MAin_9__I_0_565_i4_3_lut.init = 16'hcaca;
    LUT4 MAin_9__I_0_565_i5_3_lut (.A(RowA[4]), .B(MAin_c_4), .C(nRowColSel), 
         .Z(RA_c_4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(54[19:54])
    defparam MAin_9__I_0_565_i5_3_lut.init = 16'hcaca;
    LUT4 i2319_3_lut_rep_47_4_lut (.A(n4937), .B(n4936), .C(FS[9]), .D(n4938), 
         .Z(n4896)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam i2319_3_lut_rep_47_4_lut.init = 16'h808f;
    LUT4 i24_3_lut_rep_48_4_lut (.A(n4937), .B(n4936), .C(FS[9]), .D(n53_adj_9), 
         .Z(n4897)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam i24_3_lut_rep_48_4_lut.init = 16'h808f;
    LUT4 i1_3_lut_4_lut_adj_28 (.A(n4927), .B(n4925), .C(FS[10]), .D(FS[12]), 
         .Z(n175)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_28.init = 16'h0100;
    LUT4 i1_3_lut_3_lut_4_lut_adj_29 (.A(n4937), .B(n4936), .C(n4938), 
         .D(FS[9]), .Z(wb_cyc_stb_N_350)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam i1_3_lut_3_lut_4_lut_adj_29.init = 16'h880f;
    LUT4 i2708_2_lut_rep_41_3_lut_3_lut_4_lut (.A(n4937), .B(n4936), .C(n4915), 
         .D(FS[9]), .Z(n4890)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam i2708_2_lut_rep_41_3_lut_3_lut_4_lut.init = 16'h77f0;
    LUT4 MAin_9__I_0_565_i6_3_lut (.A(RowA[5]), .B(MAin_c_5), .C(nRowColSel), 
         .Z(RA_c_5)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(54[19:54])
    defparam MAin_9__I_0_565_i6_3_lut.init = 16'hcaca;
    LUT4 MAin_9__I_0_565_i7_3_lut (.A(RowA[6]), .B(MAin_c_6), .C(nRowColSel), 
         .Z(RA_c_6)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(54[19:54])
    defparam MAin_9__I_0_565_i7_3_lut.init = 16'hcaca;
    PFUMX i3831 (.BLUT(n4585), .ALUT(n4730), .C0(FS[12]), .Z(n4731));
    LUT4 MAin_9__I_0_565_i8_3_lut (.A(RowA[7]), .B(MAin_c_7), .C(nRowColSel), 
         .Z(RA_c_7)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(54[19:54])
    defparam MAin_9__I_0_565_i8_3_lut.init = 16'hcaca;
    CCU2D FS_972_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FS[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n4086), 
          .S1(n95));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972_add_4_1.INIT0 = 16'hF000;
    defparam FS_972_add_4_1.INIT1 = 16'h0555;
    defparam FS_972_add_4_1.INJECT1_0 = "NO";
    defparam FS_972_add_4_1.INJECT1_1 = "NO";
    LUT4 MAin_9__I_0_565_i9_3_lut (.A(RowA[8]), .B(MAin_c_8), .C(nRowColSel), 
         .Z(RA_c_8)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(54[19:54])
    defparam MAin_9__I_0_565_i9_3_lut.init = 16'hcaca;
    LUT4 MAin_9__I_0_565_i10_3_lut (.A(RowA[9]), .B(MAin_c_9), .C(nRowColSel), 
         .Z(RA_c_9)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(54[19:54])
    defparam MAin_9__I_0_565_i10_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_4_lut (.A(FS[6]), .B(n4097), .C(FS[11]), .D(n4905), 
         .Z(n4530)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam i2_4_lut_4_lut.init = 16'h0010;
    CCU2D FS_972_add_4_5 (.A0(FS[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FS[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4087), 
          .COUT(n4088), .S0(n92), .S1(n91));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam FS_972_add_4_5.INIT0 = 16'hfaaa;
    defparam FS_972_add_4_5.INIT1 = 16'hfaaa;
    defparam FS_972_add_4_5.INJECT1_0 = "NO";
    defparam FS_972_add_4_5.INJECT1_1 = "NO";
    LUT4 i1248_4_lut (.A(wb_cyc_stb_N_350), .B(wb_cyc_stb_N_348), .C(n4893), 
         .D(n4892), .Z(n2104)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(684[12] 729[6])
    defparam i1248_4_lut.init = 16'h0aca;
    LUT4 i2812_2_lut_rep_69 (.A(RCKE_c), .B(RASr2), .Z(n4918)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2812_2_lut_rep_69.init = 16'heeee;
    LUT4 i1_2_lut_rep_52_4_lut (.A(CmdSubmitted), .B(PHI2r3), .C(PHI2r2), 
         .D(CmdUFMShift), .Z(n4901)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[16:47])
    defparam i1_2_lut_rep_52_4_lut.init = 16'h0800;
    LUT4 i3810_4_lut (.A(InitReady), .B(n10_adj_2), .C(n4899), .D(n4), 
         .Z(n4634)) /* synthesis lut_function=(A+!(B+(C (D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(525[4] 647[11])
    defparam i3810_4_lut.init = 16'habbb;
    LUT4 i3792_2_lut (.A(nCRAS_c), .B(LEDEN), .Z(LED_N_134)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(12[15:34])
    defparam i3792_2_lut.init = 16'hbbbb;
    LUT4 i2694_2_lut_rep_67 (.A(FWEr), .B(CBR), .Z(n4916)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2694_2_lut_rep_67.init = 16'heeee;
    LUT4 RASr2_I_0_1_lut_rep_72 (.A(RASr2), .Z(n4921)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(135[40:46])
    defparam RASr2_I_0_1_lut_rep_72.init = 16'h5555;
    LUT4 i2_3_lut_rep_68 (.A(CmdSubmitted), .B(PHI2r3), .C(PHI2r2), .Z(n4917)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[16:47])
    defparam i2_3_lut_rep_68.init = 16'h0808;
    LUT4 i3742_2_lut (.A(nRowColSel_N_33), .B(CASr2), .Z(n4618)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(178[13] 223[7])
    defparam i3742_2_lut.init = 16'hbbbb;
    LUT4 nRWE_I_0_596_4_lut (.A(n3622), .B(nRWE_N_211), .C(Ready), .D(n4906), 
         .Z(nRWE_N_204)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(224[12] 276[6])
    defparam nRWE_I_0_596_4_lut.init = 16'hcfc5;
    LUT4 i1174_2_lut (.A(FS[9]), .B(n4869), .Z(wb_we_N_351)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(525[4] 647[11])
    defparam i1174_2_lut.init = 16'h7777;
    LUT4 i3224_2_lut (.A(FS[12]), .B(FS[7]), .Z(n4097)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(78[13:15])
    defparam i3224_2_lut.init = 16'h8888;
    LUT4 i1662_2_lut_4_lut (.A(n4548), .B(n4885), .C(n4911), .D(C1Submitted_N_232), 
         .Z(CmdEnable_N_243)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(301[7:24])
    defparam i1662_2_lut_4_lut.init = 16'hff20;
    LUT4 i3754_2_lut_3_lut (.A(FWEr), .B(CBR), .C(RASr2), .Z(n22)) /* synthesis lut_function=(!(A (C)+!A (B (C)))) */ ;
    defparam i3754_2_lut_3_lut.init = 16'h1f1f;
    LUT4 i4_4_lut_adj_30 (.A(nRowColSel_N_35), .B(nRowColSel_N_33), .C(nRowColSel_N_32), 
         .D(n6), .Z(RCLK_c_enable_20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_30.init = 16'hfffe;
    LUT4 mux_427_i6_3_lut_4_lut (.A(n4917), .B(CmdUFMShift), .C(wb_adr[4]), 
         .D(wb_adr[5]), .Z(n747)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[16:47])
    defparam mux_427_i6_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_4_lut_4_lut_adj_31 (.A(RASr2), .B(n6_adj_15), .C(nRowColSel_N_32), 
         .D(Ready), .Z(Ready_N_280)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(135[40:46])
    defparam i1_4_lut_4_lut_adj_31.init = 16'hff40;
    LUT4 InitReady_I_0_586_1_lut_rep_73 (.A(InitReady), .Z(RCLK_c_enable_22)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(710[16:26])
    defparam InitReady_I_0_586_1_lut_rep_73.init = 16'h5555;
    LUT4 nRCS_I_0_590_3_lut (.A(nRCS_N_170), .B(nRCS_N_174), .C(Ready), 
         .Z(nRCS_N_169)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(224[12] 276[6])
    defparam nRCS_I_0_590_3_lut.init = 16'hcaca;
    LUT4 i1390_4_lut_4_lut (.A(InitReady), .B(n2262), .C(FS[4]), .D(CmdUFMData), 
         .Z(wb_cyc_stb_N_307)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(710[16:26])
    defparam i1390_4_lut_4_lut.init = 16'hae04;
    LUT4 i2758_2_lut (.A(nRWE_N_210), .B(nRCAS_N_198), .Z(n3622)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2758_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_4_lut_adj_32 (.A(InitReady), .B(PHI2r2), .C(PHI2r3), 
         .D(CmdSubmitted), .Z(RCLK_c_enable_28)) /* synthesis lut_function=(!(A (B+!(C (D))))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(710[16:26])
    defparam i1_2_lut_4_lut_4_lut_adj_32.init = 16'h7555;
    LUT4 i1_2_lut_3_lut_adj_33 (.A(n4917), .B(CmdUFMShift), .C(InitReady), 
         .Z(RCLK_c_enable_25)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[16:47])
    defparam i1_2_lut_3_lut_adj_33.init = 16'h8f8f;
    LUT4 mux_427_i7_3_lut_4_lut (.A(n4917), .B(CmdUFMShift), .C(wb_adr[5]), 
         .D(wb_adr[6]), .Z(n746)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[16:47])
    defparam mux_427_i7_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_4_lut_4_lut_adj_34 (.A(InitReady), .B(n1), .C(CmdUFMShift), 
         .D(wb_adr_7__N_92), .Z(n1889)) /* synthesis lut_function=(!(A (C+(D))+!A ((D)+!B))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(710[16:26])
    defparam i1_4_lut_4_lut_adj_34.init = 16'h004e;
    PFUMX i36 (.BLUT(n20), .ALUT(n22), .C0(nRowColSel_N_35), .Z(RCKEEN_N_153));
    LUT4 mux_428_i8_3_lut_4_lut (.A(n4917), .B(CmdUFMShift), .C(wb_dati[6]), 
         .D(wb_dati[7]), .Z(n754)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[16:47])
    defparam mux_428_i8_3_lut_4_lut.init = 16'hf780;
    LUT4 MAin_9__I_0_565_i2_3_lut (.A(RowA[1]), .B(MAin_c_1), .C(nRowColSel), 
         .Z(RA_c_1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(54[19:54])
    defparam MAin_9__I_0_565_i2_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_74 (.A(FS[11]), .B(FS[12]), .Z(n4923)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam i1_2_lut_rep_74.init = 16'h8888;
    LUT4 i1185_2_lut (.A(nRowColSel_N_33), .B(nRowColSel_N_34), .Z(n2040)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(187[13] 223[7])
    defparam i1185_2_lut.init = 16'heeee;
    PFUMX i3897 (.BLUT(n4850), .ALUT(n747), .C0(InitReady), .Z(wb_adr_7__N_60[5]));
    LUT4 i2685_2_lut (.A(nCCAS_c), .B(nFWE_c), .Z(n1965)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2685_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_55_3_lut (.A(FS[11]), .B(FS[12]), .C(FS[10]), .Z(n4904)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam i1_2_lut_rep_55_3_lut.init = 16'h0808;
    LUT4 nRWE_I_53_1_lut (.A(nRWE_N_210), .Z(nRWE_N_209)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(247[14] 254[8])
    defparam nRWE_I_53_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut (.A(FS[7]), .B(FS[6]), .C(n4925), .D(FS[5]), 
         .Z(n4164)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfbff;
    LUT4 i1_2_lut_rep_46_3_lut_4_lut (.A(FS[9]), .B(FS[8]), .C(n4927), 
         .D(FS[5]), .Z(n4895)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_2_lut_rep_46_3_lut_4_lut.init = 16'hfeff;
    LUT4 i3789_3_lut_4_lut_4_lut (.A(n4890), .B(n4859), .C(FS[10]), .D(n4896), 
         .Z(n56)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;
    defparam i3789_3_lut_4_lut_4_lut.init = 16'hfc5c;
    LUT4 n4580_bdd_4_lut (.A(nFWE_c), .B(MAin_c_1), .C(MAin_c_7), .D(Bank[2]), 
         .Z(n4782)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam n4580_bdd_4_lut.init = 16'h0040;
    LUT4 i2832_2_lut_3_lut_4_lut (.A(FS[9]), .B(FS[8]), .C(FS[6]), .D(FS[5]), 
         .Z(n3609)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2832_2_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i2_3_lut_4_lut_adj_35 (.A(FS[7]), .B(FS[6]), .C(n4925), .D(FS[5]), 
         .Z(n2308)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(128[9:13])
    defparam i2_3_lut_4_lut_adj_35.init = 16'hfffb;
    LUT4 i1_2_lut_rep_75 (.A(FS[6]), .B(FS[8]), .Z(n4924)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_75.init = 16'heeee;
    LUT4 i3_4_lut_adj_36 (.A(CASr2), .B(FWEr), .C(CBR), .D(CASr3), .Z(nRCS_N_179)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_36.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_37 (.A(FS[6]), .B(FS[8]), .C(n4928), 
         .D(FS[7]), .Z(n646)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_37.init = 16'h0010;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_2_lut_rep_61_3_lut (.A(FS[6]), .B(FS[8]), .C(FS[7]), .Z(n4910)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_61_3_lut.init = 16'h1010;
    LUT4 mux_428_i6_3_lut_4_lut (.A(n4917), .B(CmdUFMShift), .C(wb_dati[4]), 
         .D(wb_dati[5]), .Z(n756)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[16:47])
    defparam mux_428_i6_3_lut_4_lut.init = 16'hf780;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1667_3_lut_4_lut (.A(InitReady), .B(n4886), .C(wb_dato[1]), 
         .D(CmdLEDEN), .Z(LEDEN_N_110)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i1667_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_428_i3_3_lut_4_lut (.A(n4917), .B(CmdUFMShift), .C(wb_dati[1]), 
         .D(wb_dati[2]), .Z(n759)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[16:47])
    defparam mux_428_i3_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_2_lut_rep_76 (.A(FS[9]), .B(FS[8]), .Z(n4925)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_76.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_38 (.A(n4893), .B(n4892), .C(InitReady), .D(n4917), 
         .Z(n4513)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;
    defparam i1_3_lut_4_lut_adj_38.init = 16'hf800;
    LUT4 i1_2_lut_rep_56_3_lut (.A(FS[9]), .B(FS[8]), .C(FS[5]), .Z(n4905)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_rep_56_3_lut.init = 16'hefef;
    LUT4 i36_4_lut (.A(n5142), .B(n754), .C(InitReady), .D(n17), .Z(wb_dati_7__N_68[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(359[12] 729[6])
    defparam i36_4_lut.init = 16'hcfca;
    LUT4 mux_428_i4_3_lut_4_lut (.A(n4917), .B(CmdUFMShift), .C(wb_dati[2]), 
         .D(wb_dati[3]), .Z(n758)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[16:47])
    defparam mux_428_i4_3_lut_4_lut.init = 16'hf780;
    LUT4 i2696_4_lut (.A(nRCS_N_179), .B(nRowColSel_N_34), .C(n4916), 
         .D(nRowColSel_N_33), .Z(nRCS_N_175)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C+!(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(187[13] 223[7])
    defparam i2696_4_lut.init = 16'hfcdd;
    LUT4 InitReady_I_0_3_lut (.A(InitReady), .B(RCKEEN_N_153), .C(Ready), 
         .Z(RCKEEN_N_152)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(224[12] 276[6])
    defparam InitReady_I_0_3_lut.init = 16'hcaca;
    LUT4 i2726_2_lut (.A(nRowColSel_N_33), .B(nRowColSel_N_32), .Z(n1286)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(123[13:16])
    defparam i2726_2_lut.init = 16'heeee;
    LUT4 i3795_2_lut (.A(MAin_c_9), .B(nRowColSel), .Z(RDQML_c)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i3795_2_lut.init = 16'h7777;
    LUT4 i95_4_lut (.A(n4894), .B(FS[10]), .C(FS[12]), .D(n4900), .Z(n3711)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(78[13:15])
    defparam i95_4_lut.init = 16'hfec2;
    LUT4 i2684_2_lut (.A(MAin_c_9), .B(nRowColSel), .Z(RDQMH_c)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(57[17:46])
    defparam i2684_2_lut.init = 16'hbbbb;
    LUT4 mux_428_i2_3_lut_4_lut (.A(n4917), .B(CmdUFMShift), .C(wb_dati[0]), 
         .D(wb_dati[1]), .Z(n760)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[16:47])
    defparam mux_428_i2_3_lut_4_lut.init = 16'hf780;
    LUT4 i2_3_lut_4_lut_adj_39 (.A(FS[9]), .B(FS[8]), .C(FS[7]), .D(n4939), 
         .Z(n4149)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_4_lut_adj_39.init = 16'hffef;
    LUT4 mux_428_i7_3_lut_4_lut (.A(n4917), .B(CmdUFMShift), .C(wb_dati[5]), 
         .D(wb_dati[6]), .Z(n755)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[16:47])
    defparam mux_428_i7_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_428_i5_3_lut_4_lut (.A(n4917), .B(CmdUFMShift), .C(wb_dati[3]), 
         .D(wb_dati[4]), .Z(n757)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[16:47])
    defparam mux_428_i5_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_427_i2_3_lut_4_lut (.A(n4917), .B(CmdUFMShift), .C(wb_adr[0]), 
         .D(wb_adr[1]), .Z(n751)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[16:47])
    defparam mux_427_i2_3_lut_4_lut.init = 16'hf780;
    LUT4 MAin_9__I_0_565_i1_3_lut (.A(RowA[0]), .B(MAin_c_0), .C(nRowColSel), 
         .Z(RA_c_0)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(54[19:54])
    defparam MAin_9__I_0_565_i1_3_lut.init = 16'hcaca;
    LUT4 mux_428_i1_3_lut_4_lut (.A(n4917), .B(CmdUFMShift), .C(wb_we), 
         .D(wb_dati[0]), .Z(n761)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(717[16:47])
    defparam mux_428_i1_3_lut_4_lut.init = 16'hf780;
    INV i4008 (.A(PHI2_c), .Z(PHI2_N_151));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(7[8:12])
    INV i4007 (.A(nCRAS_c), .Z(nCRAS_N_9));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo2/ram2gs-lcmxo2.v(15[15:20])
    PFUMX i3913 (.BLUT(n4940), .ALUT(n4941), .C0(FS[9]), .Z(wb_we_N_354));
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

