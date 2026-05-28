// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

// DATE "06/08/2025 02:54:18"

// 
// Device: Altera EP4CGX15BF14A7 Package FBGA169
// 

// 
// This Verilog file should be used for ModelSim-Altera (SystemVerilog) only
// 

`timescale 1 ps/ 1 ps

module partd (
	clk,
	rst,
	j,
	w);
input 	clk;
input 	rst;
input 	j;
output 	w;

// Design Ports Information
// w	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
// j	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
// clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
// rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("partd_v.sdo");
// synopsys translate_on

wire \w~output_o ;
wire \clk~input_o ;
wire \clk~inputclkctrl_outclk ;
wire \j~input_o ;
wire \Add0~0_combout ;
wire \cnt[0]~0_combout ;
wire \cnt[2]~1_combout ;
wire \rst~input_o ;
wire \rst~inputclkctrl_outclk ;
wire \cen~0_combout ;
wire \Selector2~0_combout ;
wire \ps.C~q ;
wire \Selector1~0_combout ;
wire \ps.B~q ;
wire \cnt[0]~3_combout ;
wire \cnt[1]~2_combout ;
wire \ns.D~0_combout ;
wire \ns.D~1_combout ;
wire \ps.D~q ;
wire [2:0] cnt;


hard_block auto_generated_inst(
	.devpor(devpor),
	.devclrn(devclrn),
	.devoe(devoe));

// Location: IOOBUF_X20_Y0_N2
cycloneiv_io_obuf \w~output (
	.i(\ps.D~q ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\w~output_o ),
	.obar());
// synopsys translate_off
defparam \w~output .bus_hold = "false";
defparam \w~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOIBUF_X16_Y0_N15
cycloneiv_io_ibuf \clk~input (
	.i(clk),
	.ibar(gnd),
	.o(\clk~input_o ));
// synopsys translate_off
defparam \clk~input .bus_hold = "false";
defparam \clk~input .simulate_z_as = "z";
// synopsys translate_on

// Location: CLKCTRL_G17
cycloneiv_clkctrl \clk~inputclkctrl (
	.ena(vcc),
	.inclk({vcc,vcc,vcc,\clk~input_o }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\clk~inputclkctrl_outclk ));
// synopsys translate_off
defparam \clk~inputclkctrl .clock_type = "global clock";
defparam \clk~inputclkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: IOIBUF_X20_Y0_N8
cycloneiv_io_ibuf \j~input (
	.i(j),
	.ibar(gnd),
	.o(\j~input_o ));
// synopsys translate_off
defparam \j~input .bus_hold = "false";
defparam \j~input .simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X20_Y1_N26
cycloneiv_lcell_comb \Add0~0 (
// Equation(s):
// \Add0~0_combout  = cnt[2] $ (((cnt[1] & cnt[0])))

	.dataa(cnt[1]),
	.datab(gnd),
	.datac(cnt[2]),
	.datad(cnt[0]),
	.cin(gnd),
	.combout(\Add0~0_combout ),
	.cout());
// synopsys translate_off
defparam \Add0~0 .lut_mask = 16'h5AF0;
defparam \Add0~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y1_N20
cycloneiv_lcell_comb \cnt[0]~0 (
// Equation(s):
// \cnt[0]~0_combout  = \ps.B~q  $ (((\cen~0_combout ) # (!\ps.C~q )))

	.dataa(gnd),
	.datab(\ps.C~q ),
	.datac(\ps.B~q ),
	.datad(\cen~0_combout ),
	.cin(gnd),
	.combout(\cnt[0]~0_combout ),
	.cout());
// synopsys translate_off
defparam \cnt[0]~0 .lut_mask = 16'h0FC3;
defparam \cnt[0]~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y1_N8
cycloneiv_lcell_comb \cnt[2]~1 (
// Equation(s):
// \cnt[2]~1_combout  = (\cnt[0]~0_combout  & (((cnt[2])))) # (!\cnt[0]~0_combout  & (\Add0~0_combout  & (!\ps.B~q )))

	.dataa(\Add0~0_combout ),
	.datab(\ps.B~q ),
	.datac(cnt[2]),
	.datad(\cnt[0]~0_combout ),
	.cin(gnd),
	.combout(\cnt[2]~1_combout ),
	.cout());
// synopsys translate_off
defparam \cnt[2]~1 .lut_mask = 16'hF022;
defparam \cnt[2]~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X16_Y0_N22
cycloneiv_io_ibuf \rst~input (
	.i(rst),
	.ibar(gnd),
	.o(\rst~input_o ));
// synopsys translate_off
defparam \rst~input .bus_hold = "false";
defparam \rst~input .simulate_z_as = "z";
// synopsys translate_on

// Location: CLKCTRL_G19
cycloneiv_clkctrl \rst~inputclkctrl (
	.ena(vcc),
	.inclk({vcc,vcc,vcc,\rst~input_o }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\rst~inputclkctrl_outclk ));
// synopsys translate_off
defparam \rst~inputclkctrl .clock_type = "global clock";
defparam \rst~inputclkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: FF_X20_Y1_N9
dffeas \cnt[2] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\cnt[2]~1_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(cnt[2]),
	.prn(vcc));
// synopsys translate_off
defparam \cnt[2] .is_wysiwyg = "true";
defparam \cnt[2] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y1_N2
cycloneiv_lcell_comb \cen~0 (
// Equation(s):
// \cen~0_combout  = (\j~input_o ) # ((cnt[2] & (!cnt[0] & cnt[1])))

	.dataa(\j~input_o ),
	.datab(cnt[2]),
	.datac(cnt[0]),
	.datad(cnt[1]),
	.cin(gnd),
	.combout(\cen~0_combout ),
	.cout());
// synopsys translate_off
defparam \cen~0 .lut_mask = 16'hAEAA;
defparam \cen~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y1_N18
cycloneiv_lcell_comb \Selector2~0 (
// Equation(s):
// \Selector2~0_combout  = (\j~input_o  & (((\ps.C~q  & !\cen~0_combout )))) # (!\j~input_o  & ((\ps.B~q ) # ((\ps.C~q  & !\cen~0_combout ))))

	.dataa(\j~input_o ),
	.datab(\ps.B~q ),
	.datac(\ps.C~q ),
	.datad(\cen~0_combout ),
	.cin(gnd),
	.combout(\Selector2~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~0 .lut_mask = 16'h44F4;
defparam \Selector2~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y1_N19
dffeas \ps.C (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\Selector2~0_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\ps.C~q ),
	.prn(vcc));
// synopsys translate_off
defparam \ps.C .is_wysiwyg = "true";
defparam \ps.C .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y1_N24
cycloneiv_lcell_comb \Selector1~0 (
// Equation(s):
// \Selector1~0_combout  = (\j~input_o  & ((!\ps.C~q ) # (!\ns.D~0_combout )))

	.dataa(gnd),
	.datab(\j~input_o ),
	.datac(\ns.D~0_combout ),
	.datad(\ps.C~q ),
	.cin(gnd),
	.combout(\Selector1~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~0 .lut_mask = 16'h0CCC;
defparam \Selector1~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y1_N25
dffeas \ps.B (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\Selector1~0_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\ps.B~q ),
	.prn(vcc));
// synopsys translate_off
defparam \ps.B .is_wysiwyg = "true";
defparam \ps.B .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y1_N4
cycloneiv_lcell_comb \cnt[0]~3 (
// Equation(s):
// \cnt[0]~3_combout  = (\ps.B~q  & (((cnt[0]) # (\cen~0_combout )) # (!\ps.C~q ))) # (!\ps.B~q  & (cnt[0] $ (((\ps.C~q  & !\cen~0_combout )))))

	.dataa(\ps.B~q ),
	.datab(\ps.C~q ),
	.datac(cnt[0]),
	.datad(\cen~0_combout ),
	.cin(gnd),
	.combout(\cnt[0]~3_combout ),
	.cout());
// synopsys translate_off
defparam \cnt[0]~3 .lut_mask = 16'hFAB6;
defparam \cnt[0]~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y1_N5
dffeas \cnt[0] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\cnt[0]~3_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(cnt[0]),
	.prn(vcc));
// synopsys translate_off
defparam \cnt[0] .is_wysiwyg = "true";
defparam \cnt[0] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y1_N6
cycloneiv_lcell_comb \cnt[1]~2 (
// Equation(s):
// \cnt[1]~2_combout  = (\cnt[0]~0_combout  & (((cnt[1])))) # (!\cnt[0]~0_combout  & (!\ps.B~q  & (cnt[0] $ (cnt[1]))))

	.dataa(cnt[0]),
	.datab(\ps.B~q ),
	.datac(cnt[1]),
	.datad(\cnt[0]~0_combout ),
	.cin(gnd),
	.combout(\cnt[1]~2_combout ),
	.cout());
// synopsys translate_off
defparam \cnt[1]~2 .lut_mask = 16'hF012;
defparam \cnt[1]~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y1_N7
dffeas \cnt[1] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\cnt[1]~2_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(cnt[1]),
	.prn(vcc));
// synopsys translate_off
defparam \cnt[1] .is_wysiwyg = "true";
defparam \cnt[1] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y1_N30
cycloneiv_lcell_comb \ns.D~0 (
// Equation(s):
// \ns.D~0_combout  = (cnt[1] & (cnt[2] & !cnt[0]))

	.dataa(cnt[1]),
	.datab(gnd),
	.datac(cnt[2]),
	.datad(cnt[0]),
	.cin(gnd),
	.combout(\ns.D~0_combout ),
	.cout());
// synopsys translate_off
defparam \ns.D~0 .lut_mask = 16'h00A0;
defparam \ns.D~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y1_N28
cycloneiv_lcell_comb \ns.D~1 (
// Equation(s):
// \ns.D~1_combout  = (\j~input_o  & (\ns.D~0_combout  & \ps.C~q ))

	.dataa(gnd),
	.datab(\j~input_o ),
	.datac(\ns.D~0_combout ),
	.datad(\ps.C~q ),
	.cin(gnd),
	.combout(\ns.D~1_combout ),
	.cout());
// synopsys translate_off
defparam \ns.D~1 .lut_mask = 16'hC000;
defparam \ns.D~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y1_N29
dffeas \ps.D (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\ns.D~1_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\ps.D~q ),
	.prn(vcc));
// synopsys translate_off
defparam \ps.D .is_wysiwyg = "true";
defparam \ps.D .power_up = "low";
// synopsys translate_on

assign w = \w~output_o ;

endmodule

module hard_block (

	devpor,
	devclrn,
	devoe);

// Design Ports Information
// ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
// ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
// ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default

input 	devpor;
input 	devclrn;
input 	devoe;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

wire \~ALTERA_DATA0~~padout ;
wire \~ALTERA_ASDO~~padout ;
wire \~ALTERA_NCSO~~padout ;
wire \~ALTERA_DATA0~~ibuf_o ;
wire \~ALTERA_ASDO~~ibuf_o ;
wire \~ALTERA_NCSO~~ibuf_o ;


endmodule

