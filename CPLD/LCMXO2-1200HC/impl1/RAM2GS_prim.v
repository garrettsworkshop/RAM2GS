// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Tue Aug 15 05:03:26 2023
//
// Verilog Description of module RAM2GS
//

module RAM2GS (PHI2, MAin, CROW, Din, Dout, nCCAS, nCRAS, nFWE, 
            LED, RBA, RA, RD, nRCS, RCLK, RCKE, nRWE, nRRAS, 
            nRCAS, RDQMH, RDQML, nUFMCS, UFMCLK, UFMSDI, UFMSDO) /* synthesis syn_module_defined=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(1[8:14])
    input PHI2;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(8[8:12])
    input [9:0]MAin;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(35[14:18])
    input [1:0]CROW;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(34[14:18])
    input [7:0]Din;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(26[14:17])
    output [7:0]Dout;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(27[15:19])
    input nCCAS;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(11[8:13])
    input nCRAS;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(11[15:20])
    input nFWE;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(36[8:12])
    output LED;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(22[9:12])
    output [1:0]RBA;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(47[19:22])
    output [11:0]RA;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(52[16:18])
    inout [7:0]RD;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(60[14:16])
    output nRCS;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(46[13:17])
    input RCLK;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(41[8:12])
    output RCKE;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(45[13:17])
    output nRWE;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(46[45:49])
    output nRRAS;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(46[23:28])
    output nRCAS;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(46[34:39])
    output RDQMH;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(56[16:21])
    output RDQML;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(56[9:14])
    output nUFMCS;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(63[13:19])
    output UFMCLK;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(64[13:19])
    output UFMSDI;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(65[13:19])
    input UFMSDO;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(66[8:14])
    
    wire PHI2_c /* synthesis is_clock=1, SET_AS_NETWORK=PHI2_c */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(8[8:12])
    wire nCCAS_c /* synthesis is_clock=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(11[8:13])
    wire nCRAS_c /* synthesis is_clock=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(11[15:20])
    wire RCLK_c /* synthesis SET_AS_NETWORK=RCLK_c, is_clock=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(41[8:12])
    wire nCCAS_N_3 /* synthesis is_inv_clock=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(27[15:19])
    wire PHI2_N_120 /* synthesis is_inv_clock=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(38[6:13])
    wire nCRAS_c__inv /* synthesis is_inv_clock=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(11[15:20])
    
    wire GND_net, VCC_net, PHI2r, PHI2r2, PHI2r3, RASr, RASr2, 
        RASr3, CASr, CASr2, CASr3, FWEr, CBR, LEDEN, LED_c, 
        Din_c_7, Din_c_6, Din_c_5, Din_c_4, Din_c_3, Din_c_2, Din_c_1, 
        Din_c_0;
    wire [7:0]Bank;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(31[12:16])
    
    wire CROW_c_1, CROW_c_0, MAin_c_9, MAin_c_8, MAin_c_7, MAin_c_6, 
        MAin_c_5, MAin_c_4, MAin_c_3, MAin_c_2, MAin_c_1, MAin_c_0, 
        nFWE_c, n8MEGEN, XOR8MEG, RCKEEN, RCKE_c, nRCS_c, nRRAS_c, 
        nRCAS_c, nRWE_c, RBA_c_1, RBA_c_0, nRowColSel, RA_c, RA_0;
    wire [9:0]RowA;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(51[12:16])
    
    wire RA_1_9, RA_1_8, RA_1_7, RA_1_6, RA_1_5, RA_1_4, RA_1_3, 
        RA_1_2, RA_1_1, RA_1_0, RDQML_c, RDQMH_c;
    wire [7:0]WRD;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(59[12:15])
    
    wire nUFMCS_c, UFMCLK_c, UFMSDI_c, UFMSDO_c, C1Submitted, ADSubmitted, 
        CmdEnable, CmdSubmitted, Cmdn8MEGEN, CmdUFMCLK, CmdUFMSDI, 
        CmdUFMCS, InitReady, Ready, n10;
    wire [17:0]FS;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(86[13:15])
    
    wire RA11_N_184, PHI2_N_120_enable_8, n2036, n1765, n1893, n7, 
        n917, n4, n2277, RCKE_N_132, nRowColSel_N_35, nRWE_N_182, 
        nRowColSel_N_34, nRowColSel_N_33, nRowColSel_N_32, nRCS_N_146, 
        n15, n2260, nRCS_N_142, n2362, nRCS_N_141, nRCAS_N_166, 
        nRWE_N_178, n2180, nRCS_N_139, nRCAS_N_165, nRWE_N_177, nRWE_N_176, 
        n14, n6, n13, n1993, n2254, Ready_N_296, RCLK_c_enable_28, 
        nRCS_N_137, Ready_N_292, nRCS_N_136, nRRAS_N_156, nRCAS_N_161, 
        nRWE_N_171, n2220, RCKEEN_N_121, n15_adj_1, n2371, ADSubmitted_N_246, 
        CmdEnable_N_248, C1Submitted_N_237, PHI2_N_120_enable_3, n2174, 
        n6_adj_2, Cmdn8MEGEN_N_264, XOR8MEG_N_110, n2204, n1996, n6_adj_3, 
        RCLK_c_enable_10, n2191, n2208, n22, n8MEGEN_N_91, UFMCLK_N_224, 
        UFMSDI_N_231, n26, nUFMCS_N_199, n2055, PHI2_N_120_enable_2, 
        n1999, n2287, n726, n727, n728, n729, n730, n732, n733, 
        n734, n735, n736, n737, n738, n2267, n1398, n2183, n1995, 
        PHI2_N_120_enable_1, n1060, n1408, n2228, n2447, n1406, 
        PHI2_N_120_enable_6, n2225, n827, n2370, n1277, n15_adj_4, 
        Dout_c, n78, n79, n80, n81, n82, n83, n84, n85, n86, 
        n87, n88, n89, n90, n91, n92, n93, n94, n95, n2382, 
        RCLK_c_enable_15, n9, n2369, n7_adj_5, n13_adj_6, n2381, 
        n2210, n2380, n2227, n2368, PHI2_N_120_enable_7, n12, n1994, 
        RCLK_c_enable_27, n2367, n1407, n2379, n2378, n2377, n2366, 
        n2365, n2376, n1998, n2375, n4_adj_7, n2374, RCLK_c_enable_6, 
        Dout_0, Dout_1, n984, Dout_2, n8, Dout_3, Dout_4, n1314, 
        Dout_5, Dout_6, RCLK_c_enable_16, n2363, n13_adj_8, n2000, 
        n2373, RCLK_c_enable_5, n1992, n1997, n2372, n64;
    
    VHI i2 (.Z(VCC_net));
    INV i2046 (.A(PHI2_c), .Z(PHI2_N_120));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(8[8:12])
    FD1S3AX PHI2r2_377 (.D(PHI2r), .CK(RCLK_c), .Q(PHI2r2));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(91[9] 95[5])
    defparam PHI2r2_377.GSR = "ENABLED";
    LUT4 nRCAS_I_43_4_lut (.A(nRCS_N_142), .B(RASr2), .C(nRowColSel_N_35), 
         .D(CBR), .Z(nRCAS_N_166)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(186[13] 231[7])
    defparam nRCAS_I_43_4_lut.init = 16'h3afa;
    LUT4 nRCAS_I_0_452_3_lut_4_lut (.A(n2371), .B(nRCAS_N_165), .C(Ready), 
         .D(nRCAS_N_166), .Z(nRCAS_N_161)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(232[12] 284[6])
    defparam nRCAS_I_0_452_3_lut_4_lut.init = 16'hfe0e;
    LUT4 nRWE_I_0_455_4_lut (.A(n1765), .B(nRWE_N_178), .C(Ready), .D(n2371), 
         .Z(nRWE_N_171)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(232[12] 284[6])
    defparam nRWE_I_0_455_4_lut.init = 16'hcfc5;
    FD1S3AX PHI2r3_378 (.D(PHI2r2), .CK(RCLK_c), .Q(PHI2r3));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(91[9] 95[5])
    defparam PHI2r3_378.GSR = "ENABLED";
    FD1S3AX RASr_379 (.D(nCRAS_c__inv), .CK(RCLK_c), .Q(RASr));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(91[9] 95[5])
    defparam RASr_379.GSR = "ENABLED";
    FD1S3AX RASr2_380 (.D(RASr), .CK(RCLK_c), .Q(RASr2));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(91[9] 95[5])
    defparam RASr2_380.GSR = "ENABLED";
    FD1S3AX RASr3_381 (.D(RASr2), .CK(RCLK_c), .Q(RASr3));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(91[9] 95[5])
    defparam RASr3_381.GSR = "ENABLED";
    FD1S3AX CASr_382 (.D(nCCAS_N_3), .CK(RCLK_c), .Q(CASr));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(91[9] 95[5])
    defparam CASr_382.GSR = "ENABLED";
    FD1S3AX CASr2_383 (.D(CASr), .CK(RCLK_c), .Q(CASr2));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(91[9] 95[5])
    defparam CASr2_383.GSR = "ENABLED";
    FD1S3AX CASr3_384 (.D(CASr2), .CK(RCLK_c), .Q(CASr3));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(91[9] 95[5])
    defparam CASr3_384.GSR = "ENABLED";
    FD1S3IX RA11_385 (.D(RA11_N_184), .CK(PHI2_c), .CD(n2380), .Q(RA_c));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(98[9] 102[5])
    defparam RA11_385.GSR = "ENABLED";
    CCU2D FS_610_add_4_15 (.A0(FS[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FS[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1998), 
          .COUT(n1999), .S0(n82), .S1(n81));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_15.INIT0 = 16'hfaaa;
    defparam FS_610_add_4_15.INIT1 = 16'hfaaa;
    defparam FS_610_add_4_15.INJECT1_0 = "NO";
    defparam FS_610_add_4_15.INJECT1_1 = "NO";
    FD1S3IX RowA_i0 (.D(MAin_c_0), .CK(nCRAS_c__inv), .CD(n2380), .Q(RowA[0]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i0.GSR = "ENABLED";
    FD1S3AX WRD_i0 (.D(Din_c_0), .CK(nCCAS_N_3), .Q(WRD[0]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(123[9] 125[5])
    defparam WRD_i0.GSR = "ENABLED";
    FD1S3AX FWEr_389 (.D(n2373), .CK(nCRAS_c__inv), .Q(FWEr));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam FWEr_389.GSR = "ENABLED";
    FD1S3AX CBR_390 (.D(nCCAS_N_3), .CK(nCRAS_c__inv), .Q(CBR));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam CBR_390.GSR = "ENABLED";
    FD1S3AX RCKE_395 (.D(RCKE_N_132), .CK(RCLK_c), .Q(RCKE_c)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(141[9] 144[5])
    defparam RCKE_395.GSR = "ENABLED";
    FD1P3AY nRCS_396 (.D(nRCS_N_136), .SP(RCLK_c_enable_6), .CK(RCLK_c), 
            .Q(nRCS_c)) /* synthesis lse_init_val=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam nRCS_396.GSR = "ENABLED";
    LUT4 i1477_2_lut (.A(nRWE_N_177), .B(nRCAS_N_165), .Z(n1765)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1477_2_lut.init = 16'heeee;
    FD1P3AX nRowColSel_402 (.D(n917), .SP(RCLK_c_enable_5), .CK(RCLK_c), 
            .Q(nRowColSel));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam nRowColSel_402.GSR = "ENABLED";
    CCU2D FS_610_add_4_13 (.A0(FS[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FS[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1997), 
          .COUT(n1998), .S0(n84), .S1(n83));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_13.INIT0 = 16'hfaaa;
    defparam FS_610_add_4_13.INIT1 = 16'hfaaa;
    defparam FS_610_add_4_13.INJECT1_0 = "NO";
    defparam FS_610_add_4_13.INJECT1_1 = "NO";
    LUT4 i2_2_lut (.A(InitReady), .B(Ready_N_296), .Z(n6_adj_3)) /* synthesis lut_function=(A (B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(91[9] 95[5])
    defparam i2_2_lut.init = 16'h8888;
    FD1P3AX CmdEnable_405 (.D(CmdEnable_N_248), .SP(PHI2_N_120_enable_1), 
            .CK(PHI2_N_120), .Q(CmdEnable)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam CmdEnable_405.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(MAin_c_1), .B(MAin_c_0), .C(CmdEnable), .D(n6_adj_2), 
         .Z(n2204)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i4_4_lut.init = 16'h4000;
    FD1P3IX ADSubmitted_407 (.D(ADSubmitted_N_246), .SP(PHI2_N_120_enable_2), 
            .CD(C1Submitted_N_237), .CK(PHI2_N_120), .Q(ADSubmitted)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam ADSubmitted_407.GSR = "ENABLED";
    LUT4 i26_4_lut (.A(n2183), .B(n2191), .C(Din_c_5), .D(n2254), .Z(n15_adj_1)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i26_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n2369), .B(n26), .C(n2204), .D(nFWE_c), 
         .Z(n2220)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0020;
    FD1P3AY nRRAS_397 (.D(nRRAS_N_156), .SP(RCLK_c_enable_6), .CK(RCLK_c), 
            .Q(nRRAS_c)) /* synthesis lse_init_val=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam nRRAS_397.GSR = "ENABLED";
    LUT4 nRWE_I_50_1_lut (.A(nRWE_N_177), .Z(nRWE_N_176)) /* synthesis lut_function=(!(A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(255[14] 262[8])
    defparam nRWE_I_50_1_lut.init = 16'h5555;
    BB Dout_pad_7__713 (.I(WRD[7]), .T(n984), .B(RD[7]), .O(Dout_c));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(60[14:16])
    FD1P3AY nRCAS_398 (.D(nRCAS_N_161), .SP(RCLK_c_enable_6), .CK(RCLK_c), 
            .Q(nRCAS_c)) /* synthesis lse_init_val=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam nRCAS_398.GSR = "ENABLED";
    FD1P3AY nRWE_399 (.D(nRWE_N_171), .SP(RCLK_c_enable_5), .CK(RCLK_c), 
            .Q(nRWE_c)) /* synthesis lse_init_val=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam nRWE_399.GSR = "ENABLED";
    FD1S3JX RA10_400 (.D(n2036), .CK(RCLK_c), .PD(nRWE_N_176), .Q(RA_0));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam RA10_400.GSR = "ENABLED";
    FD1P3AX RCKEEN_401 (.D(RCKEEN_N_121), .SP(RCLK_c_enable_6), .CK(RCLK_c), 
            .Q(RCKEEN));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam RCKEEN_401.GSR = "ENABLED";
    FD1S3AX FS_610__i0 (.D(n95), .CK(RCLK_c), .Q(FS[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i0.GSR = "ENABLED";
    FD1S3IX RBA__i1 (.D(CROW_c_0), .CK(nCRAS_c__inv), .CD(n2380), .Q(RBA_c_0));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RBA__i1.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(Din_c_5), .B(n2220), .C(Din_c_4), .D(Din_c_3), 
         .Z(PHI2_N_120_enable_6)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;
    defparam i1_4_lut.init = 16'hc444;
    LUT4 i29_3_lut (.A(InitReady), .B(n15_adj_4), .C(Ready), .Z(RCKEEN_N_121)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(232[12] 284[6])
    defparam i29_3_lut.init = 16'hcaca;
    LUT4 Cmdn8MEGEN_I_93_4_lut (.A(Din_c_0), .B(n8MEGEN), .C(Din_c_4), 
         .D(n1314), .Z(Cmdn8MEGEN_N_264)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B+!((D)+!C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(321[13] 335[7])
    defparam Cmdn8MEGEN_I_93_4_lut.init = 16'hcc5c;
    LUT4 i1956_2_lut (.A(MAin_c_0), .B(Din_c_2), .Z(n2254)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1956_2_lut.init = 16'heeee;
    FD1P3AX IS_FSM__i0 (.D(Ready_N_296), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(nRCS_N_139));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i0.GSR = "ENABLED";
    CCU2D FS_610_add_4_9 (.A0(FS[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FS[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1995), 
          .COUT(n1996), .S0(n88), .S1(n87));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_9.INIT0 = 16'hfaaa;
    defparam FS_610_add_4_9.INIT1 = 16'hfaaa;
    defparam FS_610_add_4_9.INJECT1_0 = "NO";
    defparam FS_610_add_4_9.INJECT1_1 = "NO";
    FD1S3JX C1Submitted_406 (.D(n1398), .CK(PHI2_N_120), .PD(C1Submitted_N_237), 
            .Q(C1Submitted)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam C1Submitted_406.GSR = "ENABLED";
    FD1P3AY nUFMCS_415 (.D(nUFMCS_N_199), .SP(RCLK_c_enable_10), .CK(RCLK_c), 
            .Q(nUFMCS_c)) /* synthesis lse_init_val=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(340[9] 410[5])
    defparam nUFMCS_415.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(n2220), .B(Din_c_4), .C(Din_c_3), .D(Din_c_5), 
         .Z(PHI2_N_120_enable_7)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam i2_4_lut.init = 16'h8088;
    FD1S3AX S_FSM_i1 (.D(n2374), .CK(RCLK_c), .Q(nRowColSel_N_35));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam S_FSM_i1.GSR = "ENABLED";
    CCU2D FS_610_add_4_7 (.A0(FS[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FS[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1994), 
          .COUT(n1995), .S0(n90), .S1(n89));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_7.INIT0 = 16'hfaaa;
    defparam FS_610_add_4_7.INIT1 = 16'hfaaa;
    defparam FS_610_add_4_7.INJECT1_0 = "NO";
    defparam FS_610_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(Din_c_6), .B(Din_c_3), .Z(n2183)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_rep_15_4_lut (.A(FS[10]), .B(FS[11]), .C(n2368), .D(InitReady), 
         .Z(RCLK_c_enable_16)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_15_4_lut.init = 16'h0008;
    CCU2D FS_610_add_4_3 (.A0(FS[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FS[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1992), 
          .COUT(n1993), .S0(n94), .S1(n93));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_3.INIT0 = 16'hfaaa;
    defparam FS_610_add_4_3.INIT1 = 16'hfaaa;
    defparam FS_610_add_4_3.INJECT1_0 = "NO";
    defparam FS_610_add_4_3.INJECT1_1 = "NO";
    LUT4 RA11_I_54_3_lut (.A(Din_c_6), .B(XOR8MEG), .C(n8MEGEN), .Z(RA11_N_184)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(99[22:51])
    defparam RA11_I_54_3_lut.init = 16'hc6c6;
    LUT4 i9_2_lut_3_lut (.A(FWEr), .B(CBR), .C(RASr2), .Z(n9)) /* synthesis lut_function=(!(A (C)+!A (B (C)))) */ ;
    defparam i9_2_lut_3_lut.init = 16'h1f1f;
    LUT4 i1491_2_lut_rep_30 (.A(RCKE_c), .B(RASr2), .Z(n2379)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1491_2_lut_rep_30.init = 16'heeee;
    LUT4 nRCS_I_31_3_lut_4_lut (.A(RCKE_c), .B(RASr2), .C(nRowColSel_N_35), 
         .D(nRCS_N_142), .Z(nRCS_N_141)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam nRCS_I_31_3_lut_4_lut.init = 16'h1f10;
    FD1P3IX UFMCLK_416 (.D(UFMCLK_N_224), .SP(RCLK_c_enable_10), .CD(n2366), 
            .CK(RCLK_c), .Q(UFMCLK_c)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(340[9] 410[5])
    defparam UFMCLK_416.GSR = "ENABLED";
    LUT4 MAin_9__I_0_427_i10_3_lut (.A(RowA[9]), .B(MAin_c_9), .C(nRowColSel), 
         .Z(RA_1_9)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i10_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut (.A(Din_c_2), .B(Din_c_3), .C(Din_c_6), .D(MAin_c_0), 
         .Z(n2191)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_21_3_lut (.A(Din_c_7), .B(Din_c_1), .C(Din_c_0), 
         .Z(n2370)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(309[7:24])
    defparam i1_2_lut_rep_21_3_lut.init = 16'h2020;
    LUT4 MAin_9__I_0_427_i9_3_lut (.A(RowA[8]), .B(MAin_c_8), .C(nRowColSel), 
         .Z(RA_1_8)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i9_3_lut.init = 16'hcaca;
    LUT4 MAin_9__I_0_427_i8_3_lut (.A(RowA[7]), .B(MAin_c_7), .C(nRowColSel), 
         .Z(RA_1_7)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i8_3_lut.init = 16'hcaca;
    LUT4 MAin_9__I_0_427_i7_3_lut (.A(RowA[6]), .B(MAin_c_6), .C(nRowColSel), 
         .Z(RA_1_6)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i7_3_lut.init = 16'hcaca;
    LUT4 MAin_9__I_0_427_i6_3_lut (.A(RowA[5]), .B(MAin_c_5), .C(nRowColSel), 
         .Z(RA_1_5)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i6_3_lut.init = 16'hcaca;
    CCU2D FS_610_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FS[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1992), 
          .S1(n95));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_1.INIT0 = 16'hF000;
    defparam FS_610_add_4_1.INIT1 = 16'h0555;
    defparam FS_610_add_4_1.INJECT1_0 = "NO";
    defparam FS_610_add_4_1.INJECT1_1 = "NO";
    LUT4 MAin_9__I_0_427_i5_3_lut (.A(RowA[4]), .B(MAin_c_4), .C(nRowColSel), 
         .Z(RA_1_4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i5_3_lut.init = 16'hcaca;
    FD1S3AX PHI2r_376 (.D(PHI2_c), .CK(RCLK_c), .Q(PHI2r));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(91[9] 95[5])
    defparam PHI2r_376.GSR = "ENABLED";
    LUT4 i1962_4_lut (.A(Din_c_4), .B(Din_c_1), .C(n1314), .D(LEDEN), 
         .Z(n2260)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1962_4_lut.init = 16'hfefa;
    LUT4 i1423_2_lut (.A(RCKE_c), .B(RASr2), .Z(nRWE_N_182)) /* synthesis lut_function=((B)+!A) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(168[14] 184[8])
    defparam i1423_2_lut.init = 16'hdddd;
    LUT4 MAin_9__I_0_427_i4_3_lut (.A(RowA[3]), .B(MAin_c_3), .C(nRowColSel), 
         .Z(RA_1_3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i4_3_lut.init = 16'hcaca;
    FD1S3IX S_FSM_i3 (.D(n1406), .CK(RCLK_c), .CD(n1407), .Q(nRowColSel_N_33));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam S_FSM_i3.GSR = "ENABLED";
    FD1S3IX S_FSM_i4 (.D(n827), .CK(RCLK_c), .CD(n2374), .Q(nRowColSel_N_32));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam S_FSM_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_1 (.A(Din_c_7), .B(Din_c_1), .C(Din_c_4), 
         .D(Din_c_0), .Z(n2208)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(309[7:24])
    defparam i1_2_lut_3_lut_4_lut_adj_1.init = 16'h0200;
    LUT4 MAin_c_0_bdd_4_lut (.A(n2369), .B(n26), .C(nFWE_c), .D(MAin_c_1), 
         .Z(PHI2_N_120_enable_2)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam MAin_c_0_bdd_4_lut.init = 16'h0200;
    FD1P3IX UFMSDI_417 (.D(UFMSDI_N_231), .SP(RCLK_c_enable_10), .CD(n2366), 
            .CK(RCLK_c), .Q(UFMSDI_c)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(340[9] 410[5])
    defparam UFMSDI_417.GSR = "ENABLED";
    LUT4 MAin_9__I_0_427_i3_3_lut (.A(RowA[2]), .B(MAin_c_2), .C(nRowColSel), 
         .Z(RA_1_2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i3_3_lut.init = 16'hcaca;
    LUT4 MAin_9__I_0_427_i2_3_lut (.A(RowA[1]), .B(MAin_c_1), .C(nRowColSel), 
         .Z(RA_1_1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i2_3_lut.init = 16'hcaca;
    LUT4 i1448_4_lut (.A(n13_adj_6), .B(n64), .C(CmdUFMCS), .D(InitReady), 
         .Z(nUFMCS_N_199)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (C+!(D))))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(345[12] 409[6])
    defparam i1448_4_lut.init = 16'h3fbb;
    LUT4 i2_3_lut_rep_18_4_lut (.A(n10), .B(n2375), .C(FS[11]), .D(FS[10]), 
         .Z(n2367)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_rep_18_4_lut.init = 16'h1000;
    LUT4 i3_4_lut_adj_2 (.A(nRCS_N_139), .B(InitReady), .C(nRowColSel_N_35), 
         .D(RASr2), .Z(nRCS_N_137)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i3_4_lut_adj_2.init = 16'hbfff;
    LUT4 MAin_9__I_0_427_i1_3_lut (.A(RowA[0]), .B(MAin_c_0), .C(nRowColSel), 
         .Z(RA_1_0)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i1_3_lut.init = 16'hcaca;
    LUT4 i1416_2_lut (.A(MAin_c_9), .B(nRowColSel), .Z(RDQMH_c)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(58[17:46])
    defparam i1416_2_lut.init = 16'hbbbb;
    LUT4 i2001_2_lut (.A(MAin_c_9), .B(nRowColSel), .Z(RDQML_c)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i2001_2_lut.init = 16'h7777;
    LUT4 i2_3_lut_4_lut (.A(n2363), .B(MAin_c_1), .C(n2208), .D(n15_adj_1), 
         .Z(CmdEnable_N_248)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h4000;
    LUT4 i2005_3_lut_rep_17_4_lut (.A(n10), .B(n2375), .C(InitReady), 
         .D(FS[11]), .Z(n2366)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2005_3_lut_rep_17_4_lut.init = 16'h0001;
    FD1S3AX Bank_i0 (.D(Din_c_0), .CK(PHI2_c), .Q(Bank[0]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(98[9] 102[5])
    defparam Bank_i0.GSR = "ENABLED";
    LUT4 i1427_4_lut (.A(nRCS_N_146), .B(nRowColSel_N_34), .C(n2378), 
         .D(nRowColSel_N_33), .Z(nRCS_N_142)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C+!(D)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(195[13] 231[7])
    defparam i1427_4_lut.init = 16'hfcdd;
    LUT4 i3_3_lut_4_lut (.A(Din_c_7), .B(Din_c_1), .C(Din_c_6), .D(Din_c_4), 
         .Z(n8)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(309[7:24])
    defparam i3_3_lut_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_adj_3 (.A(FS[10]), .B(n13_adj_6), .Z(RCLK_c_enable_28)) /* synthesis lut_function=(A (B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i1_2_lut_adj_3.init = 16'h8888;
    LUT4 i1119_1_lut (.A(nRowColSel_N_35), .Z(n1408)) /* synthesis lut_function=(!(A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam i1119_1_lut.init = 16'h5555;
    LUT4 nRCS_N_146_bdd_4_lut (.A(nRCS_N_146), .B(n1060), .C(nRWE_N_182), 
         .D(nRowColSel_N_35), .Z(nRWE_N_178)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C+!(D))) */ ;
    defparam nRCS_N_146_bdd_4_lut.init = 16'hf0dd;
    LUT4 i11_3_lut_rep_20 (.A(MAin_c_2), .B(n22), .C(MAin_c_5), .Z(n2369)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i11_3_lut_rep_20.init = 16'h8080;
    LUT4 i13_2_lut_rep_16_4_lut (.A(MAin_c_2), .B(n22), .C(MAin_c_5), 
         .D(n26), .Z(n2365)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i13_2_lut_rep_16_4_lut.init = 16'hff7f;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i1_4_lut_adj_4 (.A(n2180), .B(n2225), .C(n8), .D(n2382), .Z(ADSubmitted_N_246)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(309[7:24])
    defparam i1_4_lut_adj_4.init = 16'h2000;
    LUT4 i6_4_lut (.A(FS[11]), .B(n12), .C(FS[14]), .D(FS[17]), .Z(n13_adj_6)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i8_4_lut (.A(MAin_c_7), .B(MAin_c_3), .C(Bank[4]), .D(Bank[1]), 
         .Z(n22)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_5 (.A(n2369), .B(n26), .C(MAin_c_0), 
         .D(MAin_c_1), .Z(n2225)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_5.init = 16'hdfff;
    LUT4 i5_4_lut (.A(FS[13]), .B(FS[12]), .C(FS[15]), .D(FS[16]), .Z(n12)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i5_4_lut.init = 16'h8000;
    LUT4 i12_4_lut (.A(Bank[2]), .B(n2277), .C(n2287), .D(Bank[5]), 
         .Z(n26)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'hbfff;
    LUT4 i2_3_lut_4_lut_adj_6 (.A(n2369), .B(n26), .C(MAin_c_0), .D(MAin_c_1), 
         .Z(n1277)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_3_lut_4_lut_adj_6.init = 16'hffdf;
    LUT4 i637_1_lut_rep_31 (.A(Ready), .Z(n2380)) /* synthesis lut_function=(!(A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam i637_1_lut_rep_31.init = 16'h5555;
    LUT4 i1573_4_lut (.A(n2367), .B(n2377), .C(InitReady), .D(n4_adj_7), 
         .Z(RCLK_c_enable_15)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(83[6:15])
    defparam i1573_4_lut.init = 16'hcac0;
    LUT4 i3_4_lut_adj_7 (.A(FS[17]), .B(FS[13]), .C(FS[15]), .D(FS[16]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i3_4_lut_adj_7.init = 16'hfffe;
    LUT4 i786_2_lut (.A(nRowColSel_N_33), .B(nRowColSel_N_34), .Z(n1060)) /* synthesis lut_function=(A+(B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(195[13] 231[7])
    defparam i786_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_8 (.A(FS[4]), .B(n15), .C(n13), .D(n14), .Z(n4_adj_7)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_8.init = 16'h0002;
    LUT4 i2_2_lut_3_lut_4_lut (.A(nRCS_N_139), .B(n2381), .C(Ready), .D(nRCAS_N_165), 
         .Z(n2036)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 i2_3_lut_4_lut_4_lut (.A(Ready), .B(n1060), .C(nRowColSel_N_32), 
         .D(nRowColSel_N_35), .Z(RCLK_c_enable_5)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hfffd;
    CCU2D FS_610_add_4_11 (.A0(FS[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FS[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1996), 
          .COUT(n1997), .S0(n86), .S1(n85));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_11.INIT0 = 16'hfaaa;
    defparam FS_610_add_4_11.INIT1 = 16'hfaaa;
    defparam FS_610_add_4_11.INJECT1_0 = "NO";
    defparam FS_610_add_4_11.INJECT1_1 = "NO";
    LUT4 i1603_3_lut (.A(n1893), .B(CmdUFMCLK), .C(InitReady), .Z(UFMCLK_N_224)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(83[6:15])
    defparam i1603_3_lut.init = 16'hcaca;
    LUT4 i1979_4_lut (.A(MAin_c_6), .B(MAin_c_4), .C(Bank[7]), .D(Bank[0]), 
         .Z(n2277)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1979_4_lut.init = 16'h8000;
    FD1P3AX IS_FSM__i15 (.D(n726), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(Ready_N_296));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i15.GSR = "ENABLED";
    LUT4 i771_2_lut_rep_23_2_lut (.A(Ready), .B(nRowColSel_N_35), .Z(n2372)) /* synthesis lut_function=((B)+!A) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam i771_2_lut_rep_23_2_lut.init = 16'hdddd;
    LUT4 i6_4_lut_adj_9 (.A(FS[5]), .B(FS[7]), .C(FS[1]), .D(FS[2]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_9.init = 16'hfffe;
    LUT4 i1970_4_lut (.A(FS[4]), .B(n13_adj_6), .C(n2267), .D(FS[1]), 
         .Z(n1893)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(86[13:15])
    defparam i1970_4_lut.init = 16'h3a0a;
    LUT4 i1_2_lut_2_lut (.A(Ready), .B(nRowColSel_N_34), .Z(n6)) /* synthesis lut_function=((B)+!A) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    PFUMX i30 (.BLUT(n13_adj_8), .ALUT(n9), .C0(nRowColSel_N_35), .Z(n15_adj_4));
    FD1P3AX IS_FSM__i14 (.D(n727), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n726));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i14.GSR = "ENABLED";
    FD1P3AX IS_FSM__i13 (.D(n728), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n727));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i13.GSR = "ENABLED";
    LUT4 i1989_2_lut (.A(Bank[6]), .B(Bank[3]), .Z(n2287)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1989_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_rep_32 (.A(RASr2), .B(InitReady), .C(nRowColSel_N_35), 
         .Z(n2381)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(233[8:20])
    defparam i2_3_lut_rep_32.init = 16'h8080;
    LUT4 i1_2_lut_rep_22_4_lut (.A(RASr2), .B(InitReady), .C(nRowColSel_N_35), 
         .D(nRCS_N_139), .Z(n2371)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(233[8:20])
    defparam i1_2_lut_rep_22_4_lut.init = 16'hff7f;
    FD1P3AX IS_FSM__i12 (.D(n729), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n728));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i12.GSR = "ENABLED";
    FD1P3AX XOR8MEG_408 (.D(XOR8MEG_N_110), .SP(PHI2_N_120_enable_3), .CK(PHI2_N_120), 
            .Q(XOR8MEG)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam XOR8MEG_408.GSR = "ENABLED";
    FD1P3AX n8MEGEN_418 (.D(n8MEGEN_N_91), .SP(RCLK_c_enable_15), .CK(RCLK_c), 
            .Q(n8MEGEN)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(340[9] 410[5])
    defparam n8MEGEN_418.GSR = "ENABLED";
    CCU2D FS_610_add_4_19 (.A0(FS[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2000), 
          .S0(n78));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_19.INIT0 = 16'hfaaa;
    defparam FS_610_add_4_19.INIT1 = 16'h0000;
    defparam FS_610_add_4_19.INJECT1_0 = "NO";
    defparam FS_610_add_4_19.INJECT1_1 = "NO";
    FD1P3AX LEDEN_419 (.D(n2447), .SP(RCLK_c_enable_16), .CK(RCLK_c), 
            .Q(LEDEN)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(340[9] 410[5])
    defparam LEDEN_419.GSR = "ENABLED";
    FD1P3AX Ready_404 (.D(n2447), .SP(Ready_N_292), .CK(RCLK_c), .Q(Ready)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam Ready_404.GSR = "ENABLED";
    FD1P3AX CmdUFMCLK_413 (.D(Din_c_1), .SP(PHI2_N_120_enable_8), .CK(PHI2_N_120), 
            .Q(CmdUFMCLK)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam CmdUFMCLK_413.GSR = "ENABLED";
    FD1P3AX CmdUFMSDI_414 (.D(Din_c_0), .SP(PHI2_N_120_enable_8), .CK(PHI2_N_120), 
            .Q(CmdUFMSDI)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam CmdUFMSDI_414.GSR = "ENABLED";
    FD1P3AX Cmdn8MEGEN_410 (.D(Cmdn8MEGEN_N_264), .SP(PHI2_N_120_enable_6), 
            .CK(PHI2_N_120), .Q(Cmdn8MEGEN)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam Cmdn8MEGEN_410.GSR = "ENABLED";
    FD1P3AX CmdSubmitted_411 (.D(n2447), .SP(PHI2_N_120_enable_7), .CK(PHI2_N_120), 
            .Q(CmdSubmitted)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam CmdSubmitted_411.GSR = "ENABLED";
    FD1P3AX CmdUFMCS_412 (.D(Din_c_2), .SP(PHI2_N_120_enable_8), .CK(PHI2_N_120), 
            .Q(CmdUFMCS)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam CmdUFMCS_412.GSR = "ENABLED";
    FD1P3AX IS_FSM__i11 (.D(n730), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n729));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i11.GSR = "ENABLED";
    LUT4 i2008_2_lut_4_lut (.A(RASr2), .B(InitReady), .C(nRowColSel_N_35), 
         .D(Ready), .Z(RCLK_c_enable_27)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(233[8:20])
    defparam i2008_2_lut_4_lut.init = 16'h0080;
    LUT4 i1404_4_lut (.A(RASr), .B(RCKEEN), .C(RASr2), .D(RASr3), .Z(RCKE_N_132)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(15[12:17])
    defparam i1404_4_lut.init = 16'hcfc8;
    LUT4 i1118_1_lut (.A(nRowColSel_N_34), .Z(n1407)) /* synthesis lut_function=(!(A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam i1118_1_lut.init = 16'h5555;
    FD1P3AX IS_FSM__i10 (.D(nRWE_N_177), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n730));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i10.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_10 (.A(RASr2), .B(nRowColSel_N_32), .Z(n1406)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(91[9] 95[5])
    defparam i1_2_lut_adj_10.init = 16'h2222;
    LUT4 i1439_2_lut (.A(nRowColSel_N_33), .B(nRowColSel_N_32), .Z(n827)) /* synthesis lut_function=(A+(B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam i1439_2_lut.init = 16'heeee;
    FD1P3AX IS_FSM__i9 (.D(n732), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(nRWE_N_177));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i9.GSR = "ENABLED";
    LUT4 i1432_4_lut (.A(FWEr), .B(n2372), .C(n1060), .D(n2376), .Z(n917)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam i1432_4_lut.init = 16'h3032;
    LUT4 i1_2_lut_rep_33 (.A(Din_c_0), .B(Din_c_2), .Z(n2382)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_33.init = 16'h8888;
    LUT4 i1_4_lut_4_lut (.A(CBR), .B(n2227), .C(FWEr), .D(nRowColSel_N_34), 
         .Z(n13_adj_8)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (D)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(23[27:31])
    defparam i1_4_lut_4_lut.init = 16'h5540;
    LUT4 i4_2_lut (.A(FS[8]), .B(FS[0]), .Z(n13)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i1589_4_lut (.A(n2174), .B(CmdUFMSDI), .C(InitReady), .D(n4), 
         .Z(UFMSDI_N_231)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(83[6:15])
    defparam i1589_4_lut.init = 16'hcac0;
    LUT4 i2_1_lut_rep_24 (.A(nFWE_c), .Z(n2373)) /* synthesis lut_function=(!(A)) */ ;
    defparam i2_1_lut_rep_24.init = 16'h5555;
    LUT4 i2_3_lut_4_lut_adj_11 (.A(Din_c_0), .B(Din_c_2), .C(n2260), .D(Din_c_3), 
         .Z(XOR8MEG_N_110)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_11.init = 16'h0008;
    FD1P3AX IS_FSM__i8 (.D(n733), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n732));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i8.GSR = "ENABLED";
    FD1P3AX IS_FSM__i7 (.D(n734), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n733));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i7.GSR = "ENABLED";
    FD1P3AX IS_FSM__i6 (.D(n735), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n734));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i6.GSR = "ENABLED";
    FD1P3AX IS_FSM__i5 (.D(n736), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n735));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i5.GSR = "ENABLED";
    FD1P3AX IS_FSM__i4 (.D(n737), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n736));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i4.GSR = "ENABLED";
    FD1P3AX IS_FSM__i3 (.D(n738), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n737));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i3.GSR = "ENABLED";
    FD1P3AX IS_FSM__i2 (.D(nRCAS_N_165), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(n738));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i2.GSR = "ENABLED";
    FD1P3AX IS_FSM__i1 (.D(nRCS_N_139), .SP(RCLK_c_enable_27), .CK(RCLK_c), 
            .Q(nRCAS_N_165));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i1.GSR = "ENABLED";
    FD1S3IX RBA__i2 (.D(CROW_c_1), .CK(nCRAS_c__inv), .CD(n2380), .Q(RBA_c_1));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RBA__i2.GSR = "ENABLED";
    FD1S3AX FS_610__i17 (.D(n78), .CK(RCLK_c), .Q(FS[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i17.GSR = "ENABLED";
    FD1S3AX FS_610__i16 (.D(n79), .CK(RCLK_c), .Q(FS[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i16.GSR = "ENABLED";
    FD1S3AX FS_610__i15 (.D(n80), .CK(RCLK_c), .Q(FS[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i15.GSR = "ENABLED";
    FD1S3AX FS_610__i14 (.D(n81), .CK(RCLK_c), .Q(FS[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i14.GSR = "ENABLED";
    FD1S3AX FS_610__i13 (.D(n82), .CK(RCLK_c), .Q(FS[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i13.GSR = "ENABLED";
    FD1S3AX FS_610__i12 (.D(n83), .CK(RCLK_c), .Q(FS[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i12.GSR = "ENABLED";
    FD1S3AX FS_610__i11 (.D(n84), .CK(RCLK_c), .Q(FS[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i11.GSR = "ENABLED";
    FD1S3AX FS_610__i10 (.D(n85), .CK(RCLK_c), .Q(FS[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i10.GSR = "ENABLED";
    FD1S3AX FS_610__i9 (.D(n86), .CK(RCLK_c), .Q(FS[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i9.GSR = "ENABLED";
    FD1S3AX FS_610__i8 (.D(n87), .CK(RCLK_c), .Q(FS[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i8.GSR = "ENABLED";
    FD1S3AX FS_610__i7 (.D(n88), .CK(RCLK_c), .Q(FS[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i7.GSR = "ENABLED";
    FD1S3AX FS_610__i6 (.D(n89), .CK(RCLK_c), .Q(FS[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i6.GSR = "ENABLED";
    FD1S3AX FS_610__i5 (.D(n90), .CK(RCLK_c), .Q(FS[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i5.GSR = "ENABLED";
    FD1S3AX FS_610__i4 (.D(n91), .CK(RCLK_c), .Q(FS[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i4.GSR = "ENABLED";
    FD1S3AX FS_610__i3 (.D(n92), .CK(RCLK_c), .Q(FS[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i3.GSR = "ENABLED";
    FD1S3AX FS_610__i2 (.D(n93), .CK(RCLK_c), .Q(FS[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i2.GSR = "ENABLED";
    FD1S3AX FS_610__i1 (.D(n94), .CK(RCLK_c), .Q(FS[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i1.GSR = "ENABLED";
    FD1S3AX WRD_i7 (.D(Din_c_7), .CK(nCCAS_N_3), .Q(WRD[7]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(123[9] 125[5])
    defparam WRD_i7.GSR = "ENABLED";
    FD1S3AX WRD_i6 (.D(Din_c_6), .CK(nCCAS_N_3), .Q(WRD[6]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(123[9] 125[5])
    defparam WRD_i6.GSR = "ENABLED";
    FD1S3AX WRD_i5 (.D(Din_c_5), .CK(nCCAS_N_3), .Q(WRD[5]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(123[9] 125[5])
    defparam WRD_i5.GSR = "ENABLED";
    FD1S3AX WRD_i4 (.D(Din_c_4), .CK(nCCAS_N_3), .Q(WRD[4]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(123[9] 125[5])
    defparam WRD_i4.GSR = "ENABLED";
    FD1S3AX WRD_i3 (.D(Din_c_3), .CK(nCCAS_N_3), .Q(WRD[3]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(123[9] 125[5])
    defparam WRD_i3.GSR = "ENABLED";
    FD1S3AX WRD_i2 (.D(Din_c_2), .CK(nCCAS_N_3), .Q(WRD[2]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(123[9] 125[5])
    defparam WRD_i2.GSR = "ENABLED";
    FD1S3AX WRD_i1 (.D(Din_c_1), .CK(nCCAS_N_3), .Q(WRD[1]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(123[9] 125[5])
    defparam WRD_i1.GSR = "ENABLED";
    FD1S3JX RowA_i9 (.D(MAin_c_9), .CK(nCRAS_c__inv), .PD(n2380), .Q(RowA[9]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i9.GSR = "ENABLED";
    FD1S3IX RowA_i8 (.D(MAin_c_8), .CK(nCRAS_c__inv), .CD(n2380), .Q(RowA[8]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i8.GSR = "ENABLED";
    FD1S3IX RowA_i7 (.D(MAin_c_7), .CK(nCRAS_c__inv), .CD(n2380), .Q(RowA[7]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i7.GSR = "ENABLED";
    FD1S3IX RowA_i6 (.D(MAin_c_6), .CK(nCRAS_c__inv), .CD(n2380), .Q(RowA[6]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i6.GSR = "ENABLED";
    FD1S3JX RowA_i5 (.D(MAin_c_5), .CK(nCRAS_c__inv), .PD(n2380), .Q(RowA[5]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i5.GSR = "ENABLED";
    FD1S3IX RowA_i4 (.D(MAin_c_4), .CK(nCRAS_c__inv), .CD(n2380), .Q(RowA[4]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i4.GSR = "ENABLED";
    FD1S3IX RowA_i3 (.D(MAin_c_3), .CK(nCRAS_c__inv), .CD(n2380), .Q(RowA[3]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i3.GSR = "ENABLED";
    FD1S3IX RowA_i2 (.D(MAin_c_2), .CK(nCRAS_c__inv), .CD(n2380), .Q(RowA[2]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i2.GSR = "ENABLED";
    FD1S3IX RowA_i1 (.D(MAin_c_1), .CK(nCRAS_c__inv), .CD(n2380), .Q(RowA[1]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i1.GSR = "ENABLED";
    FD1S3AX Bank_i7 (.D(Din_c_7), .CK(PHI2_c), .Q(Bank[7]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(98[9] 102[5])
    defparam Bank_i7.GSR = "ENABLED";
    LUT4 i2_3_lut_3_lut (.A(nFWE_c), .B(Din_c_5), .C(Din_c_3), .Z(n2180)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut (.A(Din_c_6), .B(Din_c_7), .C(Din_c_4), .Z(n6_adj_2)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(315[17:31])
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 RASr2_I_0_1_lut_rep_25 (.A(RASr2), .Z(n2374)) /* synthesis lut_function=(!(A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(143[40:46])
    defparam RASr2_I_0_1_lut_rep_25.init = 16'h5555;
    LUT4 i1_4_lut_4_lut_adj_12 (.A(RASr2), .B(n6_adj_3), .C(nRowColSel_N_32), 
         .D(Ready), .Z(Ready_N_292)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(143[40:46])
    defparam i1_4_lut_4_lut_adj_12.init = 16'hff40;
    LUT4 i1_4_lut_adj_13 (.A(Din_c_2), .B(n2055), .C(MAin_c_0), .D(n2362), 
         .Z(C1Submitted_N_237)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_13.init = 16'h0004;
    FD1S3AX Bank_i6 (.D(Din_c_6), .CK(PHI2_c), .Q(Bank[6]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(98[9] 102[5])
    defparam Bank_i6.GSR = "ENABLED";
    FD1S3AX Bank_i5 (.D(Din_c_5), .CK(PHI2_c), .Q(Bank[5]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(98[9] 102[5])
    defparam Bank_i5.GSR = "ENABLED";
    FD1S3AX Bank_i4 (.D(Din_c_4), .CK(PHI2_c), .Q(Bank[4]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(98[9] 102[5])
    defparam Bank_i4.GSR = "ENABLED";
    FD1S3AX Bank_i3 (.D(Din_c_3), .CK(PHI2_c), .Q(Bank[3]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(98[9] 102[5])
    defparam Bank_i3.GSR = "ENABLED";
    FD1S3AX Bank_i2 (.D(Din_c_2), .CK(PHI2_c), .Q(Bank[2]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(98[9] 102[5])
    defparam Bank_i2.GSR = "ENABLED";
    FD1S3AX Bank_i1 (.D(Din_c_1), .CK(PHI2_c), .Q(Bank[1]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(98[9] 102[5])
    defparam Bank_i1.GSR = "ENABLED";
    CCU2D FS_610_add_4_5 (.A0(FS[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FS[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1993), 
          .COUT(n1994), .S0(n92), .S1(n91));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_5.INIT0 = 16'hfaaa;
    defparam FS_610_add_4_5.INIT1 = 16'hfaaa;
    defparam FS_610_add_4_5.INJECT1_0 = "NO";
    defparam FS_610_add_4_5.INJECT1_1 = "NO";
    BB Dout_pad_6__714 (.I(WRD[6]), .T(n984), .B(RD[6]), .O(Dout_0));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(60[14:16])
    LUT4 i2_3_lut_4_lut_adj_14 (.A(n2369), .B(n26), .C(n2180), .D(n2204), 
         .Z(PHI2_N_120_enable_8)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_14.init = 16'h2000;
    BB Dout_pad_5__715 (.I(WRD[5]), .T(n984), .B(RD[5]), .O(Dout_1));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(60[14:16])
    BB Dout_pad_4__716 (.I(WRD[4]), .T(n984), .B(RD[4]), .O(Dout_2));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(60[14:16])
    BB Dout_pad_3__717 (.I(WRD[3]), .T(n984), .B(RD[3]), .O(Dout_3));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(60[14:16])
    BB Dout_pad_2__718 (.I(WRD[2]), .T(n984), .B(RD[2]), .O(Dout_4));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(60[14:16])
    LUT4 i1_2_lut_3_lut_adj_15 (.A(Din_c_6), .B(Din_c_7), .C(Din_c_5), 
         .Z(n1314)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(315[17:31])
    defparam i1_2_lut_3_lut_adj_15.init = 16'hfefe;
    BB Dout_pad_1__719 (.I(WRD[1]), .T(n984), .B(RD[1]), .O(Dout_5));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(60[14:16])
    BB Dout_pad_0__720 (.I(WRD[0]), .T(n984), .B(RD[0]), .O(Dout_6));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(60[14:16])
    OB Dout_pad_7 (.I(Dout_c), .O(Dout[7]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(27[15:19])
    OB Dout_pad_6 (.I(Dout_0), .O(Dout[6]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(27[15:19])
    OB Dout_pad_5 (.I(Dout_1), .O(Dout[5]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(27[15:19])
    OB Dout_pad_4 (.I(Dout_2), .O(Dout[4]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(27[15:19])
    OB Dout_pad_3 (.I(Dout_3), .O(Dout[3]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(27[15:19])
    OB Dout_pad_2 (.I(Dout_4), .O(Dout[2]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(27[15:19])
    OB Dout_pad_1 (.I(Dout_5), .O(Dout[1]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(27[15:19])
    OB Dout_pad_0 (.I(Dout_6), .O(Dout[0]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(27[15:19])
    OB LED_pad (.I(LED_c), .O(LED));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(22[9:12])
    OB RBA_pad_1 (.I(RBA_c_1), .O(RBA[1]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(47[19:22])
    OB RBA_pad_0 (.I(RBA_c_0), .O(RBA[0]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(47[19:22])
    OB RA_pad_11 (.I(RA_c), .O(RA[11]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(52[16:18])
    OB RA_pad_10 (.I(RA_0), .O(RA[10]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(52[16:18])
    OB RA_pad_9 (.I(RA_1_9), .O(RA[9]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(52[16:18])
    OB RA_pad_8 (.I(RA_1_8), .O(RA[8]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(52[16:18])
    OB RA_pad_7 (.I(RA_1_7), .O(RA[7]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(52[16:18])
    OB RA_pad_6 (.I(RA_1_6), .O(RA[6]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(52[16:18])
    OB RA_pad_5 (.I(RA_1_5), .O(RA[5]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(52[16:18])
    OB RA_pad_4 (.I(RA_1_4), .O(RA[4]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(52[16:18])
    OB RA_pad_3 (.I(RA_1_3), .O(RA[3]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(52[16:18])
    OB RA_pad_2 (.I(RA_1_2), .O(RA[2]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(52[16:18])
    OB RA_pad_1 (.I(RA_1_1), .O(RA[1]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(52[16:18])
    OB RA_pad_0 (.I(RA_1_0), .O(RA[0]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(52[16:18])
    OB nRCS_pad (.I(nRCS_c), .O(nRCS));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(46[13:17])
    OB RCKE_pad (.I(RCKE_c), .O(RCKE));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(45[13:17])
    OB nRWE_pad (.I(nRWE_c), .O(nRWE));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(46[45:49])
    OB nRRAS_pad (.I(nRRAS_c), .O(nRRAS));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(46[23:28])
    OB nRCAS_pad (.I(nRCAS_c), .O(nRCAS));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(46[34:39])
    OB RDQMH_pad (.I(RDQMH_c), .O(RDQMH));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(56[16:21])
    OB RDQML_pad (.I(RDQML_c), .O(RDQML));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(56[9:14])
    OB nUFMCS_pad (.I(nUFMCS_c), .O(nUFMCS));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(63[13:19])
    OB UFMCLK_pad (.I(UFMCLK_c), .O(UFMCLK));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(64[13:19])
    OB UFMSDI_pad (.I(UFMSDI_c), .O(UFMSDI));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(65[13:19])
    IB PHI2_pad (.I(PHI2), .O(PHI2_c));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(8[8:12])
    IB MAin_pad_9 (.I(MAin[9]), .O(MAin_c_9));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(35[14:18])
    IB MAin_pad_8 (.I(MAin[8]), .O(MAin_c_8));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(35[14:18])
    IB MAin_pad_7 (.I(MAin[7]), .O(MAin_c_7));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(35[14:18])
    IB MAin_pad_6 (.I(MAin[6]), .O(MAin_c_6));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(35[14:18])
    IB MAin_pad_5 (.I(MAin[5]), .O(MAin_c_5));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(35[14:18])
    IB MAin_pad_4 (.I(MAin[4]), .O(MAin_c_4));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(35[14:18])
    IB MAin_pad_3 (.I(MAin[3]), .O(MAin_c_3));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(35[14:18])
    IB MAin_pad_2 (.I(MAin[2]), .O(MAin_c_2));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(35[14:18])
    IB MAin_pad_1 (.I(MAin[1]), .O(MAin_c_1));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(35[14:18])
    IB MAin_pad_0 (.I(MAin[0]), .O(MAin_c_0));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(35[14:18])
    IB CROW_pad_1 (.I(CROW[1]), .O(CROW_c_1));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(34[14:18])
    IB CROW_pad_0 (.I(CROW[0]), .O(CROW_c_0));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(34[14:18])
    IB Din_pad_7 (.I(Din[7]), .O(Din_c_7));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(26[14:17])
    IB Din_pad_6 (.I(Din[6]), .O(Din_c_6));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(26[14:17])
    IB Din_pad_5 (.I(Din[5]), .O(Din_c_5));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(26[14:17])
    IB Din_pad_4 (.I(Din[4]), .O(Din_c_4));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(26[14:17])
    IB Din_pad_3 (.I(Din[3]), .O(Din_c_3));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(26[14:17])
    IB Din_pad_2 (.I(Din[2]), .O(Din_c_2));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(26[14:17])
    IB Din_pad_1 (.I(Din[1]), .O(Din_c_1));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(26[14:17])
    IB Din_pad_0 (.I(Din[0]), .O(Din_c_0));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(26[14:17])
    IB nCCAS_pad (.I(nCCAS), .O(nCCAS_c));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(11[8:13])
    IB nCRAS_pad (.I(nCRAS), .O(nCRAS_c));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(11[15:20])
    IB nFWE_pad (.I(nFWE), .O(nFWE_c));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(36[8:12])
    IB RCLK_pad (.I(RCLK), .O(RCLK_c));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(41[8:12])
    IB UFMSDO_pad (.I(UFMSDO), .O(UFMSDO_c));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(66[8:14])
    CCU2D FS_610_add_4_17 (.A0(FS[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FS[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1999), 
          .COUT(n2000), .S0(n80), .S1(n79));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_17.INIT0 = 16'hfaaa;
    defparam FS_610_add_4_17.INIT1 = 16'hfaaa;
    defparam FS_610_add_4_17.INJECT1_0 = "NO";
    defparam FS_610_add_4_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_14_3_lut (.A(n2369), .B(n26), .C(nFWE_c), .Z(n2363)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i1_2_lut_rep_14_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_rep_13_3_lut (.A(n2369), .B(n26), .C(MAin_c_1), .Z(n2362)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i1_2_lut_rep_13_3_lut.init = 16'hdfdf;
    LUT4 i2010_3_lut_3_lut (.A(nCRAS_c), .B(LEDEN), .C(CBR), .Z(LED_c)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(23[17:23])
    defparam i2010_3_lut_3_lut.init = 16'hfbfb;
    LUT4 i5_3_lut (.A(FS[3]), .B(FS[9]), .C(FS[6]), .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut_adj_16 (.A(nRowColSel_N_35), .B(nRowColSel_N_33), .C(nRowColSel_N_32), 
         .D(n6), .Z(RCLK_c_enable_6)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_16.init = 16'hfffe;
    LUT4 i4_4_lut_adj_17 (.A(n7), .B(FS[8]), .C(FS[10]), .D(n10), .Z(n2174)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i4_4_lut_adj_17.init = 16'h0002;
    LUT4 i34_4_lut (.A(n7_adj_5), .B(ADSubmitted), .C(C1Submitted_N_237), 
         .D(n2363), .Z(PHI2_N_120_enable_1)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i34_4_lut.init = 16'hc0c5;
    LUT4 i13_3_lut (.A(MAin_c_0), .B(n2210), .C(MAin_c_1), .Z(n7_adj_5)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;
    defparam i13_3_lut.init = 16'hc5c5;
    LUT4 i1_2_lut_4_lut (.A(FS[11]), .B(n2368), .C(InitReady), .D(FS[10]), 
         .Z(n64)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 nRCS_N_137_I_0_4_lut (.A(nRCS_N_137), .B(n2379), .C(Ready), .D(nRowColSel_N_35), 
         .Z(nRRAS_N_156)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(232[12] 284[6])
    defparam nRCS_N_137_I_0_4_lut.init = 16'h3afa;
    LUT4 i3_4_lut_adj_18 (.A(Din_c_5), .B(n2228), .C(n2183), .D(n2370), 
         .Z(n2055)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(309[7:24])
    defparam i3_4_lut_adj_18.init = 16'h1000;
    LUT4 i1930_2_lut (.A(nFWE_c), .B(Din_c_4), .Z(n2228)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1930_2_lut.init = 16'heeee;
    LUT4 i1110_2_lut_3_lut_4_lut (.A(nFWE_c), .B(n2365), .C(C1Submitted), 
         .D(MAin_c_1), .Z(n1398)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i1110_2_lut_3_lut_4_lut.init = 16'he0f0;
    LUT4 i1_2_lut_adj_19 (.A(FS[11]), .B(FS[6]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i1_2_lut_adj_19.init = 16'h8888;
    LUT4 i2_4_lut_adj_20 (.A(n2375), .B(FS[7]), .C(FS[9]), .D(FS[5]), 
         .Z(n7)) /* synthesis lut_function=(!(A+(B (C)+!B !(C (D))))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i2_4_lut_adj_20.init = 16'h1404;
    LUT4 i1417_2_lut (.A(nCCAS_c), .B(nFWE_c), .Z(n984)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1417_2_lut.init = 16'heeee;
    LUT4 i2_4_lut_adj_21 (.A(n2228), .B(CmdEnable), .C(n1277), .D(n1314), 
         .Z(PHI2_N_120_enable_3)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_4_lut_adj_21.init = 16'h0004;
    LUT4 i3_4_lut_adj_22 (.A(Din_c_5), .B(n2191), .C(C1Submitted), .D(n2208), 
         .Z(n2210)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_22.init = 16'h0800;
    LUT4 i1_2_lut_adj_23 (.A(nRowColSel_N_33), .B(CASr2), .Z(n2227)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_23.init = 16'hbbbb;
    FD1P3AX InitReady_394 (.D(n2447), .SP(RCLK_c_enable_28), .CK(RCLK_c), 
            .Q(InitReady)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(134[9] 138[5])
    defparam InitReady_394.GSR = "ENABLED";
    LUT4 nRCS_I_0_448_3_lut (.A(nRCS_N_137), .B(nRCS_N_141), .C(Ready), 
         .Z(nRCS_N_136)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(232[12] 284[6])
    defparam nRCS_I_0_448_3_lut.init = 16'hcaca;
    LUT4 i1969_2_lut_3_lut_4_lut (.A(FS[12]), .B(FS[14]), .C(FS[11]), 
         .D(n10), .Z(n2267)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i1969_2_lut_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_19_3_lut (.A(FS[12]), .B(FS[14]), .C(n10), .Z(n2368)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i1_2_lut_rep_19_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut_adj_24 (.A(CBR), .B(CASr3), .C(FWEr), .D(CASr2), 
         .Z(nRCS_N_146)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam i2_3_lut_4_lut_adj_24.init = 16'h1000;
    LUT4 i3_2_lut_rep_26 (.A(FS[12]), .B(FS[14]), .Z(n2375)) /* synthesis lut_function=(A+(B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i3_2_lut_rep_26.init = 16'heeee;
    LUT4 i1_2_lut_rep_27 (.A(CBR), .B(CASr3), .Z(n2376)) /* synthesis lut_function=(A+(B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam i1_2_lut_rep_27.init = 16'heeee;
    LUT4 i2_3_lut_rep_28 (.A(PHI2r3), .B(PHI2r2), .C(CmdSubmitted), .Z(n2377)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(402[16:47])
    defparam i2_3_lut_rep_28.init = 16'h2020;
    INV i2044 (.A(nCRAS_c), .Z(nCRAS_c__inv));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(11[15:20])
    FD1S3IX S_FSM_i2 (.D(n1406), .CK(RCLK_c), .CD(n1408), .Q(nRowColSel_N_34));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam S_FSM_i2.GSR = "ENABLED";
    INV i2045 (.A(nCCAS_c), .Z(nCCAS_N_3));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(11[8:13])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_2_lut_4_lut_adj_25 (.A(PHI2r3), .B(PHI2r2), .C(CmdSubmitted), 
         .D(InitReady), .Z(RCLK_c_enable_10)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (D))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(402[16:47])
    defparam i1_2_lut_4_lut_adj_25.init = 16'h20ff;
    LUT4 i1_2_lut_rep_29 (.A(FWEr), .B(CBR), .Z(n2378)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_29.init = 16'heeee;
    LUT4 m1_lut (.Z(n2447)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 n8MEGEN_I_14_3_lut_4_lut (.A(InitReady), .B(n2367), .C(UFMSDO_c), 
         .D(Cmdn8MEGEN), .Z(n8MEGEN_N_91)) /* synthesis lut_function=(A (D)+!A !(B (C)+!B !(D))) */ ;
    defparam n8MEGEN_I_14_3_lut_4_lut.init = 16'hbf04;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

