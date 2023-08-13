// megafunction wizard: %ALTUFM_NONE Intel FPGA IP%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: ALTUFM_NONE 

// ============================================================
// File Name: UFM.v
// Megafunction Name(s):
// 			ALTUFM_NONE
//
// Simulation Library Files(s):
// 			maxv
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 19.1.0 Build 670 09/22/2019 SJ Lite Edition
// ************************************************************


//Copyright (C) 2019  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and any partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel FPGA IP License Agreement, or other applicable license
//agreement, including, without limitation, that your use is for
//the sole purpose of programming logic devices manufactured by
//Intel and sold by Intel or its authorized distributors.  Please
//refer to the applicable agreement for further details, at
//https://fpgasoftware.intel.com/eula.


//altufm_none CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="MAX V" ERASE_TIME=500000000 LPM_FILE="RAM2GS.mif" OSC_FREQUENCY=180000 PORT_ARCLKENA="PORT_UNUSED" PORT_DRCLKENA="PORT_UNUSED" PROGRAM_TIME=1600000 WIDTH_UFM_ADDRESS=9 arclk ardin arshft busy drclk drdin drdout drshft erase osc oscena program rtpbusy
//VERSION_BEGIN 19.1 cbx_a_gray2bin 2019:09:22:11:00:27:SJ cbx_a_graycounter 2019:09:22:11:00:27:SJ cbx_altufm_none 2019:09:22:11:00:28:SJ cbx_cycloneii 2019:09:22:11:00:28:SJ cbx_lpm_add_sub 2019:09:22:11:00:28:SJ cbx_lpm_compare 2019:09:22:11:00:28:SJ cbx_lpm_counter 2019:09:22:11:00:28:SJ cbx_lpm_decode 2019:09:22:11:00:28:SJ cbx_lpm_mux 2019:09:22:11:00:28:SJ cbx_maxii 2019:09:22:11:00:28:SJ cbx_mgl 2019:09:22:11:02:15:SJ cbx_nadder 2019:09:22:11:00:28:SJ cbx_stratix 2019:09:22:11:00:28:SJ cbx_stratixii 2019:09:22:11:00:28:SJ cbx_util_mgl 2019:09:22:11:00:28:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = maxv_ufm 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  UFM_altufm_none_38r
	( 
	arclk,
	ardin,
	arshft,
	busy,
	drclk,
	drdin,
	drdout,
	drshft,
	erase,
	osc,
	oscena,
	program,
	rtpbusy) ;
	input   arclk;
	input   ardin;
	input   arshft;
	output   busy;
	input   drclk;
	input   drdin;
	output   drdout;
	input   drshft;
	input   erase;
	output   osc;
	input   oscena;
	input   program;
	output   rtpbusy;

	wire  wire_maxii_ufm_block1_bgpbusy;
	wire  wire_maxii_ufm_block1_busy;
	wire  wire_maxii_ufm_block1_drdout;
	wire  wire_maxii_ufm_block1_osc;
	wire  ufm_arclk;
	wire  ufm_ardin;
	wire  ufm_arshft;
	wire  ufm_bgpbusy;
	wire  ufm_busy;
	wire  ufm_drclk;
	wire  ufm_drdin;
	wire  ufm_drdout;
	wire  ufm_drshft;
	wire  ufm_erase;
	wire  ufm_osc;
	wire  ufm_oscena;
	wire  ufm_program;

	maxv_ufm   maxii_ufm_block1
	( 
	.arclk(ufm_arclk),
	.ardin(ufm_ardin),
	.arshft(ufm_arshft),
	.bgpbusy(wire_maxii_ufm_block1_bgpbusy),
	.busy(wire_maxii_ufm_block1_busy),
	.drclk(ufm_drclk),
	.drdin(ufm_drdin),
	.drdout(wire_maxii_ufm_block1_drdout),
	.drshft(ufm_drshft),
	.erase(ufm_erase),
	.osc(wire_maxii_ufm_block1_osc),
	.oscena(ufm_oscena),
	.program(ufm_program)
	// synopsys translate_off
	,
	.ctrl_bgpbusy(1'b0),
	.devclrn(1'b1),
	.devpor(1'b1),
	.sbdin(1'b0),
	.sbdout()
	// synopsys translate_on
	);
	defparam
		maxii_ufm_block1.address_width = 9,
		maxii_ufm_block1.erase_time = 500000000,
		maxii_ufm_block1.init_file = "RAM2GS.mif",
		maxii_ufm_block1.osc_sim_setting = 180000,
		maxii_ufm_block1.program_time = 1600000,
		maxii_ufm_block1.lpm_type = "maxv_ufm";
	assign
		busy = ufm_busy,
		drdout = ufm_drdout,
		osc = ufm_osc,
		rtpbusy = ufm_bgpbusy,
		ufm_arclk = arclk,
		ufm_ardin = ardin,
		ufm_arshft = arshft,
		ufm_bgpbusy = wire_maxii_ufm_block1_bgpbusy,
		ufm_busy = wire_maxii_ufm_block1_busy,
		ufm_drclk = drclk,
		ufm_drdin = drdin,
		ufm_drdout = wire_maxii_ufm_block1_drdout,
		ufm_drshft = drshft,
		ufm_erase = erase,
		ufm_osc = wire_maxii_ufm_block1_osc,
		ufm_oscena = oscena,
		ufm_program = program;
	initial/*synthesis enable_verilog_initial_construct*/
 	begin
		$display("Warning: Memory initialization file RAM2GS.mif is not found. This may result in inconsistent simulation results.");
	end
endmodule //UFM_altufm_none_38r
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module UFM (
	arclk,
	ardin,
	arshft,
	drclk,
	drdin,
	drshft,
	erase,
	oscena,
	program,
	busy,
	drdout,
	osc,
	rtpbusy);

	input	  arclk;
	input	  ardin;
	input	  arshft;
	input	  drclk;
	input	  drdin;
	input	  drshft;
	input	  erase;
	input	  oscena;
	input	  program;
	output	  busy;
	output	  drdout;
	output	  osc;
	output	  rtpbusy;

	wire  sub_wire0;
	wire  sub_wire1;
	wire  sub_wire2;
	wire  sub_wire3;
	wire  busy = sub_wire0;
	wire  drdout = sub_wire1;
	wire  osc = sub_wire2;
	wire  rtpbusy = sub_wire3;

	UFM_altufm_none_38r	UFM_altufm_none_38r_component (
				.arclk (arclk),
				.ardin (ardin),
				.arshft (arshft),
				.drclk (drclk),
				.drdin (drdin),
				.drshft (drshft),
				.erase (erase),
				.oscena (oscena),
				.program (program),
				.busy (sub_wire0),
				.drdout (sub_wire1),
				.osc (sub_wire2),
				.rtpbusy (sub_wire3));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "MAX V"
// Retrieval info: CONSTANT: ERASE_TIME NUMERIC "500000000"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "MAX V"
// Retrieval info: CONSTANT: LPM_FILE STRING "RAM2GS.mif"
// Retrieval info: CONSTANT: LPM_HINT STRING "UNUSED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altufm_none"
// Retrieval info: CONSTANT: OSC_FREQUENCY NUMERIC "180000"
// Retrieval info: CONSTANT: PORT_ARCLKENA STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PORT_DRCLKENA STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: PROGRAM_TIME NUMERIC "1600000"
// Retrieval info: CONSTANT: WIDTH_UFM_ADDRESS NUMERIC "9"
// Retrieval info: USED_PORT: arclk 0 0 0 0 INPUT NODEFVAL "arclk"
// Retrieval info: CONNECT: @arclk 0 0 0 0 arclk 0 0 0 0
// Retrieval info: USED_PORT: ardin 0 0 0 0 INPUT NODEFVAL "ardin"
// Retrieval info: CONNECT: @ardin 0 0 0 0 ardin 0 0 0 0
// Retrieval info: USED_PORT: arshft 0 0 0 0 INPUT NODEFVAL "arshft"
// Retrieval info: CONNECT: @arshft 0 0 0 0 arshft 0 0 0 0
// Retrieval info: USED_PORT: busy 0 0 0 0 OUTPUT NODEFVAL "busy"
// Retrieval info: CONNECT: busy 0 0 0 0 @busy 0 0 0 0
// Retrieval info: USED_PORT: drclk 0 0 0 0 INPUT NODEFVAL "drclk"
// Retrieval info: CONNECT: @drclk 0 0 0 0 drclk 0 0 0 0
// Retrieval info: USED_PORT: drdin 0 0 0 0 INPUT NODEFVAL "drdin"
// Retrieval info: CONNECT: @drdin 0 0 0 0 drdin 0 0 0 0
// Retrieval info: USED_PORT: drdout 0 0 0 0 OUTPUT NODEFVAL "drdout"
// Retrieval info: CONNECT: drdout 0 0 0 0 @drdout 0 0 0 0
// Retrieval info: USED_PORT: drshft 0 0 0 0 INPUT NODEFVAL "drshft"
// Retrieval info: CONNECT: @drshft 0 0 0 0 drshft 0 0 0 0
// Retrieval info: USED_PORT: erase 0 0 0 0 INPUT NODEFVAL "erase"
// Retrieval info: CONNECT: @erase 0 0 0 0 erase 0 0 0 0
// Retrieval info: USED_PORT: osc 0 0 0 0 OUTPUT NODEFVAL "osc"
// Retrieval info: CONNECT: osc 0 0 0 0 @osc 0 0 0 0
// Retrieval info: USED_PORT: oscena 0 0 0 0 INPUT NODEFVAL "oscena"
// Retrieval info: CONNECT: @oscena 0 0 0 0 oscena 0 0 0 0
// Retrieval info: USED_PORT: program 0 0 0 0 INPUT NODEFVAL "program"
// Retrieval info: CONNECT: @program 0 0 0 0 program 0 0 0 0
// Retrieval info: USED_PORT: rtpbusy 0 0 0 0 OUTPUT NODEFVAL "rtpbusy"
// Retrieval info: CONNECT: rtpbusy 0 0 0 0 @rtpbusy 0 0 0 0
// Retrieval info: GEN_FILE: TYPE_NORMAL UFM.v TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL UFM.qip TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL UFM.bsf FALSE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL UFM_inst.v FALSE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL UFM_bb.v FALSE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL UFM.inc FALSE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL UFM.cmp FALSE TRUE
// Retrieval info: LIB_FILE: maxv
