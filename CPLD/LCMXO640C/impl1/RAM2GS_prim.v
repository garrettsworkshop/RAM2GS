// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Tue Aug 15 05:03:22 2023
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
    wire nCRAS_N_9 /* synthesis is_inv_clock=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(47[19:22])
    wire PHI2_N_120 /* synthesis is_inv_clock=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(38[6:13])
    
    wire GND_net, VCC_net, PHI2r, PHI2r2, PHI2r3, RASr, RASr2, 
        RASr3, CASr, CASr2, CASr3, FWEr, CBR, LEDEN, Din_c_7, 
        Din_c_6, Din_c_5, Din_c_4, Din_c_3, Din_c_2, Din_c_1, Din_c_0;
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
        CmdUFMCS, InitReady, Ready;
    wire [17:0]FS;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(86[13:15])
    
    wire LED_N_84, nFWE_N_5, n2414, RA11_N_184, n15, n2262, PHI2_N_120_enable_6, 
        n2257, n7, RASr2_N_63, RCKE_N_132, nRowColSel_N_35, n2011, 
        nRWE_N_182, RCKEEN_N_130, nRowColSel_N_34, nRowColSel_N_33, 
        n2015, nRowColSel_N_32, nRowColSel_N_28, n1426, n6, n2328, 
        n2457, n1425, RCKEEN_N_123, nRWE_N_178, RCKEEN_N_122, n2324, 
        nRCS_N_139, nRCAS_N_165, nRWE_N_177, nRWE_N_176, n2322, Ready_N_296, 
        n2316, n2314, Ready_N_292, nRCS_N_136, nRCAS_N_161, nRWE_N_171, 
        RCKEEN_N_121, n2336, PHI2_N_120_enable_5, n2209, CmdEnable_N_248, 
        C1Submitted_N_237, n2478, n2477, n2138, n1410, n2290, Cmdn8MEGEN_N_264, 
        XOR8MEG_N_110, n2208, LEDEN_N_82, n2243, RCLK_c_enable_24, 
        n2476, n2475, n8MEGEN_N_91, UFMCLK_N_224, UFMSDI_N_231, n2460, 
        n2227, n2253, n726, n727, n728, n729, n730, n1502, n732, 
        n733, n734, n735, n736, n737, n738, n2284, n2463, n2164, 
        PHI2_N_120_enable_4, n1325, n2278, n1503, n2214, n1417, 
        n2010, n2474, n2009, n1280, n33, n2473, n2263, n56, 
        PHI2_N_120_enable_1, n12, n10, n13, n2272, Dout_c, n78, 
        n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, 
        n89, n90, n91, n92, n93, n94, n95, n15_adj_1, n1, 
        n2462, n2472, n2471, n1093, RCLK_c_enable_11, n62, RCLK_c_enable_25, 
        n2470, n2242, n2461, RCLK_c_enable_23, RCLK_c_enable_12, n2451, 
        n2014, n14, n13_adj_2, n2568, n2245, PHI2_N_120_enable_7, 
        RCLK_c_enable_4, n2469, n1413, n1846, Dout_0, Dout_1, n984, 
        Dout_2, Dout_3, Dout_4, n1314, Dout_5, Dout_6, n2468, 
        n1160, n2337, n2008, n2013, n6_adj_3, RCLK_c_enable_3, n2467, 
        n2012, n2479, n1326, n2464, n8, n2481, n2430, n2459, 
        n2458, n2427, n2480, n11, n26;
    
    VHI i2 (.Z(VCC_net));
    INV i2136 (.A(PHI2_c), .Z(PHI2_N_120));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(8[8:12])
    ORCALUT4 i6_4_lut (.A(FS[17]), .B(n12), .C(FS[12]), .D(FS[14]), 
            .Z(n62)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i6_4_lut.init = 16'h8000;
    ORCALUT4 i1_4_lut_4_lut (.A(Din_c_3), .B(Din_c_5), .C(Din_c_4), .D(n2458), 
            .Z(PHI2_N_120_enable_4)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A !(B+!(D))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hb300;
    FD1S3AX PHI2r2_377 (.D(PHI2r), .CK(RCLK_c), .Q(PHI2r2));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(91[9] 95[5])
    defparam PHI2r2_377.GSR = "ENABLED";
    ORCALUT4 i1994_3_lut (.A(FS[2]), .B(FS[5]), .C(FS[9]), .Z(n2290)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1994_3_lut.init = 16'hfefe;
    ORCALUT4 i1_2_lut_3_lut (.A(MAin_c_0), .B(n1326), .C(MAin_c_1), .Z(n2263)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(80[15:31])
    defparam i1_2_lut_3_lut.init = 16'hdfdf;
    FD1S3AX PHI2r3_378 (.D(PHI2r2), .CK(RCLK_c), .Q(PHI2r3));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(91[9] 95[5])
    defparam PHI2r3_378.GSR = "ENABLED";
    FD1S3AX RASr_379 (.D(nCRAS_N_9), .CK(RCLK_c), .Q(RASr));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(91[9] 95[5])
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
    FD1S3IX RA11_385 (.D(RA11_N_184), .CK(PHI2_c), .CD(n2477), .Q(RA_c));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(98[9] 102[5])
    defparam RA11_385.GSR = "ENABLED";
    FD1S3IX RowA_i0 (.D(MAin_c_0), .CK(nCRAS_N_9), .CD(n2477), .Q(RowA[0]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i0.GSR = "ENABLED";
    ORCALUT4 i637_1_lut_rep_34 (.A(Ready), .Z(n2477)) /* synthesis lut_function=(!(A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam i637_1_lut_rep_34.init = 16'h5555;
    FD1S3AX WRD_i0 (.D(Din_c_0), .CK(nCCAS_N_3), .Q(WRD[0]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(123[9] 125[5])
    defparam WRD_i0.GSR = "ENABLED";
    FD1S3AX FWEr_389 (.D(nFWE_N_5), .CK(nCRAS_N_9), .Q(FWEr));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam FWEr_389.GSR = "ENABLED";
    FD1S3AX CBR_390 (.D(nCCAS_N_3), .CK(nCRAS_N_9), .Q(CBR));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam CBR_390.GSR = "ENABLED";
    FD1S3IX ADSubmitted_407 (.D(n1413), .CK(PHI2_N_120), .CD(C1Submitted_N_237), 
            .Q(ADSubmitted)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam ADSubmitted_407.GSR = "ENABLED";
    ORCALUT4 i2026_4_lut (.A(FS[0]), .B(FS[1]), .C(FS[6]), .D(FS[3]), 
            .Z(n2322)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2026_4_lut.init = 16'hfffe;
    FD1S3AX RCKE_395 (.D(RCKE_N_132), .CK(RCLK_c), .Q(RCKE_c)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(141[9] 144[5])
    defparam RCKE_395.GSR = "ENABLED";
    FD1P3AY nRCS_396 (.D(nRCS_N_136), .SP(RCLK_c_enable_4), .CK(RCLK_c), 
            .Q(nRCS_c)) /* synthesis lse_init_val=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam nRCS_396.GSR = "ENABLED";
    FD1S3IX nRowColSel_402 (.D(n1410), .CK(RCLK_c), .CD(n2469), .Q(nRowColSel));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam nRowColSel_402.GSR = "ENABLED";
    ORCALUT4 n8MEGEN_I_14_4_lut (.A(UFMSDO_c), .B(Cmdn8MEGEN), .C(InitReady), 
            .D(n1325), .Z(n8MEGEN_N_91)) /* synthesis lut_function=(A (B (C+(D)))+!A (B+!(C+(D)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(394[12] 409[6])
    defparam n8MEGEN_I_14_4_lut.init = 16'hccc5;
    ORCALUT4 i771_2_lut_rep_26_2_lut (.A(Ready), .B(nRowColSel_N_35), .Z(n2469)) /* synthesis lut_function=((B)+!A) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam i771_2_lut_rep_26_2_lut.init = 16'hdddd;
    ORCALUT4 i7_4_lut (.A(FS[10]), .B(n2328), .C(n2272), .D(FS[11]), 
            .Z(n2214)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i7_4_lut.init = 16'h0200;
    ORCALUT4 i2062_2_lut_3_lut_4_lut (.A(nFWE_c), .B(n1326), .C(C1Submitted), 
            .D(MAin_c_1), .Z(n6_adj_3)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i2062_2_lut_3_lut_4_lut.init = 16'he0f0;
    ORCALUT4 i2046_1_lut_2_lut_3_lut_3_lut (.A(Ready), .B(n13), .C(nRCS_N_139), 
            .Z(n2337)) /* synthesis lut_function=(!(A (B)+!A !((C)+!B))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam i2046_1_lut_2_lut_3_lut_3_lut.init = 16'h7373;
    ORCALUT4 i3_3_lut_4_lut_4_lut (.A(Ready), .B(InitReady), .C(RASr2), 
            .D(nRowColSel_N_35), .Z(RCLK_c_enable_23)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam i3_3_lut_4_lut_4_lut.init = 16'h4000;
    ORCALUT4 i2065_2_lut_3_lut (.A(FS[11]), .B(n2464), .C(InitReady), 
            .Z(n1846)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i2065_2_lut_3_lut.init = 16'h0101;
    ORCALUT4 i2055_3_lut_4_lut (.A(FS[11]), .B(n2464), .C(FS[10]), .D(InitReady), 
            .Z(LEDEN_N_82)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i2055_3_lut_4_lut.init = 16'h0001;
    ORCALUT4 i2_3_lut (.A(n2214), .B(FS[11]), .C(InitReady), .Z(RCLK_c_enable_12)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(340[9] 410[5])
    defparam i2_3_lut.init = 16'h0808;
    CCU2 FS_610_add_4_8 (.A0(FS[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(FS[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2010), 
         .COUT1(n2011), .S0(n89), .S1(n88));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_8.INIT0 = 16'hfaaa;
    defparam FS_610_add_4_8.INIT1 = 16'hfaaa;
    defparam FS_610_add_4_8.INJECT1_0 = "NO";
    defparam FS_610_add_4_8.INJECT1_1 = "NO";
    FD1S3IX S_FSM_i3 (.D(n1093), .CK(RCLK_c), .CD(n1425), .Q(nRowColSel_N_33));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam S_FSM_i3.GSR = "ENABLED";
    ORCALUT4 Ready_bdd_4_lut (.A(nRowColSel_N_32), .B(RASr2), .C(Ready_N_296), 
            .D(InitReady), .Z(n2414)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam Ready_bdd_4_lut.init = 16'h2000;
    FD1S3AY nRRAS_397 (.D(n2138), .CK(RCLK_c), .Q(nRRAS_c)) /* synthesis lse_init_val=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam nRRAS_397.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_2_lut (.A(Ready), .B(nRowColSel_N_34), .Z(n56)) /* synthesis lut_function=((B)+!A) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    ORCALUT4 i2_4_lut (.A(Din_c_2), .B(n2463), .C(n1280), .D(n2468), 
            .Z(C1Submitted_N_237)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0400;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(Ready), .B(nRowColSel_N_32), 
            .C(n1502), .D(nRowColSel_N_35), .Z(RCLK_c_enable_3)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hfffd;
    ORCALUT4 Din_7__I_0_462_i6_2_lut_rep_35 (.A(Din_c_6), .B(Din_c_7), .Z(n2478)) /* synthesis lut_function=(A+(B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(315[17:31])
    defparam Din_7__I_0_462_i6_2_lut_rep_35.init = 16'heeee;
    BB Dout_pad_7__713 (.I(WRD[7]), .T(n984), .B(RD[7]), .O(Dout_c));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(60[14:16])
    FD1P3AY nRCAS_398 (.D(nRCAS_N_161), .SP(RCLK_c_enable_4), .CK(RCLK_c), 
            .Q(nRCAS_c)) /* synthesis lse_init_val=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam nRCAS_398.GSR = "ENABLED";
    FD1P3AY nRWE_399 (.D(nRWE_N_171), .SP(RCLK_c_enable_3), .CK(RCLK_c), 
            .Q(nRWE_c)) /* synthesis lse_init_val=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam nRWE_399.GSR = "ENABLED";
    FD1S3JX RA10_400 (.D(n2209), .CK(RCLK_c), .PD(nRWE_N_176), .Q(RA_0));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam RA10_400.GSR = "ENABLED";
    FD1P3AX RCKEEN_401 (.D(RCKEEN_N_121), .SP(RCLK_c_enable_4), .CK(RCLK_c), 
            .Q(RCKEEN));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam RCKEEN_401.GSR = "ENABLED";
    FD1S3AX FS_610__i0 (.D(n95), .CK(RCLK_c), .Q(FS[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610__i0.GSR = "ENABLED";
    ORCALUT4 i13_4_lut (.A(MAin_c_2), .B(n26), .C(n2316), .D(MAin_c_5), 
            .Z(n1326)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i13_4_lut.init = 16'hdfff;
    ORCALUT4 i12_4_lut (.A(Bank[2]), .B(n2314), .C(n2278), .D(Bank[5]), 
            .Z(n26)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'hbfff;
    ORCALUT4 i2_3_lut_adj_1 (.A(MAin_c_1), .B(n1326), .C(MAin_c_0), .Z(n1280)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(80[15:31])
    defparam i2_3_lut_adj_1.init = 16'hfdfd;
    FD1S3IX RBA__i1 (.D(CROW_c_0), .CK(nCRAS_N_9), .CD(n2477), .Q(RBA_c_0));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RBA__i1.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_adj_2 (.A(Din_c_6), .B(Din_c_7), .C(Din_c_5), 
            .Z(n1314)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(315[17:31])
    defparam i1_2_lut_3_lut_adj_2.init = 16'hfefe;
    ORCALUT4 i2020_4_lut (.A(MAin_c_7), .B(MAin_c_3), .C(Bank[4]), .D(Bank[1]), 
            .Z(n2316)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2020_4_lut.init = 16'h8000;
    ORCALUT4 i1990_2_lut_rep_17 (.A(nFWE_c), .B(n1326), .Z(n2460)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1990_2_lut_rep_17.init = 16'heeee;
    ORCALUT4 i1125_4_lut (.A(n2459), .B(n2242), .C(ADSubmitted), .D(n2263), 
            .Z(n1413)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam i1125_4_lut.init = 16'h50dc;
    ORCALUT4 i2018_4_lut (.A(MAin_c_6), .B(MAin_c_4), .C(Bank[7]), .D(Bank[0]), 
            .Z(n2314)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2018_4_lut.init = 16'h8000;
    ORCALUT4 i4_4_lut (.A(Din_c_4), .B(n2478), .C(CmdEnable), .D(MAin_c_1), 
            .Z(n10)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i4_4_lut.init = 16'h0020;
    ORCALUT4 i2_2_lut_rep_27 (.A(FS[16]), .B(FS[14]), .Z(n2470)) /* synthesis lut_function=(A+(B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i2_2_lut_rep_27.init = 16'heeee;
    ORCALUT4 i2_3_lut_4_lut (.A(nRowColSel_N_32), .B(n2469), .C(nRowColSel_N_34), 
            .D(nRowColSel_N_33), .Z(RCLK_c_enable_4)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 Cmdn8MEGEN_I_93_4_lut (.A(Din_c_0), .B(n8MEGEN), .C(Din_c_4), 
            .D(n1314), .Z(Cmdn8MEGEN_N_264)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B+!((D)+!C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(321[13] 335[7])
    defparam Cmdn8MEGEN_I_93_4_lut.init = 16'hcc5c;
    ORCALUT4 i1982_2_lut (.A(Bank[6]), .B(Bank[3]), .Z(n2278)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1982_2_lut.init = 16'h8888;
    ORCALUT4 i2_4_lut_adj_3 (.A(Din_c_3), .B(Din_c_4), .C(Din_c_5), .D(n2458), 
            .Z(PHI2_N_120_enable_5)) /* synthesis lut_function=(A (B (D))+!A !((C+!(D))+!B)) */ ;
    defparam i2_4_lut_adj_3.init = 16'h8c00;
    FD1P3AX IS_FSM__i0 (.D(Ready_N_296), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(nRCS_N_139));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i0.GSR = "ENABLED";
    FD1S3JX C1Submitted_406 (.D(n6_adj_3), .CK(PHI2_N_120), .PD(C1Submitted_N_237), 
            .Q(C1Submitted)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam C1Submitted_406.GSR = "ENABLED";
    FD1S3JX nUFMCS_415 (.D(n2164), .CK(RCLK_c), .PD(LEDEN_N_82), .Q(nUFMCS_c)) /* synthesis lse_init_val=1 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(340[9] 410[5])
    defparam nUFMCS_415.GSR = "ENABLED";
    ORCALUT4 i2049_3_lut (.A(LEDEN), .B(CBR), .C(nCRAS_c), .Z(LED_N_84)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(23[15:41])
    defparam i2049_3_lut.init = 16'hfdfd;
    ORCALUT4 MAin_9__I_0_427_i10_3_lut (.A(RowA[9]), .B(MAin_c_9), .C(nRowColSel), 
            .Z(RA_1_9)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i10_3_lut.init = 16'hcaca;
    FD1S3AX S_FSM_i1 (.D(RASr2_N_63), .CK(RCLK_c), .Q(nRowColSel_N_35));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam S_FSM_i1.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_adj_4 (.A(FS[11]), .B(n2464), .C(FS[10]), 
            .Z(n1325)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i1_2_lut_3_lut_adj_4.init = 16'hdfdf;
    ORCALUT4 MAin_9__I_0_427_i9_3_lut (.A(RowA[8]), .B(MAin_c_8), .C(nRowColSel), 
            .Z(RA_1_8)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i9_3_lut.init = 16'hcaca;
    ORCALUT4 MAin_9__I_0_427_i8_3_lut (.A(RowA[7]), .B(MAin_c_7), .C(nRowColSel), 
            .Z(RA_1_7)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i1209_4_lut_else_4_lut (.A(nRCS_N_139), .B(Ready), .C(nRowColSel_N_35), 
            .Z(n2479)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(48[6:16])
    defparam i1209_4_lut_else_4_lut.init = 16'h2f2f;
    ORCALUT4 i1_2_lut_3_lut_adj_5 (.A(MAin_c_0), .B(n1326), .C(MAin_c_1), 
            .Z(n2262)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(80[15:31])
    defparam i1_2_lut_3_lut_adj_5.init = 16'hfdfd;
    ORCALUT4 i2045_1_lut_4_lut (.A(n56), .B(nRRAS_c), .C(n6), .D(nRowColSel_N_32), 
            .Z(n2336)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2045_1_lut_4_lut.init = 16'hfffe;
    FD1S3AX Bank_i0 (.D(Din_c_0), .CK(PHI2_c), .Q(Bank[0]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(98[9] 102[5])
    defparam Bank_i0.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_4_lut (.A(MAin_c_0), .B(n10), .C(n2460), .D(n2476), 
            .Z(PHI2_N_120_enable_6)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0800;
    ORCALUT4 i2_3_lut_rep_29 (.A(PHI2r3), .B(CmdSubmitted), .C(PHI2r2), 
            .Z(n2472)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(402[16:47])
    defparam i2_3_lut_rep_29.init = 16'h0808;
    ORCALUT4 nRowColSel_N_34_bdd_3_lut_2115 (.A(nRowColSel_N_34), .B(n15_adj_1), 
            .C(Ready), .Z(n2430)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam nRowColSel_N_34_bdd_3_lut_2115.init = 16'hbfbf;
    ORCALUT4 i4_4_lut_adj_6 (.A(MAin_c_1), .B(n2476), .C(MAin_c_0), .D(n2284), 
            .Z(n2257)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i4_4_lut_adj_6.init = 16'h0080;
    FD1S3AX PHI2r_376 (.D(PHI2_c), .CK(RCLK_c), .Q(PHI2r));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(91[9] 95[5])
    defparam PHI2r_376.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_4_lut_adj_7 (.A(PHI2r3), .B(CmdSubmitted), .C(PHI2r2), 
            .D(InitReady), .Z(RCLK_c_enable_24)) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A (D))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(402[16:47])
    defparam i1_2_lut_4_lut_adj_7.init = 16'h08ff;
    ORCALUT4 i2024_2_lut_rep_28 (.A(FS[17]), .B(FS[12]), .Z(n2471)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2024_2_lut_rep_28.init = 16'heeee;
    FD1S3IX S_FSM_i4 (.D(n1503), .CK(RCLK_c), .CD(RASr2_N_63), .Q(nRowColSel_N_32));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam S_FSM_i4.GSR = "ENABLED";
    CCU2 FS_610_add_4_16 (.A0(FS[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(FS[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2014), 
         .COUT1(n2015), .S0(n81), .S1(n80));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_16.INIT0 = 16'hfaaa;
    defparam FS_610_add_4_16.INIT1 = 16'hfaaa;
    defparam FS_610_add_4_16.INJECT1_0 = "NO";
    defparam FS_610_add_4_16.INJECT1_1 = "NO";
    ORCALUT4 i2_3_lut_4_lut_adj_8 (.A(nRowColSel_N_35), .B(RASr2), .C(InitReady), 
            .D(nRCS_N_139), .Z(n2208)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam i2_3_lut_4_lut_adj_8.init = 16'hff7f;
    ORCALUT4 i1_4_lut_4_lut_adj_9 (.A(CBR), .B(n11), .C(FWEr), .D(nRowColSel_N_34), 
            .Z(RCKEEN_N_123)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (D)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(23[27:31])
    defparam i1_4_lut_4_lut_adj_9.init = 16'h5540;
    ORCALUT4 i3_4_lut (.A(CBR), .B(FWEr), .C(CASr2), .D(CASr3), .Z(n1)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i3_4_lut.init = 16'h0040;
    PFUMX i2095 (.BLUT(n2430), .ALUT(n2457), .C0(nRowColSel_N_35), .Z(nRCAS_N_161));
    ORCALUT4 MAin_9__I_0_427_i7_3_lut (.A(RowA[6]), .B(MAin_c_6), .C(nRowColSel), 
            .Z(RA_1_6)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i7_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut (.A(nRowColSel), .B(n1502), .C(nRowColSel_N_28), 
            .D(nRowColSel_N_32), .Z(n1410)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam i1_4_lut.init = 16'hcfee;
    ORCALUT4 i1_2_lut (.A(RASr2), .B(RCKE_c), .Z(nRWE_N_182)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(91[9] 95[5])
    defparam i1_2_lut.init = 16'hbbbb;
    ORCALUT4 i2004_2_lut_rep_30 (.A(Din_c_4), .B(nFWE_c), .Z(n2473)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2004_2_lut_rep_30.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_20_3_lut (.A(Din_c_4), .B(nFWE_c), .C(n2253), 
            .Z(n2463)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_20_3_lut.init = 16'h1010;
    ORCALUT4 i2_3_lut_adj_10 (.A(Din_c_7), .B(Din_c_0), .C(Din_c_1), .Z(n2253)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_adj_10.init = 16'h0808;
    CCU2 FS_610_add_4_6 (.A0(FS[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(FS[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2009), 
         .COUT1(n2010), .S0(n91), .S1(n90));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_6.INIT0 = 16'hfaaa;
    defparam FS_610_add_4_6.INIT1 = 16'hfaaa;
    defparam FS_610_add_4_6.INJECT1_0 = "NO";
    defparam FS_610_add_4_6.INJECT1_1 = "NO";
    ORCALUT4 i2_4_lut_adj_11 (.A(n2473), .B(CmdEnable), .C(n2262), .D(n1314), 
            .Z(PHI2_N_120_enable_1)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_4_lut_adj_11.init = 16'h0004;
    ORCALUT4 MAin_9__I_0_427_i6_3_lut (.A(RowA[5]), .B(MAin_c_5), .C(nRowColSel), 
            .Z(RA_1_5)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i6_3_lut.init = 16'hcaca;
    ORCALUT4 i3_4_lut_adj_12 (.A(Din_c_0), .B(Din_c_3), .C(Din_c_2), .D(n2324), 
            .Z(XOR8MEG_N_110)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i3_4_lut_adj_12.init = 16'h0020;
    ORCALUT4 MAin_9__I_0_427_i5_3_lut (.A(RowA[4]), .B(MAin_c_4), .C(nRowColSel), 
            .Z(RA_1_4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i5_3_lut.init = 16'hcaca;
    ORCALUT4 i2028_4_lut (.A(Din_c_4), .B(LEDEN), .C(n1314), .D(Din_c_1), 
            .Z(n2324)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2028_4_lut.init = 16'hfefa;
    ORCALUT4 MAin_9__I_0_427_i4_3_lut (.A(RowA[3]), .B(MAin_c_3), .C(nRowColSel), 
            .Z(RA_1_3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i2_3_lut_rep_31 (.A(Din_c_6), .B(Din_c_2), .C(Din_c_3), .Z(n2474)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(309[7:24])
    defparam i2_3_lut_rep_31.init = 16'h4040;
    FD1P3IX UFMSDI_417 (.D(UFMSDI_N_231), .SP(RCLK_c_enable_24), .CD(n1846), 
            .CK(RCLK_c), .Q(UFMSDI_c)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(340[9] 410[5])
    defparam UFMSDI_417.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_4_lut_adj_13 (.A(Din_c_6), .B(Din_c_2), .C(Din_c_3), 
            .D(MAin_c_0), .Z(n2243)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(309[7:24])
    defparam i1_2_lut_4_lut_adj_13.init = 16'h4000;
    ORCALUT4 MAin_9__I_0_427_i3_3_lut (.A(RowA[2]), .B(MAin_c_2), .C(nRowColSel), 
            .Z(RA_1_2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i3_3_lut.init = 16'hcaca;
    ORCALUT4 n2427_bdd_4_lut_4_lut (.A(CBR), .B(RASr2), .C(Ready), .D(n2427), 
            .Z(n2457)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A !((C+(D))+!B))) */ ;
    defparam n2427_bdd_4_lut_4_lut.init = 16'h7f73;
    GSR GSR_INST (.GSR(VCC_net));
    ORCALUT4 i2_3_lut_adj_14 (.A(FWEr), .B(CASr3), .C(CBR), .Z(nRowColSel_N_28)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(230[16:37])
    defparam i2_3_lut_adj_14.init = 16'hfdfd;
    ORCALUT4 InitReady_bdd_3_lut (.A(InitReady), .B(nRCS_N_139), .C(nRCAS_N_165), 
            .Z(n2427)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam InitReady_bdd_3_lut.init = 16'hfdfd;
    ORCALUT4 i35_3_lut_4_lut (.A(FWEr), .B(CBR), .C(nRowColSel_N_33), 
            .D(n1), .Z(n15_adj_1)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i35_3_lut_4_lut.init = 16'h1f10;
    ORCALUT4 MAin_9__I_0_427_i2_3_lut (.A(RowA[1]), .B(MAin_c_1), .C(nRowColSel), 
            .Z(RA_1_1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i2_3_lut.init = 16'hcaca;
    CCU2 FS_610_add_4_14 (.A0(FS[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(FS[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2013), 
         .COUT1(n2014), .S0(n83), .S1(n82));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_14.INIT0 = 16'hfaaa;
    defparam FS_610_add_4_14.INIT1 = 16'hfaaa;
    defparam FS_610_add_4_14.INJECT1_0 = "NO";
    defparam FS_610_add_4_14.INJECT1_1 = "NO";
    ORCALUT4 i2_3_lut_4_lut_adj_15 (.A(n2473), .B(n2253), .C(Din_c_5), 
            .D(n2474), .Z(n2242)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_15.init = 16'h4000;
    ORCALUT4 n2414_bdd_2_lut (.A(n2414), .B(Ready), .Z(Ready_N_292)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n2414_bdd_2_lut.init = 16'heeee;
    ORCALUT4 i1_2_lut_adj_16 (.A(nRowColSel_N_34), .B(nRowColSel_N_33), 
            .Z(n1502)) /* synthesis lut_function=(A+(B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam i1_2_lut_adj_16.init = 16'heeee;
    ORCALUT4 RCKE_I_0_449_4_lut (.A(RASr), .B(RCKEEN), .C(RASr2), .D(RASr3), 
            .Z(RCKE_N_132)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(143[11:55])
    defparam RCKE_I_0_449_4_lut.init = 16'hcfc8;
    ORCALUT4 i1_4_lut_adj_17 (.A(n2467), .B(n2481), .C(n13), .D(nRowColSel_N_35), 
            .Z(nRCS_N_136)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B+!(C (D)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(48[6:16])
    defparam i1_4_lut_adj_17.init = 16'hcfdd;
    FD1P3AX IS_FSM__i15 (.D(n726), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(Ready_N_296));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i15.GSR = "ENABLED";
    ORCALUT4 MAin_9__I_0_427_i1_3_lut (.A(RowA[0]), .B(MAin_c_0), .C(nRowColSel), 
            .Z(RA_1_0)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(55[19:54])
    defparam MAin_9__I_0_427_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i1558_2_lut_3_lut (.A(FWEr), .B(CBR), .C(RASr2), .Z(RCKEEN_N_130)) /* synthesis lut_function=(!(A (C)+!A (B (C)))) */ ;
    defparam i1558_2_lut_3_lut.init = 16'h1f1f;
    ORCALUT4 RA11_I_54_3_lut (.A(Din_c_6), .B(XOR8MEG), .C(n8MEGEN), .Z(RA11_N_184)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(99[22:51])
    defparam RA11_I_54_3_lut.init = 16'hc6c6;
    ORCALUT4 i17_4_lut (.A(n7), .B(n2472), .C(InitReady), .D(n8), .Z(RCLK_c_enable_11)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i17_4_lut.init = 16'hcac0;
    ORCALUT4 i1234_4_lut_4_lut (.A(RASr2), .B(InitReady), .C(RCKE_c), 
            .D(Ready), .Z(n13)) /* synthesis lut_function=(A (B+(D))+!A (C (D))) */ ;
    defparam i1234_4_lut_4_lut.init = 16'hfa88;
    ORCALUT4 i2_2_lut (.A(FS[8]), .B(n2214), .Z(n7)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2_2_lut.init = 16'h4444;
    ORCALUT4 i78_2_lut_rep_24_3_lut (.A(RASr2), .B(InitReady), .C(Ready), 
            .Z(n2467)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i78_2_lut_rep_24_3_lut.init = 16'hf8f8;
    FD1P3AX IS_FSM__i14 (.D(n727), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n726));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i14.GSR = "ENABLED";
    FD1P3AX IS_FSM__i13 (.D(n728), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n727));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i13.GSR = "ENABLED";
    ORCALUT4 i2_2_lut_3_lut_4_lut (.A(RASr2), .B(InitReady), .C(nRowColSel_N_33), 
            .D(Ready), .Z(n6)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'hf0f7;
    ORCALUT4 i1512_2_lut (.A(MAin_c_9), .B(nRowColSel), .Z(RDQMH_c)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(58[17:46])
    defparam i1512_2_lut.init = 16'hbbbb;
    ORCALUT4 i1_1_lut (.A(nFWE_c), .Z(nFWE_N_5)) /* synthesis lut_function=(!(A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam i1_1_lut.init = 16'h5555;
    FD1P3AX IS_FSM__i12 (.D(n729), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n728));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i12.GSR = "ENABLED";
    FD1P3AX XOR8MEG_408 (.D(XOR8MEG_N_110), .SP(PHI2_N_120_enable_1), .CK(PHI2_N_120), 
            .Q(XOR8MEG)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam XOR8MEG_408.GSR = "ENABLED";
    FD1P3AX n8MEGEN_418 (.D(n8MEGEN_N_91), .SP(RCLK_c_enable_11), .CK(RCLK_c), 
            .Q(n8MEGEN)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(340[9] 410[5])
    defparam n8MEGEN_418.GSR = "ENABLED";
    FD1P3AX LEDEN_419 (.D(n2568), .SP(RCLK_c_enable_12), .CK(RCLK_c), 
            .Q(LEDEN)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(340[9] 410[5])
    defparam LEDEN_419.GSR = "ENABLED";
    PFUMX i16 (.BLUT(n2336), .ALUT(n2337), .C0(nRowColSel_N_35), .Z(n2138));
    FD1P3AX Ready_404 (.D(n2568), .SP(Ready_N_292), .CK(RCLK_c), .Q(Ready)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(147[9] 285[5])
    defparam Ready_404.GSR = "ENABLED";
    FD1P3AX CmdUFMCLK_413 (.D(Din_c_1), .SP(PHI2_N_120_enable_6), .CK(PHI2_N_120), 
            .Q(CmdUFMCLK)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam CmdUFMCLK_413.GSR = "ENABLED";
    FD1P3AX CmdUFMSDI_414 (.D(Din_c_0), .SP(PHI2_N_120_enable_6), .CK(PHI2_N_120), 
            .Q(CmdUFMSDI)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam CmdUFMSDI_414.GSR = "ENABLED";
    FD1P3AX Cmdn8MEGEN_410 (.D(Cmdn8MEGEN_N_264), .SP(PHI2_N_120_enable_4), 
            .CK(PHI2_N_120), .Q(Cmdn8MEGEN)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam Cmdn8MEGEN_410.GSR = "ENABLED";
    FD1P3AX CmdSubmitted_411 (.D(n2568), .SP(PHI2_N_120_enable_5), .CK(PHI2_N_120), 
            .Q(CmdSubmitted)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam CmdSubmitted_411.GSR = "ENABLED";
    FD1P3AX CmdUFMCS_412 (.D(Din_c_2), .SP(PHI2_N_120_enable_6), .CK(PHI2_N_120), 
            .Q(CmdUFMCS)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam CmdUFMCS_412.GSR = "ENABLED";
    FD1P3AX IS_FSM__i11 (.D(n730), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n729));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i11.GSR = "ENABLED";
    ORCALUT4 i2060_2_lut (.A(MAin_c_9), .B(nRowColSel), .Z(RDQML_c)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i2060_2_lut.init = 16'h7777;
    ORCALUT4 i1_2_lut_rep_32 (.A(Din_c_6), .B(Din_c_3), .Z(n2475)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_32.init = 16'h2222;
    FD1P3AX IS_FSM__i10 (.D(nRWE_N_177), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n730));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i10.GSR = "ENABLED";
    ORCALUT4 i3_4_lut_adj_18 (.A(n2290), .B(FS[4]), .C(n2322), .D(FS[7]), 
            .Z(n8)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3_4_lut_adj_18.init = 16'h0004;
    ORCALUT4 i886_3_lut (.A(CmdUFMCLK), .B(n1160), .C(InitReady), .Z(UFMCLK_N_224)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(386[12] 409[6])
    defparam i886_3_lut.init = 16'hacac;
    FD1P3AX IS_FSM__i9 (.D(n732), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(nRWE_N_177));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i9.GSR = "ENABLED";
    ORCALUT4 i2_3_lut_4_lut_adj_19 (.A(Din_c_6), .B(Din_c_3), .C(Din_c_2), 
            .D(MAin_c_0), .Z(n2245)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_19.init = 16'h0002;
    ORCALUT4 i919_4_lut (.A(FS[4]), .B(n62), .C(n2462), .D(FS[1]), .Z(n1160)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(386[12] 409[6])
    defparam i919_4_lut.init = 16'h3a0a;
    ORCALUT4 i2052_4_lut (.A(MAin_c_0), .B(n2460), .C(n14), .D(MAin_c_1), 
            .Z(PHI2_N_120_enable_7)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+!(D))))) */ ;
    defparam i2052_4_lut.init = 16'h0302;
    ORCALUT4 i2_3_lut_adj_20 (.A(n2253), .B(Din_c_4), .C(n13_adj_2), .Z(n14)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_3_lut_adj_20.init = 16'h2020;
    ORCALUT4 i1136_1_lut (.A(nRowColSel_N_34), .Z(n1425)) /* synthesis lut_function=(!(A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam i1136_1_lut.init = 16'h5555;
    FD1P3AX IS_FSM__i8 (.D(n733), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n732));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i8.GSR = "ENABLED";
    FD1P3AX IS_FSM__i7 (.D(n734), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n733));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i7.GSR = "ENABLED";
    FD1P3AX IS_FSM__i6 (.D(n735), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n734));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i6.GSR = "ENABLED";
    FD1P3AX IS_FSM__i5 (.D(n736), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n735));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i5.GSR = "ENABLED";
    FD1P3AX IS_FSM__i4 (.D(n737), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n736));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i4.GSR = "ENABLED";
    FD1P3AX IS_FSM__i3 (.D(n738), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n737));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i3.GSR = "ENABLED";
    FD1P3AX IS_FSM__i2 (.D(nRCAS_N_165), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n738));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i2.GSR = "ENABLED";
    FD1P3AX IS_FSM__i1 (.D(nRCS_N_139), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(nRCAS_N_165));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(263[11:15])
    defparam IS_FSM__i1.GSR = "ENABLED";
    FD1S3IX RBA__i2 (.D(CROW_c_1), .CK(nCRAS_N_9), .CD(n2477), .Q(RBA_c_1));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
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
    ORCALUT4 i3_4_lut_adj_21 (.A(MAin_c_1), .B(n2463), .C(n1326), .D(n15), 
            .Z(CmdEnable_N_248)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_21.init = 16'h0800;
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
    FD1S3JX RowA_i9 (.D(MAin_c_9), .CK(nCRAS_N_9), .PD(n2477), .Q(RowA[9]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i9.GSR = "ENABLED";
    FD1S3IX RowA_i8 (.D(MAin_c_8), .CK(nCRAS_N_9), .CD(n2477), .Q(RowA[8]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i8.GSR = "ENABLED";
    FD1S3IX RowA_i7 (.D(MAin_c_7), .CK(nCRAS_N_9), .CD(n2477), .Q(RowA[7]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i7.GSR = "ENABLED";
    FD1S3IX RowA_i6 (.D(MAin_c_6), .CK(nCRAS_N_9), .CD(n2477), .Q(RowA[6]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i6.GSR = "ENABLED";
    FD1S3JX RowA_i5 (.D(MAin_c_5), .CK(nCRAS_N_9), .PD(n2477), .Q(RowA[5]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i5.GSR = "ENABLED";
    FD1S3IX RowA_i4 (.D(MAin_c_4), .CK(nCRAS_N_9), .CD(n2477), .Q(RowA[4]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i4.GSR = "ENABLED";
    FD1S3IX RowA_i3 (.D(MAin_c_3), .CK(nCRAS_N_9), .CD(n2477), .Q(RowA[3]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i3.GSR = "ENABLED";
    FD1S3IX RowA_i2 (.D(MAin_c_2), .CK(nCRAS_N_9), .CD(n2477), .Q(RowA[2]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i2.GSR = "ENABLED";
    FD1S3IX RowA_i1 (.D(MAin_c_1), .CK(nCRAS_N_9), .CD(n2477), .Q(RowA[1]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(105[9] 120[5])
    defparam RowA_i1.GSR = "ENABLED";
    FD1S3AX Bank_i7 (.D(Din_c_7), .CK(PHI2_c), .Q(Bank[7]));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(98[9] 102[5])
    defparam Bank_i7.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_rep_25_3_lut (.A(Din_c_6), .B(Din_c_3), .C(Din_c_5), 
            .Z(n2468)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_rep_25_3_lut.init = 16'h0202;
    ORCALUT4 i5_3_lut_rep_15_4_lut (.A(nFWE_c), .B(n1326), .C(n10), .D(MAin_c_0), 
            .Z(n2458)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i5_3_lut_rep_15_4_lut.init = 16'h1000;
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
    ORCALUT4 FS_6__bdd_4_lut (.A(FS[7]), .B(FS[9]), .C(FS[5]), .D(FS[8]), 
            .Z(n2451)) /* synthesis lut_function=(!(A (B+(D))+!A (((D)+!C)+!B))) */ ;
    defparam FS_6__bdd_4_lut.init = 16'h0062;
    BB Dout_pad_6__714 (.I(WRD[6]), .T(n984), .B(RD[6]), .O(Dout_0));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(60[14:16])
    BB Dout_pad_5__715 (.I(WRD[5]), .T(n984), .B(RD[5]), .O(Dout_1));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(60[14:16])
    ORCALUT4 i1_2_lut_rep_16_3_lut (.A(nFWE_c), .B(n1326), .C(MAin_c_1), 
            .Z(n2459)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_16_3_lut.init = 16'h1010;
    BB Dout_pad_4__716 (.I(WRD[4]), .T(n984), .B(RD[4]), .O(Dout_2));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(60[14:16])
    BB Dout_pad_3__717 (.I(WRD[3]), .T(n984), .B(RD[3]), .O(Dout_3));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(60[14:16])
    BB Dout_pad_2__718 (.I(WRD[2]), .T(n984), .B(RD[2]), .O(Dout_4));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(60[14:16])
    ORCALUT4 i1_2_lut_rep_33 (.A(Din_c_3), .B(Din_c_5), .Z(n2476)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_33.init = 16'h8888;
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
    OB LED_pad (.I(LED_N_84), .O(LED));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(22[9:12])
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
    ORCALUT4 i1_2_lut_rep_19_4_lut (.A(n2471), .B(n2272), .C(n2470), .D(FS[11]), 
            .Z(n2462)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i1_2_lut_rep_19_4_lut.init = 16'hfeff;
    CCU2 FS_610_add_4_2 (.A0(FS[0]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(FS[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(GND_net), 
         .COUT1(n2008), .S0(n95), .S1(n94));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_2.INIT0 = 16'h0555;
    defparam FS_610_add_4_2.INIT1 = 16'hfaaa;
    defparam FS_610_add_4_2.INJECT1_0 = "NO";
    defparam FS_610_add_4_2.INJECT1_1 = "NO";
    ORCALUT4 i2057_2_lut (.A(nRowColSel_N_32), .B(RASr2), .Z(n1093)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam i2057_2_lut.init = 16'h4444;
    ORCALUT4 n2454_bdd_3_lut_4_lut (.A(n2461), .B(n2462), .C(InitReady), 
            .D(CmdUFMSDI), .Z(UFMSDI_N_231)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam n2454_bdd_3_lut_4_lut.init = 16'hf202;
    FD1P3IX UFMCLK_416 (.D(UFMCLK_N_224), .SP(RCLK_c_enable_24), .CD(n1846), 
            .CK(RCLK_c), .Q(UFMCLK_c)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(340[9] 410[5])
    defparam UFMCLK_416.GSR = "ENABLED";
    FD1P3AX CmdEnable_405 (.D(CmdEnable_N_248), .SP(PHI2_N_120_enable_7), 
            .CK(PHI2_N_120), .Q(CmdEnable)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(288[9] 337[5])
    defparam CmdEnable_405.GSR = "ENABLED";
    ORCALUT4 i1513_2_lut (.A(nCCAS_c), .B(nFWE_c), .Z(n984)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1513_2_lut.init = 16'heeee;
    ORCALUT4 n1_bdd_4_lut (.A(n1), .B(n1502), .C(nRWE_N_182), .D(nRowColSel_N_35), 
            .Z(nRWE_N_178)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C+!(D))) */ ;
    defparam n1_bdd_4_lut.init = 16'hf0dd;
    CCU2 FS_610_add_4_12 (.A0(FS[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(FS[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2012), 
         .COUT1(n2013), .S0(n85), .S1(n84));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_12.INIT0 = 16'hfaaa;
    defparam FS_610_add_4_12.INIT1 = 16'hfaaa;
    defparam FS_610_add_4_12.INJECT1_0 = "NO";
    defparam FS_610_add_4_12.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_adj_22 (.A(n62), .B(FS[10]), .Z(RCLK_c_enable_25)) /* synthesis lut_function=(A (B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i1_2_lut_adj_22.init = 16'h8888;
    ORCALUT4 i1209_4_lut_then_4_lut (.A(nRCS_N_139), .B(Ready), .C(nRowColSel_N_35), 
            .D(nRowColSel_N_34), .Z(n2480)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(48[6:16])
    defparam i1209_4_lut_then_4_lut.init = 16'h2f23;
    ORCALUT4 nRWE_I_0_455_4_lut (.A(n33), .B(nRWE_N_178), .C(Ready), .D(n2208), 
            .Z(nRWE_N_171)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(232[12] 284[6])
    defparam nRWE_I_0_455_4_lut.init = 16'hcfc5;
    ORCALUT4 nRWE_I_50_1_lut (.A(nRWE_N_177), .Z(nRWE_N_176)) /* synthesis lut_function=(!(A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(255[14] 262[8])
    defparam nRWE_I_50_1_lut.init = 16'h5555;
    CCU2 FS_610_add_4_4 (.A0(FS[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(FS[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2008), 
         .COUT1(n2009), .S0(n93), .S1(n92));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_4.INIT0 = 16'hfaaa;
    defparam FS_610_add_4_4.INIT1 = 16'hfaaa;
    defparam FS_610_add_4_4.INJECT1_0 = "NO";
    defparam FS_610_add_4_4.INJECT1_1 = "NO";
    CCU2 FS_610_add_4_10 (.A0(FS[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(FS[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2011), 
         .COUT1(n2012), .S0(n87), .S1(n86));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_10.INIT0 = 16'hfaaa;
    defparam FS_610_add_4_10.INIT1 = 16'hfaaa;
    defparam FS_610_add_4_10.INJECT1_0 = "NO";
    defparam FS_610_add_4_10.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_adj_23 (.A(nRowColSel_N_33), .B(CASr2), .Z(n11)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(48[6:16])
    defparam i1_2_lut_adj_23.init = 16'hbbbb;
    CCU2 FS_610_add_4_18 (.A0(FS[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(FS[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2015), 
         .S0(n79), .S1(n78));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam FS_610_add_4_18.INIT0 = 16'hfaaa;
    defparam FS_610_add_4_18.INIT1 = 16'hfaaa;
    defparam FS_610_add_4_18.INJECT1_0 = "NO";
    defparam FS_610_add_4_18.INJECT1_1 = "NO";
    ORCALUT4 i5_3_lut_rep_21_4_lut (.A(FS[16]), .B(FS[14]), .C(n2272), 
            .D(n2471), .Z(n2464)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i5_3_lut_rep_21_4_lut.init = 16'hfffe;
    ORCALUT4 i1137_1_lut (.A(nRowColSel_N_35), .Z(n1426)) /* synthesis lut_function=(!(A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam i1137_1_lut.init = 16'h5555;
    ORCALUT4 RASr2_I_0_1_lut (.A(RASr2), .Z(RASr2_N_63)) /* synthesis lut_function=(!(A)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(143[40:46])
    defparam RASr2_I_0_1_lut.init = 16'h5555;
    ORCALUT4 n2452_bdd_2_lut_rep_18_3_lut (.A(n2451), .B(FS[6]), .C(FS[10]), 
            .Z(n2461)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n2452_bdd_2_lut_rep_18_3_lut.init = 16'h0808;
    ORCALUT4 i2_3_lut_4_lut_adj_24 (.A(Din_c_5), .B(n2475), .C(MAin_c_0), 
            .D(ADSubmitted), .Z(n2227)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(309[7:24])
    defparam i2_3_lut_4_lut_adj_24.init = 16'h0004;
    ORCALUT4 i1_2_lut_adj_25 (.A(nRowColSel_N_32), .B(nRowColSel_N_33), 
            .Z(n1503)) /* synthesis lut_function=(A+(B)) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam i1_2_lut_adj_25.init = 16'heeee;
    ORCALUT4 i5_4_lut (.A(FS[15]), .B(FS[13]), .C(FS[16]), .D(FS[11]), 
            .Z(n12)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(136[9:13])
    defparam i5_4_lut.init = 16'h8000;
    ORCALUT4 i1_2_lut_adj_26 (.A(nRCAS_N_165), .B(nRWE_N_177), .Z(n33)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_26.init = 16'heeee;
    ORCALUT4 i1259_3_lut (.A(InitReady), .B(RCKEEN_N_122), .C(Ready), 
            .Z(RCKEEN_N_121)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(84[6:11])
    defparam i1259_3_lut.init = 16'hcaca;
    FD1P3AX InitReady_394 (.D(n2568), .SP(RCLK_c_enable_25), .CK(RCLK_c), 
            .Q(InitReady)) /* synthesis lse_init_val=0 */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(134[9] 138[5])
    defparam InitReady_394.GSR = "ENABLED";
    ORCALUT4 i11_3_lut (.A(n62), .B(n1417), .C(InitReady), .Z(n2164)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(21[6:11])
    defparam i11_3_lut.init = 16'hcaca;
    PFUMX RCKEEN_I_0_445 (.BLUT(RCKEEN_N_123), .ALUT(RCKEEN_N_130), .C0(nRowColSel_N_35), 
          .Z(RCKEEN_N_122));
    ORCALUT4 i1129_3_lut (.A(nUFMCS_c), .B(CmdUFMCS), .C(n2472), .Z(n1417)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(340[9] 410[5])
    defparam i1129_3_lut.init = 16'h3a3a;
    FD1S3IX S_FSM_i2 (.D(n1093), .CK(RCLK_c), .CD(n1426), .Q(nRowColSel_N_34));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam S_FSM_i2.GSR = "ENABLED";
    INV i2134 (.A(nCCAS_c), .Z(nCCAS_N_3));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(11[8:13])
    ORCALUT4 i1988_2_lut (.A(C1Submitted), .B(Din_c_6), .Z(n2284)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1988_2_lut.init = 16'heeee;
    PFUMX i26 (.BLUT(n2227), .ALUT(n2257), .C0(Din_c_2), .Z(n13_adj_2));
    INV i2135 (.A(nCRAS_c), .Z(nCRAS_N_9));   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(11[15:20])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    ORCALUT4 i2_3_lut_adj_27 (.A(n2208), .B(Ready), .C(nRCAS_N_165), .Z(n2209)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/onedrive/documents/github/ram2gs/cpld/ram2gs-spi.v(131[13:16])
    defparam i2_3_lut_adj_27.init = 16'hfefe;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    ORCALUT4 i2032_2_lut_3_lut_4_lut (.A(FS[17]), .B(FS[12]), .C(FS[14]), 
            .D(FS[16]), .Z(n2328)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2032_2_lut_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1976_2_lut (.A(FS[13]), .B(FS[15]), .Z(n2272)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1976_2_lut.init = 16'heeee;
    ORCALUT4 m1_lut (.Z(n2568)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    PFUMX i2099 (.BLUT(n2479), .ALUT(n2480), .C0(n15_adj_1), .Z(n2481));
    PFUMX i26_adj_28 (.BLUT(n2245), .ALUT(n2243), .C0(Din_c_5), .Z(n15));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

