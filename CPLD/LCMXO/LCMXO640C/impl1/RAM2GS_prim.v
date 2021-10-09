// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Mon Aug 16 21:33:30 2021
//
// Verilog Description of module RAM2GS
//

module RAM2GS (PHI2, MAin, CROW, Din, Dout, nCCAS, nCRAS, nFWE, 
            LED, RBA, RA, RD, nRCS, RCLK, RCKE, nRWE, nRRAS, 
            nRCAS, RDQMH, RDQML, nUFMCS, UFMCLK, UFMSDI, UFMSDO) /* synthesis syn_module_defined=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(1[8:14])
    input PHI2;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(8[8:12])
    input [9:0]MAin;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(35[14:18])
    input [1:0]CROW;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(34[14:18])
    input [7:0]Din;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(26[14:17])
    output [7:0]Dout;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(27[15:19])
    input nCCAS;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(16[8:13])
    input nCRAS;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(16[15:20])
    input nFWE;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(36[8:12])
    output LED;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(12[9:12])
    output [1:0]RBA;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(47[19:22])
    output [11:0]RA;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(52[16:18])
    inout [7:0]RD;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(60[14:16])
    output nRCS;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(46[13:17])
    input RCLK;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(41[8:12])
    output RCKE;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(45[13:17])
    output nRWE;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(46[45:49])
    output nRRAS;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(46[23:28])
    output nRCAS;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(46[34:39])
    output RDQMH;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(56[16:21])
    output RDQML;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(56[9:14])
    output nUFMCS;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(63[13:19])
    output UFMCLK;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(64[13:19])
    output UFMSDI;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(65[13:19])
    input UFMSDO;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(66[8:14])
    
    wire PHI2_c /* synthesis is_clock=1, SET_AS_NETWORK=PHI2_c */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(8[8:12])
    wire nCCAS_c /* synthesis is_clock=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(16[8:13])
    wire nCRAS_c /* synthesis is_clock=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(16[15:20])
    wire RCLK_c /* synthesis SET_AS_NETWORK=RCLK_c, is_clock=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(41[8:12])
    wire nCCAS_N_3 /* synthesis is_inv_clock=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(27[15:19])
    wire nCRAS_N_9 /* synthesis is_inv_clock=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(47[19:22])
    wire PHI2_N_114 /* synthesis is_inv_clock=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(38[6:13])
    
    wire GND_net, VCC_net, LEDEN, PHI2r, PHI2r2, PHI2r3, RASr, 
        RASr2, RASr3, CASr, CASr2, CASr3, FWEr, CBR, Din_c_7, 
        Din_c_6, Din_c_5, Din_c_4, Din_c_3, Din_c_2, Din_c_1, Din_c_0, 
        n2131, n33, PHI2_N_114_enable_2, n1;
    wire [7:0]Bank;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(31[12:16])
    
    wire CROW_c_1, CROW_c_0, MAin_c_9, MAin_c_8, MAin_c_7, MAin_c_6, 
        MAin_c_5, MAin_c_4, MAin_c_3, MAin_c_2, MAin_c_1, MAin_c_0, 
        nFWE_c, n8MEGEN, XOR8MEG, RCKEEN, RCKE_c, nRCS_c, nRRAS_c, 
        nRCAS_c, nRWE_c, RBA_c_1, RBA_c_0, nRowColSel, RA_c, n980;
    wire [9:0]RowA;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(51[12:16])
    
    wire RA_c_9, RA_c_8, RA_c_7, RA_c_6, RA_c_5, RA_c_4, RA_c_3, 
        RA_c_2, RA_c_1, RA_c_0, RDQML_c, RDQMH_c;
    wire [7:0]WRD;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(59[12:15])
    
    wire nUFMCS_c, UFMCLK_c, UFMSDI_c, UFMSDO_c, C1Submitted, ADSubmitted, 
        CmdEnable, CmdSubmitted, Cmdn8MEGEN, CmdUFMCLK, CmdUFMSDI, 
        CmdUFMCS, InitReady, Ready;
    wire [17:0]FS;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(86[13:15])
    
    wire LED_N_90, RA11_N_180, n2164, n1895, n2294, n4, PHI2_N_114_enable_6, 
        n1881, RASr2_N_63, RCKE_N_128, nRowColSel_N_35, nRWE_N_178, 
        RCKEEN_N_126, nRowColSel_N_34, nRowColSel_N_33, nRowColSel_N_32, 
        nRowColSel_N_28, n1880, n4_adj_1, n2286, RCKEEN_N_117, nRWE_N_174, 
        RCKEEN_N_116, nRCS_N_135, nRCAS_N_161, nRWE_N_173, nRWE_N_172, 
        n1377, Ready_N_272, n2287, n26, Ready_N_268, nRCS_N_132, 
        nRCAS_N_157, nRWE_N_167, RCKEEN_N_115, n2290, n2289, n1361, 
        n1369, ADSubmitted_N_234, CmdEnable_N_236, C1Submitted_N_225, 
        XOR8MEG_N_112, n2098, PHI2_N_114_enable_1, n2248, Cmdn8MEGEN_N_248, 
        RCLK_c_enable_7, n2244, n2117, LEDEN_N_88, RCLK_c_enable_6, 
        UFMSDO_N_74, n2243, RCLK_c_enable_24, n8MEGEN_N_94, UFMCLK_N_212, 
        UFMSDI_N_219, n2242, n2114, n2080, PHI2_N_114_enable_7, n12, 
        n699, n700, n701, n702, n703, n705, n706, n707, n708, 
        n709, n710, n711, n11, n2076, n2119, n1368, n12_adj_2, 
        n1878, PHI2_N_114_enable_8, n2308, n2291, n2307, n11_adj_3, 
        n973, n1135, n78, n79, n80, n81, n82, n83, n84, n85, 
        n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, 
        n1348, n50, n1877, RCLK_c_enable_23, n1876, n1875, n2293, 
        n2306, RCLK_c_enable_4, n2170, RCLK_c_enable_25, RCLK_c_enable_3, 
        n2128, n2103, n2304, n2386, n1879, n1874, n2310, n974, 
        n975, n962, n976, n2168, n977, n2245, n978, n2122, n979, 
        Dout_c, n2166, n2302, n2108, n2301, n2387, n1285, n2300, 
        n1628, n1627, n2299, n18, n2385, n2309, n2298, n2292, 
        n2297, n2154, n10, n2296, n2295;
    
    VHI i2 (.Z(VCC_net));
    INV i1963 (.A(nCCAS_c), .Z(nCCAS_N_3));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(16[8:13])
    FD1S3AX PHI2r2_350 (.D(PHI2r), .CK(RCLK_c), .Q(PHI2r2));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(91[9] 95[5])
    defparam PHI2r2_350.GSR = "ENABLED";
    ORCALUT4 i2_3_lut_4_lut (.A(XOR8MEG_N_112), .B(n2298), .C(n2296), 
            .D(Din_c_5), .Z(PHI2_N_114_enable_7)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i1_2_lut_3_lut (.A(FS[11]), .B(n2300), .C(InitReady), .Z(n4)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(328[21:37])
    defparam i1_2_lut_3_lut.init = 16'hfdfd;
    FD1S3AX PHI2r3_351 (.D(PHI2r2), .CK(RCLK_c), .Q(PHI2r3));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(91[9] 95[5])
    defparam PHI2r3_351.GSR = "ENABLED";
    FD1S3AX RASr_352 (.D(nCRAS_N_9), .CK(RCLK_c), .Q(RASr));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(91[9] 95[5])
    defparam RASr_352.GSR = "ENABLED";
    FD1S3AX RASr2_353 (.D(RASr), .CK(RCLK_c), .Q(RASr2));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(91[9] 95[5])
    defparam RASr2_353.GSR = "ENABLED";
    FD1S3AX RASr3_354 (.D(RASr2), .CK(RCLK_c), .Q(RASr3));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(91[9] 95[5])
    defparam RASr3_354.GSR = "ENABLED";
    FD1S3AX CASr_355 (.D(nCCAS_N_3), .CK(RCLK_c), .Q(CASr));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(91[9] 95[5])
    defparam CASr_355.GSR = "ENABLED";
    FD1S3AX CASr2_356 (.D(CASr), .CK(RCLK_c), .Q(CASr2));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(91[9] 95[5])
    defparam CASr2_356.GSR = "ENABLED";
    FD1S3AX CASr3_357 (.D(CASr2), .CK(RCLK_c), .Q(CASr3));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(91[9] 95[5])
    defparam CASr3_357.GSR = "ENABLED";
    FD1S3IX RA11_358 (.D(RA11_N_180), .CK(PHI2_c), .CD(n2307), .Q(RA_c));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(98[9] 102[5])
    defparam RA11_358.GSR = "ENABLED";
    FD1S3IX RowA_i0 (.D(MAin_c_0), .CK(nCRAS_N_9), .CD(n2307), .Q(RowA[0]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(105[9] 120[5])
    defparam RowA_i0.GSR = "ENABLED";
    FD1S3AX WRD_i0 (.D(Din_c_0), .CK(nCCAS_N_3), .Q(WRD[0]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(123[9] 125[5])
    defparam WRD_i0.GSR = "ENABLED";
    FD1S3AX FWEr_362 (.D(n2306), .CK(nCRAS_N_9), .Q(FWEr));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(105[9] 120[5])
    defparam FWEr_362.GSR = "ENABLED";
    FD1S3AX CBR_363 (.D(nCCAS_N_3), .CK(nCRAS_N_9), .Q(CBR));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(105[9] 120[5])
    defparam CBR_363.GSR = "ENABLED";
    FD1S3IX ADSubmitted_380 (.D(n1361), .CK(PHI2_N_114), .CD(C1Submitted_N_225), 
            .Q(ADSubmitted)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(288[9] 324[5])
    defparam ADSubmitted_380.GSR = "ENABLED";
    ORCALUT4 MAin_9__I_0_400_i5_3_lut (.A(RowA[4]), .B(MAin_c_4), .C(nRowColSel), 
            .Z(RA_c_4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(55[19:54])
    defparam MAin_9__I_0_400_i5_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut (.A(FS[10]), .B(n2076), .Z(RCLK_c_enable_6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    CCU2 FS_577_add_4_10 (.A0(FS[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(FS[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1877), 
         .COUT1(n1878), .S0(n87), .S1(n86));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577_add_4_10.INIT0 = 16'hfaaa;
    defparam FS_577_add_4_10.INIT1 = 16'hfaaa;
    defparam FS_577_add_4_10.INJECT1_0 = "NO";
    defparam FS_577_add_4_10.INJECT1_1 = "NO";
    FD1S3AX RCKE_368 (.D(RCKE_N_128), .CK(RCLK_c), .Q(RCKE_c)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(141[9] 144[5])
    defparam RCKE_368.GSR = "ENABLED";
    FD1P3AY nRCS_369 (.D(nRCS_N_132), .SP(RCLK_c_enable_4), .CK(RCLK_c), 
            .Q(nRCS_c)) /* synthesis lse_init_val=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(147[9] 285[5])
    defparam nRCS_369.GSR = "ENABLED";
    FD1S3IX nRowColSel_375 (.D(n1368), .CK(RCLK_c), .CD(n2299), .Q(nRowColSel));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(147[9] 285[5])
    defparam nRowColSel_375.GSR = "ENABLED";
    ORCALUT4 n1_bdd_4_lut (.A(n1), .B(n1627), .C(nRWE_N_178), .D(nRowColSel_N_35), 
            .Z(nRWE_N_174)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C+!(D))) */ ;
    defparam n1_bdd_4_lut.init = 16'hf0dd;
    ORCALUT4 i2_3_lut_rep_31 (.A(PHI2r3), .B(CmdSubmitted), .C(PHI2r2), 
            .Z(n2308)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_rep_31.init = 16'h0808;
    ORCALUT4 i1_2_lut_2_lut_4_lut (.A(PHI2r3), .B(CmdSubmitted), .C(PHI2r2), 
            .D(InitReady), .Z(RCLK_c_enable_24)) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A (D))) */ ;
    defparam i1_2_lut_2_lut_4_lut.init = 16'h08ff;
    CCU2 FS_577_add_4_8 (.A0(FS[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(FS[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1876), 
         .COUT1(n1877), .S0(n89), .S1(n88));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577_add_4_8.INIT0 = 16'hfaaa;
    defparam FS_577_add_4_8.INIT1 = 16'hfaaa;
    defparam FS_577_add_4_8.INJECT1_0 = "NO";
    defparam FS_577_add_4_8.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut (.A(nRowColSel_N_34), .B(n1), .C(n2304), .D(nRowColSel_N_33), 
            .Z(n2117)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C+!(D))))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(84[6:11])
    defparam i1_4_lut.init = 16'h0544;
    ORCALUT4 i3_4_lut (.A(MAin_c_1), .B(MAin_c_0), .C(CmdEnable), .D(n2290), 
            .Z(XOR8MEG_N_112)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i3_4_lut.init = 16'h0040;
    ORCALUT4 i4_3_lut_4_lut (.A(FS[11]), .B(n2300), .C(FS[6]), .D(n2168), 
            .Z(n11)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(328[21:37])
    defparam i4_3_lut_4_lut.init = 16'hfdff;
    FD1S3IX S_FSM_i2 (.D(n1135), .CK(RCLK_c), .CD(n2302), .Q(nRowColSel_N_34));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(131[13:16])
    defparam S_FSM_i2.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_adj_1 (.A(nRowColSel), .B(n1627), .C(nRowColSel_N_28), 
            .D(nRowColSel_N_32), .Z(n1368)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(131[13:16])
    defparam i1_4_lut_adj_1.init = 16'hcfee;
    FD1S3AY nRRAS_370 (.D(n33), .CK(RCLK_c), .Q(nRRAS_c)) /* synthesis lse_init_val=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(147[9] 285[5])
    defparam nRRAS_370.GSR = "ENABLED";
    ORCALUT4 i1055_3_lut_4_lut (.A(MAin_c_1), .B(n2290), .C(ADSubmitted), 
            .D(ADSubmitted_N_234), .Z(n1361)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1055_3_lut_4_lut.init = 16'hffd0;
    ORCALUT4 i2_3_lut (.A(FWEr), .B(CASr3), .C(CBR), .Z(nRowColSel_N_28)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(230[16:37])
    defparam i2_3_lut.init = 16'hfdfd;
    BB Dout_pad_7__688 (.I(WRD[7]), .T(n962), .B(RD[7]), .O(n973));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(60[14:16])
    FD1P3AY nRCAS_371 (.D(nRCAS_N_157), .SP(RCLK_c_enable_4), .CK(RCLK_c), 
            .Q(nRCAS_c)) /* synthesis lse_init_val=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(147[9] 285[5])
    defparam nRCAS_371.GSR = "ENABLED";
    FD1P3AY nRWE_372 (.D(nRWE_N_167), .SP(RCLK_c_enable_3), .CK(RCLK_c), 
            .Q(nRWE_c)) /* synthesis lse_init_val=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(147[9] 285[5])
    defparam nRWE_372.GSR = "ENABLED";
    FD1S3JX RA10_373 (.D(n2128), .CK(RCLK_c), .PD(nRWE_N_172), .Q(n980));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(147[9] 285[5])
    defparam RA10_373.GSR = "ENABLED";
    FD1P3AX RCKEEN_374 (.D(RCKEEN_N_115), .SP(RCLK_c_enable_4), .CK(RCLK_c), 
            .Q(RCKEEN));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(147[9] 285[5])
    defparam RCKEEN_374.GSR = "ENABLED";
    ORCALUT4 i2_4_lut (.A(n2122), .B(n2295), .C(Din_c_2), .D(n2131), 
            .Z(C1Submitted_N_225)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_4_lut.init = 16'h0008;
    FD1S3IX RBA__i1 (.D(CROW_c_0), .CK(nCRAS_N_9), .CD(n2307), .Q(RBA_c_0));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(105[9] 120[5])
    defparam RBA__i1.GSR = "ENABLED";
    ORCALUT4 Din_7__I_0_442_i6_2_lut_rep_32 (.A(Din_c_6), .B(Din_c_7), .Z(n2385)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(312[17:31])
    defparam Din_7__I_0_442_i6_2_lut_rep_32.init = 16'heeee;
    ORCALUT4 i1248_4_lut (.A(FS[5]), .B(n2308), .C(InitReady), .D(n2119), 
            .Z(RCLK_c_enable_7)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(83[6:15])
    defparam i1248_4_lut.init = 16'hc5c0;
    ORCALUT4 i2_3_lut_4_lut_adj_2 (.A(nRowColSel_N_32), .B(n2299), .C(nRowColSel_N_34), 
            .D(nRowColSel_N_33), .Z(RCLK_c_enable_4)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(131[13:16])
    defparam i2_3_lut_4_lut_adj_2.init = 16'hfffe;
    ORCALUT4 i1437_4_lut (.A(UFMSDO_c), .B(Cmdn8MEGEN), .C(FS[10]), .D(n4), 
            .Z(n8MEGEN_N_94)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B+!((D)+!C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(83[6:15])
    defparam i1437_4_lut.init = 16'hcc5c;
    FD1P3AX IS_FSM__i0 (.D(Ready_N_272), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(nRCS_N_135));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(263[11:15])
    defparam IS_FSM__i0.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_adj_3 (.A(RASr2), .B(RCKE_c), .Z(nRWE_N_178)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(91[9] 95[5])
    defparam i1_2_lut_adj_3.init = 16'hbbbb;
    ORCALUT4 i2_4_lut_adj_4 (.A(n2294), .B(FS[10]), .C(n11), .D(n12), 
            .Z(n2119)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(328[21:37])
    defparam i2_4_lut_adj_4.init = 16'h0008;
    FD1P3JX C1Submitted_379 (.D(n2386), .SP(PHI2_N_114_enable_1), .PD(C1Submitted_N_225), 
            .CK(PHI2_N_114), .Q(C1Submitted)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(288[9] 324[5])
    defparam C1Submitted_379.GSR = "ENABLED";
    FD1S3JX nUFMCS_388 (.D(n1348), .CK(RCLK_c), .PD(LEDEN_N_88), .Q(nUFMCS_c)) /* synthesis lse_init_val=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(327[9] 396[5])
    defparam nUFMCS_388.GSR = "ENABLED";
    ORCALUT4 m1_lut (.Z(n2387)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    ORCALUT4 i2_4_lut_adj_5 (.A(n2108), .B(MAin_c_1), .C(C1Submitted), 
            .D(MAin_c_0), .Z(n2098)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_4_lut_adj_5.init = 16'h0800;
    ORCALUT4 i5_4_lut (.A(FS[9]), .B(FS[4]), .C(FS[8]), .D(FS[7]), .Z(n12)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i5_4_lut.init = 16'hfffb;
    FD1S3AX FS_577__i0 (.D(n95), .CK(RCLK_c), .Q(FS[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577__i0.GSR = "ENABLED";
    ORCALUT4 i2_3_lut_adj_6 (.A(n2122), .B(ADSubmitted), .C(MAin_c_0), 
            .Z(n2080)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i2_3_lut_adj_6.init = 16'h0202;
    ORCALUT4 i1419_2_lut (.A(MAin_c_9), .B(nRowColSel), .Z(RDQMH_c)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(58[17:46])
    defparam i1419_2_lut.init = 16'hbbbb;
    ORCALUT4 n50_bdd_4_lut_1911 (.A(n50), .B(RASr2), .C(RCKE_c), .D(nRowColSel_N_35), 
            .Z(n2242)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (B+(C+!(D))))) */ ;
    defparam n50_bdd_4_lut_1911.init = 16'h03aa;
    ORCALUT4 i1893_2_lut (.A(MAin_c_9), .B(nRowColSel), .Z(RDQML_c)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1893_2_lut.init = 16'h7777;
    FD1S3AX Bank_i0 (.D(Din_c_0), .CK(PHI2_c), .Q(Bank[0]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(98[9] 102[5])
    defparam Bank_i0.GSR = "ENABLED";
    ORCALUT4 i1858_4_lut (.A(FS[1]), .B(FS[0]), .C(FS[2]), .D(FS[3]), 
            .Z(n2168)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1858_4_lut.init = 16'h8000;
    ORCALUT4 i1_2_lut_3_lut_adj_7 (.A(MAin_c_1), .B(n1285), .C(MAin_c_0), 
            .Z(n2131)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(80[15:31])
    defparam i1_2_lut_3_lut_adj_7.init = 16'hfdfd;
    ORCALUT4 i22_4_lut (.A(FS[4]), .B(CmdUFMCLK), .C(InitReady), .D(n2076), 
            .Z(UFMCLK_N_212)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(83[6:15])
    defparam i22_4_lut.init = 16'hc0ca;
    ORCALUT4 i5_4_lut_adj_8 (.A(FS[14]), .B(FS[16]), .C(FS[13]), .D(FS[12]), 
            .Z(n12_adj_2)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut_adj_8.init = 16'h8000;
    ORCALUT4 i1889_4_lut_then_4_lut (.A(n2117), .B(RCKE_c), .C(RASr2), 
            .D(nRowColSel_N_35), .Z(n2310)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (D)+!B (C (D))))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(84[6:11])
    defparam i1889_4_lut_then_4_lut.init = 16'h0355;
    ORCALUT4 i1889_4_lut_else_4_lut (.A(InitReady), .B(nRCS_N_135), .C(RASr2), 
            .D(nRowColSel_N_35), .Z(n2309)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(84[6:11])
    defparam i1889_4_lut_else_4_lut.init = 16'hdfff;
    CCU2 FS_577_add_4_18 (.A0(FS[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(FS[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1881), 
         .S0(n79), .S1(n78));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577_add_4_18.INIT0 = 16'hfaaa;
    defparam FS_577_add_4_18.INIT1 = 16'hfaaa;
    defparam FS_577_add_4_18.INJECT1_0 = "NO";
    defparam FS_577_add_4_18.INJECT1_1 = "NO";
    ORCALUT4 UFMSDO_I_0_1_lut (.A(UFMSDO_c), .Z(UFMSDO_N_74)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(378[53:60])
    defparam UFMSDO_I_0_1_lut.init = 16'h5555;
    FD1S3IX S_FSM_i3 (.D(n1135), .CK(RCLK_c), .CD(n1377), .Q(nRowColSel_N_33));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(131[13:16])
    defparam S_FSM_i3.GSR = "ENABLED";
    ORCALUT4 i1897_2_lut_rep_14_3_lut (.A(FS[11]), .B(n2300), .C(InitReady), 
            .Z(n2291)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(328[21:37])
    defparam i1897_2_lut_rep_14_3_lut.init = 16'h0101;
    ORCALUT4 i1878_2_lut_3_lut_4_lut (.A(FS[11]), .B(n2300), .C(FS[10]), 
            .D(InitReady), .Z(LEDEN_N_88)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(328[21:37])
    defparam i1878_2_lut_3_lut_4_lut.init = 16'h0001;
    ORCALUT4 i1884_4_lut (.A(MAin_c_0), .B(n2290), .C(n2286), .D(MAin_c_1), 
            .Z(PHI2_N_114_enable_8)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+!(D))))) */ ;
    defparam i1884_4_lut.init = 16'h0302;
    FD1S3AX PHI2r_349 (.D(PHI2_c), .CK(RCLK_c), .Q(PHI2r));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(91[9] 95[5])
    defparam PHI2r_349.GSR = "ENABLED";
    ORCALUT4 i2_3_lut_rep_21_4_lut (.A(Din_c_6), .B(Din_c_7), .C(Din_c_5), 
            .D(Din_c_4), .Z(n2298)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(312[17:31])
    defparam i2_3_lut_rep_21_4_lut.init = 16'hfffe;
    ORCALUT4 i1830_2_lut_rep_13 (.A(nFWE_c), .B(n1285), .Z(n2290)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1830_2_lut_rep_13.init = 16'heeee;
    PFUMX i1912 (.BLUT(n2243), .ALUT(n2242), .C0(Ready), .Z(n2244));
    FD1S3AX S_FSM_i1 (.D(RASr2_N_63), .CK(RCLK_c), .Q(nRowColSel_N_35));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(131[13:16])
    defparam S_FSM_i1.GSR = "ENABLED";
    ORCALUT4 i1886_2_lut (.A(nRowColSel_N_32), .B(RASr2), .Z(n1135)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(131[13:16])
    defparam i1886_2_lut.init = 16'h4444;
    ORCALUT4 n50_bdd_4_lut (.A(n50), .B(InitReady), .C(RASr2), .D(nRowColSel_N_35), 
            .Z(n2243)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (C)))) */ ;
    defparam n50_bdd_4_lut.init = 16'h3fbf;
    ORCALUT4 i1034_2_lut (.A(ADSubmitted_N_234), .B(C1Submitted_N_225), 
            .Z(CmdEnable_N_236)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1034_2_lut.init = 16'heeee;
    ORCALUT4 i2_3_lut_4_lut_adj_9 (.A(Din_c_6), .B(Din_c_7), .C(XOR8MEG_N_112), 
            .D(Din_c_4), .Z(PHI2_N_114_enable_6)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(312[17:31])
    defparam i2_3_lut_4_lut_adj_9.init = 16'h1000;
    ORCALUT4 i1832_2_lut_rep_19_3_lut (.A(Din_c_6), .B(Din_c_7), .C(Din_c_4), 
            .Z(n2296)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(312[17:31])
    defparam i1832_2_lut_rep_19_3_lut.init = 16'hefef;
    FD1S3IX S_FSM_i4 (.D(n1628), .CK(RCLK_c), .CD(RASr2_N_63), .Q(nRowColSel_N_32));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(131[13:16])
    defparam S_FSM_i4.GSR = "ENABLED";
    ORCALUT4 i1424_2_lut_rep_27 (.A(FWEr), .B(CBR), .Z(n2304)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1424_2_lut_rep_27.init = 16'heeee;
    ORCALUT4 i2_3_lut_adj_10 (.A(Din_c_3), .B(Din_c_6), .C(Din_c_5), .Z(n2122)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_10.init = 16'h0404;
    ORCALUT4 i1429_2_lut_3_lut (.A(FWEr), .B(CBR), .C(RASr2), .Z(RCKEEN_N_126)) /* synthesis lut_function=(!(A (C)+!A (B (C)))) */ ;
    defparam i1429_2_lut_3_lut.init = 16'h1f1f;
    ORCALUT4 i4_4_lut (.A(FS[14]), .B(FS[13]), .C(FS[12]), .D(FS[15]), 
            .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(328[21:37])
    defparam i4_4_lut.init = 16'hfffe;
    ORCALUT4 i5_3_lut_rep_23 (.A(FS[16]), .B(n10), .C(FS[17]), .Z(n2300)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(328[21:37])
    defparam i5_3_lut_rep_23.init = 16'hfefe;
    ORCALUT4 i1_4_lut_adj_11 (.A(n2244), .B(n2297), .C(n18), .D(Ready), 
            .Z(n33)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(84[6:11])
    defparam i1_4_lut_adj_11.init = 16'hfaee;
    ORCALUT4 i1_2_lut_rep_16_4_lut (.A(FS[16]), .B(n10), .C(FS[17]), .D(FS[11]), 
            .Z(n2293)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(328[21:37])
    defparam i1_2_lut_rep_16_4_lut.init = 16'hfeff;
    ORCALUT4 i3_4_lut_adj_12 (.A(CBR), .B(FWEr), .C(CASr2), .D(CASr3), 
            .Z(n1)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i3_4_lut_adj_12.init = 16'h0040;
    ORCALUT4 i1_2_lut_adj_13 (.A(nRowColSel_N_34), .B(nRowColSel_N_33), 
            .Z(n1627)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(131[13:16])
    defparam i1_2_lut_adj_13.init = 16'heeee;
    ORCALUT4 i1420_2_lut (.A(nCCAS_c), .B(nFWE_c), .Z(n962)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1420_2_lut.init = 16'heeee;
    ORCALUT4 i1_1_lut_rep_29 (.A(nFWE_c), .Z(n2306)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut_rep_29.init = 16'h5555;
    ORCALUT4 Cmdn8MEGEN_I_84_4_lut (.A(Din_c_0), .B(n8MEGEN), .C(Din_c_5), 
            .D(n2296), .Z(Cmdn8MEGEN_N_248)) /* synthesis lut_function=(A (B (C+(D)))+!A (B+!(C+(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(316[13] 322[7])
    defparam Cmdn8MEGEN_I_84_4_lut.init = 16'hccc5;
    ORCALUT4 i1069_1_lut (.A(nRowColSel_N_34), .Z(n1377)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(131[13:16])
    defparam i1069_1_lut.init = 16'h5555;
    ORCALUT4 n2080_bdd_4_lut (.A(n2080), .B(n2098), .C(Din_c_2), .D(n2114), 
            .Z(n2286)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n2080_bdd_4_lut.init = 16'hca00;
    ORCALUT4 RASr2_I_0_1_lut (.A(RASr2), .Z(RASr2_N_63)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(143[40:46])
    defparam RASr2_I_0_1_lut.init = 16'h5555;
    ORCALUT4 i847_2_lut_4_lut (.A(n2385), .B(Din_c_4), .C(Din_c_5), .D(XOR8MEG_N_112), 
            .Z(PHI2_N_114_enable_2)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(310[8:22])
    defparam i847_2_lut_4_lut.init = 16'h0100;
    ORCALUT4 i1_4_lut_adj_14 (.A(n2108), .B(MAin_c_0), .C(n4_adj_1), .D(n2289), 
            .Z(ADSubmitted_N_234)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(309[7:24])
    defparam i1_4_lut_adj_14.init = 16'h0080;
    ORCALUT4 i1_2_lut_adj_15 (.A(nRowColSel_N_33), .B(CASr2), .Z(n11_adj_3)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(48[6:16])
    defparam i1_2_lut_adj_15.init = 16'hbbbb;
    FD1S3AX FS_577__i17 (.D(n78), .CK(RCLK_c), .Q(FS[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577__i17.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_3_lut (.A(nFWE_c), .B(Din_c_2), .C(n2114), 
            .Z(n4_adj_1)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_3_lut.init = 16'h4040;
    FD1S3AX FS_577__i16 (.D(n79), .CK(RCLK_c), .Q(FS[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577__i16.GSR = "ENABLED";
    FD1S3AX FS_577__i15 (.D(n80), .CK(RCLK_c), .Q(FS[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577__i15.GSR = "ENABLED";
    ORCALUT4 nRWE_I_0_428_4_lut (.A(n2164), .B(nRWE_N_174), .C(Ready), 
            .D(n2292), .Z(nRWE_N_167)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(232[12] 284[6])
    defparam nRWE_I_0_428_4_lut.init = 16'hcfc5;
    ORCALUT4 i1257_3_lut (.A(n1895), .B(CmdUFMSDI), .C(InitReady), .Z(UFMSDI_N_219)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(83[6:15])
    defparam i1257_3_lut.init = 16'hcaca;
    ORCALUT4 RCKE_I_0_423_4_lut (.A(RASr), .B(RCKEEN), .C(RASr2), .D(RASr3), 
            .Z(RCKE_N_128)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(143[11:55])
    defparam RCKE_I_0_423_4_lut.init = 16'hcfc8;
    FD1P3AX InitReady_367 (.D(n2387), .SP(RCLK_c_enable_6), .CK(RCLK_c), 
            .Q(InitReady)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(134[9] 138[5])
    defparam InitReady_367.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_adj_16 (.A(nRowColSel_N_32), .B(nRowColSel_N_33), 
            .Z(n1628)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(131[13:16])
    defparam i1_2_lut_adj_16.init = 16'heeee;
    ORCALUT4 i1854_2_lut (.A(nRCAS_N_161), .B(nRWE_N_173), .Z(n2164)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1854_2_lut.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_17_4_lut (.A(FS[16]), .B(n10), .C(FS[17]), .D(FS[11]), 
            .Z(n2294)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(328[21:37])
    defparam i1_2_lut_rep_17_4_lut.init = 16'hfffe;
    ORCALUT4 i1881_2_lut_rep_24 (.A(RASr2), .B(InitReady), .Z(n2301)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1881_2_lut_rep_24.init = 16'h7777;
    GSR GSR_INST (.GSR(VCC_net));
    ORCALUT4 i1_2_lut_rep_18_2_lut (.A(nFWE_c), .B(n2114), .Z(n2295)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_18_2_lut.init = 16'h4444;
    FD1S3AX FS_577__i14 (.D(n81), .CK(RCLK_c), .Q(FS[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577__i14.GSR = "ENABLED";
    ORCALUT4 i2_3_lut_3_lut (.A(InitReady), .B(FS[5]), .C(n2119), .Z(RCLK_c_enable_25)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(384[16:26])
    defparam i2_3_lut_3_lut.init = 16'h4040;
    ORCALUT4 i2_3_lut_adj_17 (.A(Din_c_6), .B(Din_c_5), .C(Din_c_3), .Z(n2108)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(309[7:24])
    defparam i2_3_lut_adj_17.init = 16'h4040;
    ORCALUT4 i2_4_lut_adj_18 (.A(FS[6]), .B(n2293), .C(n2103), .D(FS[10]), 
            .Z(n1895)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam i2_4_lut_adj_18.init = 16'h0020;
    ORCALUT4 i1_4_lut_adj_19 (.A(FS[8]), .B(FS[7]), .C(FS[5]), .D(FS[9]), 
            .Z(n2103)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(339[4] 372[11])
    defparam i1_4_lut_adj_19.init = 16'h1044;
    FD1P3AX XOR8MEG_381 (.D(Din_c_0), .SP(PHI2_N_114_enable_2), .CK(PHI2_N_114), 
            .Q(XOR8MEG)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(288[9] 324[5])
    defparam XOR8MEG_381.GSR = "ENABLED";
    FD1P3AX n8MEGEN_391 (.D(n8MEGEN_N_94), .SP(RCLK_c_enable_7), .CK(RCLK_c), 
            .Q(n8MEGEN)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(327[9] 396[5])
    defparam n8MEGEN_391.GSR = "ENABLED";
    FD1P3AX Ready_377 (.D(n2387), .SP(Ready_N_268), .CK(RCLK_c), .Q(Ready)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(147[9] 285[5])
    defparam Ready_377.GSR = "ENABLED";
    ORCALUT4 MAin_9__I_0_400_i2_3_lut (.A(RowA[1]), .B(MAin_c_1), .C(nRowColSel), 
            .Z(RA_c_1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(55[19:54])
    defparam MAin_9__I_0_400_i2_3_lut.init = 16'hcaca;
    FD1P3AX CmdUFMCLK_386 (.D(Din_c_1), .SP(PHI2_N_114_enable_7), .CK(PHI2_N_114), 
            .Q(CmdUFMCLK)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(288[9] 324[5])
    defparam CmdUFMCLK_386.GSR = "ENABLED";
    FD1P3AX CmdUFMSDI_387 (.D(Din_c_0), .SP(PHI2_N_114_enable_7), .CK(PHI2_N_114), 
            .Q(CmdUFMSDI)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(288[9] 324[5])
    defparam CmdUFMSDI_387.GSR = "ENABLED";
    FD1P3AX Cmdn8MEGEN_383 (.D(Cmdn8MEGEN_N_248), .SP(PHI2_N_114_enable_6), 
            .CK(PHI2_N_114), .Q(Cmdn8MEGEN)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(288[9] 324[5])
    defparam Cmdn8MEGEN_383.GSR = "ENABLED";
    FD1P3AX CmdSubmitted_384 (.D(n2387), .SP(PHI2_N_114_enable_6), .CK(PHI2_N_114), 
            .Q(CmdSubmitted)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(288[9] 324[5])
    defparam CmdSubmitted_384.GSR = "ENABLED";
    CCU2 FS_577_add_4_6 (.A0(FS[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(FS[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1875), 
         .COUT1(n1876), .S0(n91), .S1(n90));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577_add_4_6.INIT0 = 16'hfaaa;
    defparam FS_577_add_4_6.INIT1 = 16'hfaaa;
    defparam FS_577_add_4_6.INJECT1_0 = "NO";
    defparam FS_577_add_4_6.INJECT1_1 = "NO";
    FD1P3AX CmdUFMCS_385 (.D(Din_c_2), .SP(PHI2_N_114_enable_7), .CK(PHI2_N_114), 
            .Q(CmdUFMCS)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(288[9] 324[5])
    defparam CmdUFMCS_385.GSR = "ENABLED";
    FD1S3AX FS_577__i13 (.D(n82), .CK(RCLK_c), .Q(FS[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577__i13.GSR = "ENABLED";
    ORCALUT4 i1875_2_lut (.A(nCRAS_c), .B(LEDEN), .Z(LED_N_90)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(13[15:34])
    defparam i1875_2_lut.init = 16'hbbbb;
    FD1S3AX FS_577__i12 (.D(n83), .CK(RCLK_c), .Q(FS[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577__i12.GSR = "ENABLED";
    PFUMX RCKEEN_I_0_419 (.BLUT(RCKEEN_N_117), .ALUT(RCKEEN_N_126), .C0(nRowColSel_N_35), 
          .Z(RCKEEN_N_116));
    ORCALUT4 i1856_4_lut (.A(Bank[0]), .B(Bank[5]), .C(MAin_c_2), .D(Bank[6]), 
            .Z(n2166)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1856_4_lut.init = 16'h8000;
    FD1S3AX FS_577__i11 (.D(n84), .CK(RCLK_c), .Q(FS[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577__i11.GSR = "ENABLED";
    ORCALUT4 i1844_2_lut (.A(Bank[7]), .B(MAin_c_4), .Z(n2154)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1844_2_lut.init = 16'h8888;
    ORCALUT4 RA11_I_53_3_lut (.A(Din_c_6), .B(XOR8MEG), .C(n8MEGEN), .Z(RA11_N_180)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(99[22:51])
    defparam RA11_I_53_3_lut.init = 16'hc6c6;
    ORCALUT4 Ready_bdd_3_lut_1922 (.A(nRCAS_N_161), .B(nRCS_N_135), .C(InitReady), 
            .Z(n2248)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam Ready_bdd_3_lut_1922.init = 16'hefef;
    FD1P3IX UFMSDI_390 (.D(UFMSDI_N_219), .SP(RCLK_c_enable_24), .CD(n2291), 
            .CK(RCLK_c), .Q(UFMSDI_c)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(327[9] 396[5])
    defparam UFMSDI_390.GSR = "ENABLED";
    ORCALUT4 MAin_9__I_0_400_i10_3_lut (.A(RowA[9]), .B(MAin_c_9), .C(nRowColSel), 
            .Z(RA_c_9)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(55[19:54])
    defparam MAin_9__I_0_400_i10_3_lut.init = 16'hcaca;
    ORCALUT4 i604_1_lut_rep_30 (.A(Ready), .Z(n2307)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(147[9] 285[5])
    defparam i604_1_lut_rep_30.init = 16'h5555;
    FD1S3AX FS_577__i10 (.D(n85), .CK(RCLK_c), .Q(FS[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577__i10.GSR = "ENABLED";
    FD1S3AX FS_577__i9 (.D(n86), .CK(RCLK_c), .Q(FS[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577__i9.GSR = "ENABLED";
    FD1S3AX FS_577__i8 (.D(n87), .CK(RCLK_c), .Q(FS[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577__i8.GSR = "ENABLED";
    FD1S3AX FS_577__i7 (.D(n88), .CK(RCLK_c), .Q(FS[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577__i7.GSR = "ENABLED";
    FD1S3AX FS_577__i6 (.D(n89), .CK(RCLK_c), .Q(FS[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577__i6.GSR = "ENABLED";
    FD1S3AX FS_577__i5 (.D(n90), .CK(RCLK_c), .Q(FS[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577__i5.GSR = "ENABLED";
    FD1S3AX FS_577__i4 (.D(n91), .CK(RCLK_c), .Q(FS[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577__i4.GSR = "ENABLED";
    FD1S3AX FS_577__i3 (.D(n92), .CK(RCLK_c), .Q(FS[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577__i3.GSR = "ENABLED";
    FD1S3AX FS_577__i2 (.D(n93), .CK(RCLK_c), .Q(FS[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577__i2.GSR = "ENABLED";
    FD1S3AX FS_577__i1 (.D(n94), .CK(RCLK_c), .Q(FS[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577__i1.GSR = "ENABLED";
    FD1P3AX IS_FSM__i15 (.D(n699), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(Ready_N_272));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(263[11:15])
    defparam IS_FSM__i15.GSR = "ENABLED";
    FD1P3AX IS_FSM__i14 (.D(n700), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n699));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(263[11:15])
    defparam IS_FSM__i14.GSR = "ENABLED";
    FD1P3AX IS_FSM__i13 (.D(n701), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n700));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(263[11:15])
    defparam IS_FSM__i13.GSR = "ENABLED";
    FD1P3AX IS_FSM__i12 (.D(n702), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n701));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(263[11:15])
    defparam IS_FSM__i12.GSR = "ENABLED";
    FD1P3AX IS_FSM__i11 (.D(n703), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n702));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(263[11:15])
    defparam IS_FSM__i11.GSR = "ENABLED";
    FD1P3AX IS_FSM__i10 (.D(nRWE_N_173), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n703));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(263[11:15])
    defparam IS_FSM__i10.GSR = "ENABLED";
    FD1P3AX IS_FSM__i9 (.D(n705), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(nRWE_N_173));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(263[11:15])
    defparam IS_FSM__i9.GSR = "ENABLED";
    FD1P3AX IS_FSM__i8 (.D(n706), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n705));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(263[11:15])
    defparam IS_FSM__i8.GSR = "ENABLED";
    FD1P3AX IS_FSM__i7 (.D(n707), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n706));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(263[11:15])
    defparam IS_FSM__i7.GSR = "ENABLED";
    FD1P3AX IS_FSM__i6 (.D(n708), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n707));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(263[11:15])
    defparam IS_FSM__i6.GSR = "ENABLED";
    FD1P3AX IS_FSM__i5 (.D(n709), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n708));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(263[11:15])
    defparam IS_FSM__i5.GSR = "ENABLED";
    FD1P3AX IS_FSM__i4 (.D(n710), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n709));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(263[11:15])
    defparam IS_FSM__i4.GSR = "ENABLED";
    FD1P3AX IS_FSM__i3 (.D(n711), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n710));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(263[11:15])
    defparam IS_FSM__i3.GSR = "ENABLED";
    FD1P3AX IS_FSM__i2 (.D(nRCAS_N_161), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(n711));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(263[11:15])
    defparam IS_FSM__i2.GSR = "ENABLED";
    FD1P3AX IS_FSM__i1 (.D(nRCS_N_135), .SP(RCLK_c_enable_23), .CK(RCLK_c), 
            .Q(nRCAS_N_161));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(263[11:15])
    defparam IS_FSM__i1.GSR = "ENABLED";
    FD1S3IX RBA__i2 (.D(CROW_c_1), .CK(nCRAS_N_9), .CD(n2307), .Q(RBA_c_1));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(105[9] 120[5])
    defparam RBA__i2.GSR = "ENABLED";
    FD1S3AX WRD_i7 (.D(Din_c_7), .CK(nCCAS_N_3), .Q(WRD[7]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(123[9] 125[5])
    defparam WRD_i7.GSR = "ENABLED";
    FD1S3AX WRD_i6 (.D(Din_c_6), .CK(nCCAS_N_3), .Q(WRD[6]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(123[9] 125[5])
    defparam WRD_i6.GSR = "ENABLED";
    FD1S3AX WRD_i5 (.D(Din_c_5), .CK(nCCAS_N_3), .Q(WRD[5]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(123[9] 125[5])
    defparam WRD_i5.GSR = "ENABLED";
    FD1S3AX WRD_i4 (.D(Din_c_4), .CK(nCCAS_N_3), .Q(WRD[4]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(123[9] 125[5])
    defparam WRD_i4.GSR = "ENABLED";
    FD1S3AX WRD_i3 (.D(Din_c_3), .CK(nCCAS_N_3), .Q(WRD[3]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(123[9] 125[5])
    defparam WRD_i3.GSR = "ENABLED";
    FD1S3AX WRD_i2 (.D(Din_c_2), .CK(nCCAS_N_3), .Q(WRD[2]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(123[9] 125[5])
    defparam WRD_i2.GSR = "ENABLED";
    FD1S3AX WRD_i1 (.D(Din_c_1), .CK(nCCAS_N_3), .Q(WRD[1]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(123[9] 125[5])
    defparam WRD_i1.GSR = "ENABLED";
    FD1S3JX RowA_i9 (.D(MAin_c_9), .CK(nCRAS_N_9), .PD(n2307), .Q(RowA[9]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(105[9] 120[5])
    defparam RowA_i9.GSR = "ENABLED";
    FD1S3IX RowA_i8 (.D(MAin_c_8), .CK(nCRAS_N_9), .CD(n2307), .Q(RowA[8]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(105[9] 120[5])
    defparam RowA_i8.GSR = "ENABLED";
    FD1S3IX RowA_i7 (.D(MAin_c_7), .CK(nCRAS_N_9), .CD(n2307), .Q(RowA[7]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(105[9] 120[5])
    defparam RowA_i7.GSR = "ENABLED";
    FD1S3IX RowA_i6 (.D(MAin_c_6), .CK(nCRAS_N_9), .CD(n2307), .Q(RowA[6]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(105[9] 120[5])
    defparam RowA_i6.GSR = "ENABLED";
    FD1S3JX RowA_i5 (.D(MAin_c_5), .CK(nCRAS_N_9), .PD(n2307), .Q(RowA[5]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(105[9] 120[5])
    defparam RowA_i5.GSR = "ENABLED";
    FD1S3IX RowA_i4 (.D(MAin_c_4), .CK(nCRAS_N_9), .CD(n2307), .Q(RowA[4]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(105[9] 120[5])
    defparam RowA_i4.GSR = "ENABLED";
    FD1S3IX RowA_i3 (.D(MAin_c_3), .CK(nCRAS_N_9), .CD(n2307), .Q(RowA[3]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(105[9] 120[5])
    defparam RowA_i3.GSR = "ENABLED";
    FD1S3IX RowA_i2 (.D(MAin_c_2), .CK(nCRAS_N_9), .CD(n2307), .Q(RowA[2]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(105[9] 120[5])
    defparam RowA_i2.GSR = "ENABLED";
    FD1S3IX RowA_i1 (.D(MAin_c_1), .CK(nCRAS_N_9), .CD(n2307), .Q(RowA[1]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(105[9] 120[5])
    defparam RowA_i1.GSR = "ENABLED";
    FD1S3AX Bank_i7 (.D(Din_c_7), .CK(PHI2_c), .Q(Bank[7]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(98[9] 102[5])
    defparam Bank_i7.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_rep_12 (.A(MAin_c_1), .B(n1285), .Z(n2289)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(80[15:31])
    defparam i1_2_lut_rep_12.init = 16'hdddd;
    ORCALUT4 i1_2_lut_rep_15_3_lut_4_lut_4_lut (.A(nRowColSel_N_35), .B(nRCS_N_135), 
            .C(InitReady), .D(RASr2), .Z(n2292)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(131[13:16])
    defparam i1_2_lut_rep_15_3_lut_4_lut_4_lut.init = 16'hdfff;
    ORCALUT4 i1_2_lut_4_lut_4_lut (.A(Ready), .B(nRowColSel_N_35), .C(RASr2), 
            .D(InitReady), .Z(RCLK_c_enable_23)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(147[9] 285[5])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h4000;
    FD1S3AX Bank_i6 (.D(Din_c_6), .CK(PHI2_c), .Q(Bank[6]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(98[9] 102[5])
    defparam Bank_i6.GSR = "ENABLED";
    FD1S3AX Bank_i5 (.D(Din_c_5), .CK(PHI2_c), .Q(Bank[5]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(98[9] 102[5])
    defparam Bank_i5.GSR = "ENABLED";
    FD1S3AX Bank_i4 (.D(Din_c_4), .CK(PHI2_c), .Q(Bank[4]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(98[9] 102[5])
    defparam Bank_i4.GSR = "ENABLED";
    FD1S3AX Bank_i3 (.D(Din_c_3), .CK(PHI2_c), .Q(Bank[3]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(98[9] 102[5])
    defparam Bank_i3.GSR = "ENABLED";
    FD1S3AX Bank_i2 (.D(Din_c_2), .CK(PHI2_c), .Q(Bank[2]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(98[9] 102[5])
    defparam Bank_i2.GSR = "ENABLED";
    FD1S3AX Bank_i1 (.D(Din_c_1), .CK(PHI2_c), .Q(Bank[1]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(98[9] 102[5])
    defparam Bank_i1.GSR = "ENABLED";
    BB Dout_pad_6__689 (.I(WRD[6]), .T(n962), .B(RD[6]), .O(n974));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(60[14:16])
    BB Dout_pad_5__690 (.I(WRD[5]), .T(n962), .B(RD[5]), .O(n975));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(60[14:16])
    BB Dout_pad_4__691 (.I(WRD[4]), .T(n962), .B(RD[4]), .O(n976));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(60[14:16])
    BB Dout_pad_3__692 (.I(WRD[3]), .T(n962), .B(RD[3]), .O(n977));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(60[14:16])
    BB Dout_pad_2__693 (.I(WRD[2]), .T(n962), .B(RD[2]), .O(n978));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(60[14:16])
    BB Dout_pad_1__694 (.I(WRD[1]), .T(n962), .B(RD[1]), .O(n979));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(60[14:16])
    ORCALUT4 nRWE_I_49_1_lut (.A(nRWE_N_173), .Z(nRWE_N_172)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(255[14] 262[8])
    defparam nRWE_I_49_1_lut.init = 16'h5555;
    BB Dout_pad_0__695 (.I(WRD[0]), .T(n962), .B(RD[0]), .O(Dout_c));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(60[14:16])
    OB Dout_pad_7 (.I(n973), .O(Dout[7]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(27[15:19])
    OB Dout_pad_6 (.I(n974), .O(Dout[6]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(27[15:19])
    OB Dout_pad_5 (.I(n975), .O(Dout[5]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(27[15:19])
    OB Dout_pad_4 (.I(n976), .O(Dout[4]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(27[15:19])
    OB Dout_pad_3 (.I(n977), .O(Dout[3]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(27[15:19])
    OB Dout_pad_2 (.I(n978), .O(Dout[2]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(27[15:19])
    OB Dout_pad_1 (.I(n979), .O(Dout[1]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(27[15:19])
    OB Dout_pad_0 (.I(Dout_c), .O(Dout[0]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(27[15:19])
    OB LED_pad (.I(LED_N_90), .O(LED));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(12[9:12])
    OB RBA_pad_1 (.I(RBA_c_1), .O(RBA[1]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(47[19:22])
    OB RBA_pad_0 (.I(RBA_c_0), .O(RBA[0]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(47[19:22])
    OB RA_pad_11 (.I(RA_c), .O(RA[11]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(52[16:18])
    OB RA_pad_10 (.I(n980), .O(RA[10]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(52[16:18])
    OB RA_pad_9 (.I(RA_c_9), .O(RA[9]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(52[16:18])
    OB RA_pad_8 (.I(RA_c_8), .O(RA[8]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(52[16:18])
    OB RA_pad_7 (.I(RA_c_7), .O(RA[7]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(52[16:18])
    OB RA_pad_6 (.I(RA_c_6), .O(RA[6]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(52[16:18])
    OB RA_pad_5 (.I(RA_c_5), .O(RA[5]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(52[16:18])
    OB RA_pad_4 (.I(RA_c_4), .O(RA[4]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(52[16:18])
    OB RA_pad_3 (.I(RA_c_3), .O(RA[3]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(52[16:18])
    OB RA_pad_2 (.I(RA_c_2), .O(RA[2]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(52[16:18])
    OB RA_pad_1 (.I(RA_c_1), .O(RA[1]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(52[16:18])
    OB RA_pad_0 (.I(RA_c_0), .O(RA[0]));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(52[16:18])
    OB nRCS_pad (.I(nRCS_c), .O(nRCS));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(46[13:17])
    OB RCKE_pad (.I(RCKE_c), .O(RCKE));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(45[13:17])
    OB nRWE_pad (.I(nRWE_c), .O(nRWE));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(46[45:49])
    OB nRRAS_pad (.I(nRRAS_c), .O(nRRAS));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(46[23:28])
    OB nRCAS_pad (.I(nRCAS_c), .O(nRCAS));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(46[34:39])
    OB RDQMH_pad (.I(RDQMH_c), .O(RDQMH));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(56[16:21])
    OB RDQML_pad (.I(RDQML_c), .O(RDQML));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(56[9:14])
    OB nUFMCS_pad (.I(nUFMCS_c), .O(nUFMCS));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(63[13:19])
    OB UFMCLK_pad (.I(UFMCLK_c), .O(UFMCLK));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(64[13:19])
    OB UFMSDI_pad (.I(UFMSDI_c), .O(UFMSDI));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(65[13:19])
    IB PHI2_pad (.I(PHI2), .O(PHI2_c));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(8[8:12])
    IB MAin_pad_9 (.I(MAin[9]), .O(MAin_c_9));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(35[14:18])
    IB MAin_pad_8 (.I(MAin[8]), .O(MAin_c_8));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(35[14:18])
    IB MAin_pad_7 (.I(MAin[7]), .O(MAin_c_7));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(35[14:18])
    IB MAin_pad_6 (.I(MAin[6]), .O(MAin_c_6));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(35[14:18])
    IB MAin_pad_5 (.I(MAin[5]), .O(MAin_c_5));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(35[14:18])
    IB MAin_pad_4 (.I(MAin[4]), .O(MAin_c_4));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(35[14:18])
    IB MAin_pad_3 (.I(MAin[3]), .O(MAin_c_3));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(35[14:18])
    IB MAin_pad_2 (.I(MAin[2]), .O(MAin_c_2));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(35[14:18])
    IB MAin_pad_1 (.I(MAin[1]), .O(MAin_c_1));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(35[14:18])
    IB MAin_pad_0 (.I(MAin[0]), .O(MAin_c_0));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(35[14:18])
    IB CROW_pad_1 (.I(CROW[1]), .O(CROW_c_1));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(34[14:18])
    IB CROW_pad_0 (.I(CROW[0]), .O(CROW_c_0));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(34[14:18])
    IB Din_pad_7 (.I(Din[7]), .O(Din_c_7));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(26[14:17])
    IB Din_pad_6 (.I(Din[6]), .O(Din_c_6));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(26[14:17])
    IB Din_pad_5 (.I(Din[5]), .O(Din_c_5));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(26[14:17])
    IB Din_pad_4 (.I(Din[4]), .O(Din_c_4));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(26[14:17])
    IB Din_pad_3 (.I(Din[3]), .O(Din_c_3));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(26[14:17])
    IB Din_pad_2 (.I(Din[2]), .O(Din_c_2));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(26[14:17])
    IB Din_pad_1 (.I(Din[1]), .O(Din_c_1));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(26[14:17])
    IB Din_pad_0 (.I(Din[0]), .O(Din_c_0));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(26[14:17])
    IB nCCAS_pad (.I(nCCAS), .O(nCCAS_c));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(16[8:13])
    IB nCRAS_pad (.I(nCRAS), .O(nCRAS_c));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(16[15:20])
    IB nFWE_pad (.I(nFWE), .O(nFWE_c));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(36[8:12])
    IB RCLK_pad (.I(RCLK), .O(RCLK_c));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(41[8:12])
    IB UFMSDO_pad (.I(UFMSDO), .O(UFMSDO_c));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(66[8:14])
    ORCALUT4 MAin_9__I_0_400_i9_3_lut (.A(RowA[8]), .B(MAin_c_8), .C(nRowColSel), 
            .Z(RA_c_8)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(55[19:54])
    defparam MAin_9__I_0_400_i9_3_lut.init = 16'hcaca;
    CCU2 FS_577_add_4_4 (.A0(FS[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(FS[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1874), 
         .COUT1(n1875), .S0(n93), .S1(n92));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577_add_4_4.INIT0 = 16'hfaaa;
    defparam FS_577_add_4_4.INIT1 = 16'hfaaa;
    defparam FS_577_add_4_4.INJECT1_0 = "NO";
    defparam FS_577_add_4_4.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(Ready), .B(nRowColSel_N_32), 
            .C(n1627), .D(nRowColSel_N_35), .Z(RCLK_c_enable_3)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(147[9] 285[5])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hfffd;
    FD1P3IX UFMCLK_389 (.D(UFMCLK_N_212), .SP(RCLK_c_enable_24), .CD(n2291), 
            .CK(RCLK_c), .Q(UFMCLK_c)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(327[9] 396[5])
    defparam UFMCLK_389.GSR = "ENABLED";
    ORCALUT4 i2_2_lut_rep_22_2_lut (.A(Ready), .B(nRowColSel_N_35), .Z(n2299)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(147[9] 285[5])
    defparam i2_2_lut_rep_22_2_lut.init = 16'hdddd;
    ORCALUT4 i2_3_lut_4_lut_adj_20 (.A(n2297), .B(n2301), .C(nRCAS_N_161), 
            .D(Ready), .Z(n2128)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(131[13:16])
    defparam i2_3_lut_4_lut_adj_20.init = 16'hfffe;
    ORCALUT4 i2_3_lut_adj_21 (.A(nRowColSel_N_33), .B(nRRAS_c), .C(nRowColSel_N_32), 
            .Z(n50)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(131[13:16])
    defparam i2_3_lut_adj_21.init = 16'hfefe;
    ORCALUT4 MAin_9__I_0_400_i8_3_lut (.A(RowA[7]), .B(MAin_c_7), .C(nRowColSel), 
            .Z(RA_c_7)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(55[19:54])
    defparam MAin_9__I_0_400_i8_3_lut.init = 16'hcaca;
    ORCALUT4 Ready_bdd_4_lut (.A(Ready), .B(n2117), .C(n2287), .D(nRowColSel_N_35), 
            .Z(nRCAS_N_157)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam Ready_bdd_4_lut.init = 16'hf077;
    ORCALUT4 i1366_3_lut (.A(InitReady), .B(RCKEEN_N_116), .C(Ready), 
            .Z(RCKEEN_N_115)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(84[6:11])
    defparam i1366_3_lut.init = 16'hcaca;
    ORCALUT4 i6_4_lut (.A(FS[15]), .B(n12_adj_2), .C(FS[11]), .D(FS[17]), 
            .Z(n2076)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    ORCALUT4 i1_4_lut_4_lut (.A(CBR), .B(n11_adj_3), .C(FWEr), .D(nRowColSel_N_34), 
            .Z(RCKEEN_N_117)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (D)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(214[26:30])
    defparam i1_4_lut_4_lut.init = 16'h5540;
    ORCALUT4 i1_2_lut_rep_11_3_lut (.A(nFWE_c), .B(n1285), .C(MAin_c_1), 
            .Z(PHI2_N_114_enable_1)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_11_3_lut.init = 16'h1010;
    CCU2 FS_577_add_4_2 (.A0(FS[0]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(FS[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(GND_net), 
         .COUT1(n1874), .S0(n95), .S1(n94));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577_add_4_2.INIT0 = 16'h0555;
    defparam FS_577_add_4_2.INIT1 = 16'hfaaa;
    defparam FS_577_add_4_2.INJECT1_0 = "NO";
    defparam FS_577_add_4_2.INJECT1_1 = "NO";
    ORCALUT4 i3_4_lut_adj_22 (.A(Din_c_0), .B(Din_c_1), .C(Din_c_4), .D(Din_c_7), 
            .Z(n2114)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i3_4_lut_adj_22.init = 16'h0200;
    ORCALUT4 Ready_bdd_4_lut_1960 (.A(nRowColSel_N_32), .B(RASr2), .C(Ready_N_272), 
            .D(InitReady), .Z(n2245)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam Ready_bdd_4_lut_1960.init = 16'h2000;
    ORCALUT4 n2245_bdd_2_lut (.A(n2245), .B(Ready), .Z(Ready_N_268)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n2245_bdd_2_lut.init = 16'heeee;
    ORCALUT4 n2248_bdd_4_lut_4_lut (.A(CBR), .B(RASr2), .C(Ready), .D(n2248), 
            .Z(n2287)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A !((C+(D))+!B))) */ ;
    defparam n2248_bdd_4_lut_4_lut.init = 16'h7f73;
    FD1P3AX LEDEN_392 (.D(UFMSDO_N_74), .SP(RCLK_c_enable_25), .CK(RCLK_c), 
            .Q(LEDEN)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(327[9] 396[5])
    defparam LEDEN_392.GSR = "ENABLED";
    ORCALUT4 MAin_9__I_0_400_i7_3_lut (.A(RowA[6]), .B(MAin_c_6), .C(nRowColSel), 
            .Z(RA_c_6)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(55[19:54])
    defparam MAin_9__I_0_400_i7_3_lut.init = 16'hcaca;
    ORCALUT4 MAin_9__I_0_400_i6_3_lut (.A(RowA[5]), .B(MAin_c_5), .C(nRowColSel), 
            .Z(RA_c_5)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(55[19:54])
    defparam MAin_9__I_0_400_i6_3_lut.init = 16'hcaca;
    CCU2 FS_577_add_4_12 (.A0(FS[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(FS[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1878), 
         .COUT1(n1879), .S0(n85), .S1(n84));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577_add_4_12.INIT0 = 16'hfaaa;
    defparam FS_577_add_4_12.INIT1 = 16'hfaaa;
    defparam FS_577_add_4_12.INJECT1_0 = "NO";
    defparam FS_577_add_4_12.INJECT1_1 = "NO";
    FD1P3AX CmdEnable_378 (.D(CmdEnable_N_236), .SP(PHI2_N_114_enable_8), 
            .CK(PHI2_N_114), .Q(CmdEnable)) /* synthesis lse_init_val=0 */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(288[9] 324[5])
    defparam CmdEnable_378.GSR = "ENABLED";
    CCU2 FS_577_add_4_16 (.A0(FS[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(FS[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1880), 
         .COUT1(n1881), .S0(n81), .S1(n80));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577_add_4_16.INIT0 = 16'hfaaa;
    defparam FS_577_add_4_16.INIT1 = 16'hfaaa;
    defparam FS_577_add_4_16.INJECT1_0 = "NO";
    defparam FS_577_add_4_16.INJECT1_1 = "NO";
    CCU2 FS_577_add_4_14 (.A0(FS[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(FS[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1879), 
         .COUT1(n1880), .S0(n83), .S1(n82));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(136[9:13])
    defparam FS_577_add_4_14.INIT0 = 16'hfaaa;
    defparam FS_577_add_4_14.INIT1 = 16'hfaaa;
    defparam FS_577_add_4_14.INJECT1_0 = "NO";
    defparam FS_577_add_4_14.INJECT1_1 = "NO";
    ORCALUT4 MAin_9__I_0_400_i3_3_lut (.A(RowA[2]), .B(MAin_c_2), .C(nRowColSel), 
            .Z(RA_c_2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(55[19:54])
    defparam MAin_9__I_0_400_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i1485_3_lut (.A(n2076), .B(n1369), .C(InitReady), .Z(n1348)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(83[6:15])
    defparam i1485_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_2_lut (.A(nRowColSel_N_35), .B(nRowColSel_N_34), .Z(n18)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(131[13:16])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    ORCALUT4 i1_2_lut_rep_20_2_lut (.A(nRowColSel_N_35), .B(nRCS_N_135), 
            .Z(n2297)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(131[13:16])
    defparam i1_2_lut_rep_20_2_lut.init = 16'hdddd;
    ORCALUT4 i1062_3_lut (.A(nUFMCS_c), .B(CmdUFMCS), .C(n2308), .Z(n1369)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(327[9] 396[5])
    defparam i1062_3_lut.init = 16'h3a3a;
    ORCALUT4 MAin_9__I_0_400_i4_3_lut (.A(RowA[3]), .B(MAin_c_3), .C(nRowColSel), 
            .Z(RA_c_3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(55[19:54])
    defparam MAin_9__I_0_400_i4_3_lut.init = 16'hcaca;
    ORCALUT4 MAin_9__I_0_400_i1_3_lut (.A(RowA[0]), .B(MAin_c_0), .C(nRowColSel), 
            .Z(RA_c_0)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(55[19:54])
    defparam MAin_9__I_0_400_i1_3_lut.init = 16'hcaca;
    INV i1961 (.A(nCRAS_c), .Z(nCRAS_N_9));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(16[15:20])
    INV i1962 (.A(PHI2_c), .Z(PHI2_N_114));   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(8[8:12])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    ORCALUT4 i1070_1_lut_rep_25 (.A(nRowColSel_N_35), .Z(n2302)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/dog/documents/github/ram2gs/cpld/lcmxo/ram2gs-lcmxo.v(131[13:16])
    defparam i1070_1_lut_rep_25.init = 16'h5555;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    ORCALUT4 i13_4_lut (.A(Bank[3]), .B(n26), .C(n2170), .D(MAin_c_5), 
            .Z(n1285)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i13_4_lut.init = 16'hdfff;
    ORCALUT4 i12_4_lut (.A(Bank[2]), .B(n2166), .C(n2154), .D(MAin_c_6), 
            .Z(n26)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'hbfff;
    ORCALUT4 i1860_4_lut (.A(MAin_c_7), .B(MAin_c_3), .C(Bank[4]), .D(Bank[1]), 
            .Z(n2170)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1860_4_lut.init = 16'h8000;
    ORCALUT4 m0_lut (.Z(n2386)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    PFUMX i1934 (.BLUT(n2309), .ALUT(n2310), .C0(Ready), .Z(nRCS_N_132));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

