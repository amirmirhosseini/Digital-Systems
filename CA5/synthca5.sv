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

// DATE "06/08/2025 06:12:51"

// 
// Device: Altera EP4CGX15BF14A7 Package FBGA169
// 

// 
// This Verilog file should be used for ModelSim-Altera (SystemVerilog) only
// 

`timescale 1 ns/ 1 ns

module ca5_without_m (
	clk,
	rst,
	rcIn,
	txOut,
	txValid,
	txAbort);
input 	clk;
input 	rst;
input 	rcIn;
output 	txOut;
output 	txValid;
output 	txAbort;

// Design Ports Information
// txOut	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
// txValid	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
// txAbort	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
// rcIn	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
initial $sdf_annotate("ca5_without_m_v.sdo");
// synopsys translate_on

wire \txOut~output_o ;
wire \txValid~output_o ;
wire \txAbort~output_o ;
wire \rcIn~input_o ;
wire \clk~input_o ;
wire \clk~inputclkctrl_outclk ;
wire \Selector0~3_combout ;
wire \Selector0~2_combout ;
wire \ld~0_combout ;
wire \cnt[0]~3_combout ;
wire \rst~input_o ;
wire \rst~inputclkctrl_outclk ;
wire \cnt[2]~0_combout ;
wire \cnt[1]~2_combout ;
wire \Add0~0_combout ;
wire \cnt[2]~1_combout ;
wire \Equal0~0_combout ;
wire \Selector0~4_combout ;
wire \ps_seq.A~q ;
wire \Selector1~0_combout ;
wire \Selector1~1_combout ;
wire \ps_seq.B~q ;
wire \Selector2~8_combout ;
wire \ps_seq.C~q ;
wire \ns_seq.D~0_combout ;
wire \ps_seq.D~q ;
wire \Selector4~0_combout ;
wire \ps.DETECTED~q ;
wire \tx_cnt[0]~7_combout ;
wire \tx_cnt[0]~8 ;
wire \tx_cnt[1]~9_combout ;
wire \tx_cnt[1]~10 ;
wire \tx_cnt[2]~11_combout ;
wire \tx_cnt[2]~12 ;
wire \tx_cnt[3]~13_combout ;
wire \Equal2~0_combout ;
wire \tx_cnt[3]~14 ;
wire \tx_cnt[4]~15_combout ;
wire \tx_cnt[4]~16 ;
wire \tx_cnt[5]~17_combout ;
wire \tx_cnt[5]~18 ;
wire \tx_cnt[6]~19_combout ;
wire \Equal2~1_combout ;
wire \shift_reg[0]~feeder_combout ;
wire \shift_reg[1]~feeder_combout ;
wire \shift_reg[2]~feeder_combout ;
wire \shift_reg[3]~feeder_combout ;
wire \Equal1~1_combout ;
wire \shift_reg[4]~feeder_combout ;
wire \shift_reg[5]~feeder_combout ;
wire \shift_reg[6]~feeder_combout ;
wire \Equal1~0_combout ;
wire \always6~0_combout ;
wire \Selector5~0_combout ;
wire \ps.TRANSMIT~q ;
wire \Selector3~0_combout ;
wire \ps.IDLE~q ;
wire \txOut~0_combout ;
wire \txAbort~0_combout ;
wire [6:0] tx_cnt;
wire [7:0] shift_reg;
wire [2:0] cnt;


hard_block auto_generated_inst(
	.devpor(devpor),
	.devclrn(devclrn),
	.devoe(devoe));

// Location: IOOBUF_X12_Y0_N9
cycloneiv_io_obuf \txOut~output (
	.i(\txOut~0_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\txOut~output_o ),
	.obar());
// synopsys translate_off
defparam \txOut~output .bus_hold = "false";
defparam \txOut~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X14_Y0_N9
cycloneiv_io_obuf \txValid~output (
	.i(\ps.IDLE~q ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\txValid~output_o ),
	.obar());
// synopsys translate_off
defparam \txValid~output .bus_hold = "false";
defparam \txValid~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X14_Y0_N2
cycloneiv_io_obuf \txAbort~output (
	.i(\txAbort~0_combout ),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(\txAbort~output_o ),
	.obar());
// synopsys translate_off
defparam \txAbort~output .bus_hold = "false";
defparam \txAbort~output .open_drain_output = "false";
// synopsys translate_on

// Location: IOIBUF_X12_Y0_N1
cycloneiv_io_ibuf \rcIn~input (
	.i(rcIn),
	.ibar(gnd),
	.o(\rcIn~input_o ));
// synopsys translate_off
defparam \rcIn~input .bus_hold = "false";
defparam \rcIn~input .simulate_z_as = "z";
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

// Location: LCCOMB_X14_Y4_N28
cycloneiv_lcell_comb \Selector0~3 (
// Equation(s):
// \Selector0~3_combout  = (\rcIn~input_o  & (((\ps_seq.D~q )) # (!\ps_seq.A~q ))) # (!\rcIn~input_o  & (((\ps_seq.B~q ))))

	.dataa(\rcIn~input_o ),
	.datab(\ps_seq.A~q ),
	.datac(\ps_seq.B~q ),
	.datad(\ps_seq.D~q ),
	.cin(gnd),
	.combout(\Selector0~3_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~3 .lut_mask = 16'hFA72;
defparam \Selector0~3 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y4_N30
cycloneiv_lcell_comb \Selector0~2 (
// Equation(s):
// \Selector0~2_combout  = (\rcIn~input_o  & \ps_seq.C~q )

	.dataa(\rcIn~input_o ),
	.datab(gnd),
	.datac(\ps_seq.C~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector0~2_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~2 .lut_mask = 16'hA0A0;
defparam \Selector0~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y4_N20
cycloneiv_lcell_comb \ld~0 (
// Equation(s):
// \ld~0_combout  = (\rcIn~input_o  & \ps_seq.B~q )

	.dataa(\rcIn~input_o ),
	.datab(gnd),
	.datac(\ps_seq.B~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\ld~0_combout ),
	.cout());
// synopsys translate_off
defparam \ld~0 .lut_mask = 16'hA0A0;
defparam \ld~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y4_N18
cycloneiv_lcell_comb \cnt[0]~3 (
// Equation(s):
// \cnt[0]~3_combout  = (\ld~0_combout  & (((cnt[0]) # (\Equal0~0_combout )) # (!\Selector0~2_combout ))) # (!\ld~0_combout  & (cnt[0] $ (((\Selector0~2_combout  & !\Equal0~0_combout )))))

	.dataa(\Selector0~2_combout ),
	.datab(\ld~0_combout ),
	.datac(cnt[0]),
	.datad(\Equal0~0_combout ),
	.cin(gnd),
	.combout(\cnt[0]~3_combout ),
	.cout());
// synopsys translate_off
defparam \cnt[0]~3 .lut_mask = 16'hFCD6;
defparam \cnt[0]~3 .sum_lutc_input = "datac";
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

// Location: FF_X14_Y4_N19
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

// Location: LCCOMB_X14_Y4_N16
cycloneiv_lcell_comb \cnt[2]~0 (
// Equation(s):
// \cnt[2]~0_combout  = (\ps_seq.B~q  $ (((\Equal0~0_combout ) # (!\ps_seq.C~q )))) # (!\rcIn~input_o )

	.dataa(\rcIn~input_o ),
	.datab(\ps_seq.C~q ),
	.datac(\ps_seq.B~q ),
	.datad(\Equal0~0_combout ),
	.cin(gnd),
	.combout(\cnt[2]~0_combout ),
	.cout());
// synopsys translate_off
defparam \cnt[2]~0 .lut_mask = 16'h5FD7;
defparam \cnt[2]~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y4_N8
cycloneiv_lcell_comb \cnt[1]~2 (
// Equation(s):
// \cnt[1]~2_combout  = (\cnt[2]~0_combout  & (((cnt[1])))) # (!\cnt[2]~0_combout  & (!\ld~0_combout  & (cnt[0] $ (cnt[1]))))

	.dataa(cnt[0]),
	.datab(\ld~0_combout ),
	.datac(cnt[1]),
	.datad(\cnt[2]~0_combout ),
	.cin(gnd),
	.combout(\cnt[1]~2_combout ),
	.cout());
// synopsys translate_off
defparam \cnt[1]~2 .lut_mask = 16'hF012;
defparam \cnt[1]~2 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y4_N9
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

// Location: LCCOMB_X14_Y4_N10
cycloneiv_lcell_comb \Add0~0 (
// Equation(s):
// \Add0~0_combout  = cnt[2] $ (((cnt[1] & cnt[0])))

	.dataa(gnd),
	.datab(cnt[1]),
	.datac(cnt[2]),
	.datad(cnt[0]),
	.cin(gnd),
	.combout(\Add0~0_combout ),
	.cout());
// synopsys translate_off
defparam \Add0~0 .lut_mask = 16'h3CF0;
defparam \Add0~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y4_N14
cycloneiv_lcell_comb \cnt[2]~1 (
// Equation(s):
// \cnt[2]~1_combout  = (\cnt[2]~0_combout  & (((cnt[2])))) # (!\cnt[2]~0_combout  & (\Add0~0_combout  & (!\ld~0_combout )))

	.dataa(\Add0~0_combout ),
	.datab(\ld~0_combout ),
	.datac(cnt[2]),
	.datad(\cnt[2]~0_combout ),
	.cin(gnd),
	.combout(\cnt[2]~1_combout ),
	.cout());
// synopsys translate_off
defparam \cnt[2]~1 .lut_mask = 16'hF022;
defparam \cnt[2]~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y4_N15
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

// Location: LCCOMB_X14_Y4_N12
cycloneiv_lcell_comb \Equal0~0 (
// Equation(s):
// \Equal0~0_combout  = (cnt[1] & (cnt[2] & !cnt[0]))

	.dataa(gnd),
	.datab(cnt[1]),
	.datac(cnt[2]),
	.datad(cnt[0]),
	.cin(gnd),
	.combout(\Equal0~0_combout ),
	.cout());
// synopsys translate_off
defparam \Equal0~0 .lut_mask = 16'h00C0;
defparam \Equal0~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y4_N0
cycloneiv_lcell_comb \Selector0~4 (
// Equation(s):
// \Selector0~4_combout  = (!\Selector0~3_combout  & (((!\Equal0~0_combout ) # (!\ps_seq.C~q )) # (!\rcIn~input_o )))

	.dataa(\rcIn~input_o ),
	.datab(\Selector0~3_combout ),
	.datac(\ps_seq.C~q ),
	.datad(\Equal0~0_combout ),
	.cin(gnd),
	.combout(\Selector0~4_combout ),
	.cout());
// synopsys translate_off
defparam \Selector0~4 .lut_mask = 16'h1333;
defparam \Selector0~4 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y4_N1
dffeas \ps_seq.A (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\Selector0~4_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\ps_seq.A~q ),
	.prn(vcc));
// synopsys translate_off
defparam \ps_seq.A .is_wysiwyg = "true";
defparam \ps_seq.A .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y4_N26
cycloneiv_lcell_comb \Selector1~0 (
// Equation(s):
// \Selector1~0_combout  = (!\rcIn~input_o  & ((\ps_seq.D~q ) # (!\ps_seq.A~q )))

	.dataa(\rcIn~input_o ),
	.datab(\ps_seq.A~q ),
	.datac(gnd),
	.datad(\ps_seq.D~q ),
	.cin(gnd),
	.combout(\Selector1~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~0 .lut_mask = 16'h5511;
defparam \Selector1~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y4_N22
cycloneiv_lcell_comb \Selector1~1 (
// Equation(s):
// \Selector1~1_combout  = (\Selector1~0_combout ) # ((!\rcIn~input_o  & (\ps_seq.C~q  & !\Equal0~0_combout )))

	.dataa(\rcIn~input_o ),
	.datab(\ps_seq.C~q ),
	.datac(\Selector1~0_combout ),
	.datad(\Equal0~0_combout ),
	.cin(gnd),
	.combout(\Selector1~1_combout ),
	.cout());
// synopsys translate_off
defparam \Selector1~1 .lut_mask = 16'hF0F4;
defparam \Selector1~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y4_N23
dffeas \ps_seq.B (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\Selector1~1_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\ps_seq.B~q ),
	.prn(vcc));
// synopsys translate_off
defparam \ps_seq.B .is_wysiwyg = "true";
defparam \ps_seq.B .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y4_N4
cycloneiv_lcell_comb \Selector2~8 (
// Equation(s):
// \Selector2~8_combout  = (\rcIn~input_o  & ((\ps_seq.B~q ) # ((\ps_seq.C~q  & !\Equal0~0_combout ))))

	.dataa(\ps_seq.B~q ),
	.datab(\rcIn~input_o ),
	.datac(\ps_seq.C~q ),
	.datad(\Equal0~0_combout ),
	.cin(gnd),
	.combout(\Selector2~8_combout ),
	.cout());
// synopsys translate_off
defparam \Selector2~8 .lut_mask = 16'h88C8;
defparam \Selector2~8 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y4_N5
dffeas \ps_seq.C (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\Selector2~8_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\ps_seq.C~q ),
	.prn(vcc));
// synopsys translate_off
defparam \ps_seq.C .is_wysiwyg = "true";
defparam \ps_seq.C .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y4_N6
cycloneiv_lcell_comb \ns_seq.D~0 (
// Equation(s):
// \ns_seq.D~0_combout  = (!\rcIn~input_o  & (\ps_seq.C~q  & \Equal0~0_combout ))

	.dataa(\rcIn~input_o ),
	.datab(gnd),
	.datac(\ps_seq.C~q ),
	.datad(\Equal0~0_combout ),
	.cin(gnd),
	.combout(\ns_seq.D~0_combout ),
	.cout());
// synopsys translate_off
defparam \ns_seq.D~0 .lut_mask = 16'h5000;
defparam \ns_seq.D~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y4_N7
dffeas \ps_seq.D (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\ns_seq.D~0_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\ps_seq.D~q ),
	.prn(vcc));
// synopsys translate_off
defparam \ps_seq.D .is_wysiwyg = "true";
defparam \ps_seq.D .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y4_N6
cycloneiv_lcell_comb \Selector4~0 (
// Equation(s):
// \Selector4~0_combout  = (!\ps.IDLE~q  & \ps_seq.D~q )

	.dataa(gnd),
	.datab(\ps.IDLE~q ),
	.datac(\ps_seq.D~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector4~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector4~0 .lut_mask = 16'h3030;
defparam \Selector4~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y4_N7
dffeas \ps.DETECTED (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\Selector4~0_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\ps.DETECTED~q ),
	.prn(vcc));
// synopsys translate_off
defparam \ps.DETECTED .is_wysiwyg = "true";
defparam \ps.DETECTED .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y4_N12
cycloneiv_lcell_comb \tx_cnt[0]~7 (
// Equation(s):
// \tx_cnt[0]~7_combout  = tx_cnt[0] $ (VCC)
// \tx_cnt[0]~8  = CARRY(tx_cnt[0])

	.dataa(tx_cnt[0]),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\tx_cnt[0]~7_combout ),
	.cout(\tx_cnt[0]~8 ));
// synopsys translate_off
defparam \tx_cnt[0]~7 .lut_mask = 16'h55AA;
defparam \tx_cnt[0]~7 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y4_N13
dffeas \tx_cnt[0] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\tx_cnt[0]~7_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(!\ps.TRANSMIT~q ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(tx_cnt[0]),
	.prn(vcc));
// synopsys translate_off
defparam \tx_cnt[0] .is_wysiwyg = "true";
defparam \tx_cnt[0] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y4_N14
cycloneiv_lcell_comb \tx_cnt[1]~9 (
// Equation(s):
// \tx_cnt[1]~9_combout  = (tx_cnt[1] & (!\tx_cnt[0]~8 )) # (!tx_cnt[1] & ((\tx_cnt[0]~8 ) # (GND)))
// \tx_cnt[1]~10  = CARRY((!\tx_cnt[0]~8 ) # (!tx_cnt[1]))

	.dataa(gnd),
	.datab(tx_cnt[1]),
	.datac(gnd),
	.datad(vcc),
	.cin(\tx_cnt[0]~8 ),
	.combout(\tx_cnt[1]~9_combout ),
	.cout(\tx_cnt[1]~10 ));
// synopsys translate_off
defparam \tx_cnt[1]~9 .lut_mask = 16'h3C3F;
defparam \tx_cnt[1]~9 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y4_N15
dffeas \tx_cnt[1] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\tx_cnt[1]~9_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(!\ps.TRANSMIT~q ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(tx_cnt[1]),
	.prn(vcc));
// synopsys translate_off
defparam \tx_cnt[1] .is_wysiwyg = "true";
defparam \tx_cnt[1] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y4_N16
cycloneiv_lcell_comb \tx_cnt[2]~11 (
// Equation(s):
// \tx_cnt[2]~11_combout  = (tx_cnt[2] & (\tx_cnt[1]~10  $ (GND))) # (!tx_cnt[2] & (!\tx_cnt[1]~10  & VCC))
// \tx_cnt[2]~12  = CARRY((tx_cnt[2] & !\tx_cnt[1]~10 ))

	.dataa(gnd),
	.datab(tx_cnt[2]),
	.datac(gnd),
	.datad(vcc),
	.cin(\tx_cnt[1]~10 ),
	.combout(\tx_cnt[2]~11_combout ),
	.cout(\tx_cnt[2]~12 ));
// synopsys translate_off
defparam \tx_cnt[2]~11 .lut_mask = 16'hC30C;
defparam \tx_cnt[2]~11 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y4_N17
dffeas \tx_cnt[2] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\tx_cnt[2]~11_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(!\ps.TRANSMIT~q ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(tx_cnt[2]),
	.prn(vcc));
// synopsys translate_off
defparam \tx_cnt[2] .is_wysiwyg = "true";
defparam \tx_cnt[2] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y4_N18
cycloneiv_lcell_comb \tx_cnt[3]~13 (
// Equation(s):
// \tx_cnt[3]~13_combout  = (tx_cnt[3] & (!\tx_cnt[2]~12 )) # (!tx_cnt[3] & ((\tx_cnt[2]~12 ) # (GND)))
// \tx_cnt[3]~14  = CARRY((!\tx_cnt[2]~12 ) # (!tx_cnt[3]))

	.dataa(gnd),
	.datab(tx_cnt[3]),
	.datac(gnd),
	.datad(vcc),
	.cin(\tx_cnt[2]~12 ),
	.combout(\tx_cnt[3]~13_combout ),
	.cout(\tx_cnt[3]~14 ));
// synopsys translate_off
defparam \tx_cnt[3]~13 .lut_mask = 16'h3C3F;
defparam \tx_cnt[3]~13 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y4_N19
dffeas \tx_cnt[3] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\tx_cnt[3]~13_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(!\ps.TRANSMIT~q ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(tx_cnt[3]),
	.prn(vcc));
// synopsys translate_off
defparam \tx_cnt[3] .is_wysiwyg = "true";
defparam \tx_cnt[3] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y4_N30
cycloneiv_lcell_comb \Equal2~0 (
// Equation(s):
// \Equal2~0_combout  = (!tx_cnt[0] & (!tx_cnt[3] & (!tx_cnt[1] & !tx_cnt[2])))

	.dataa(tx_cnt[0]),
	.datab(tx_cnt[3]),
	.datac(tx_cnt[1]),
	.datad(tx_cnt[2]),
	.cin(gnd),
	.combout(\Equal2~0_combout ),
	.cout());
// synopsys translate_off
defparam \Equal2~0 .lut_mask = 16'h0001;
defparam \Equal2~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y4_N20
cycloneiv_lcell_comb \tx_cnt[4]~15 (
// Equation(s):
// \tx_cnt[4]~15_combout  = (tx_cnt[4] & (\tx_cnt[3]~14  $ (GND))) # (!tx_cnt[4] & (!\tx_cnt[3]~14  & VCC))
// \tx_cnt[4]~16  = CARRY((tx_cnt[4] & !\tx_cnt[3]~14 ))

	.dataa(gnd),
	.datab(tx_cnt[4]),
	.datac(gnd),
	.datad(vcc),
	.cin(\tx_cnt[3]~14 ),
	.combout(\tx_cnt[4]~15_combout ),
	.cout(\tx_cnt[4]~16 ));
// synopsys translate_off
defparam \tx_cnt[4]~15 .lut_mask = 16'hC30C;
defparam \tx_cnt[4]~15 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y4_N21
dffeas \tx_cnt[4] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\tx_cnt[4]~15_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(!\ps.TRANSMIT~q ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(tx_cnt[4]),
	.prn(vcc));
// synopsys translate_off
defparam \tx_cnt[4] .is_wysiwyg = "true";
defparam \tx_cnt[4] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y4_N22
cycloneiv_lcell_comb \tx_cnt[5]~17 (
// Equation(s):
// \tx_cnt[5]~17_combout  = (tx_cnt[5] & (!\tx_cnt[4]~16 )) # (!tx_cnt[5] & ((\tx_cnt[4]~16 ) # (GND)))
// \tx_cnt[5]~18  = CARRY((!\tx_cnt[4]~16 ) # (!tx_cnt[5]))

	.dataa(tx_cnt[5]),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\tx_cnt[4]~16 ),
	.combout(\tx_cnt[5]~17_combout ),
	.cout(\tx_cnt[5]~18 ));
// synopsys translate_off
defparam \tx_cnt[5]~17 .lut_mask = 16'h5A5F;
defparam \tx_cnt[5]~17 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y4_N23
dffeas \tx_cnt[5] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\tx_cnt[5]~17_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(!\ps.TRANSMIT~q ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(tx_cnt[5]),
	.prn(vcc));
// synopsys translate_off
defparam \tx_cnt[5] .is_wysiwyg = "true";
defparam \tx_cnt[5] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y4_N24
cycloneiv_lcell_comb \tx_cnt[6]~19 (
// Equation(s):
// \tx_cnt[6]~19_combout  = \tx_cnt[5]~18  $ (!tx_cnt[6])

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(tx_cnt[6]),
	.cin(\tx_cnt[5]~18 ),
	.combout(\tx_cnt[6]~19_combout ),
	.cout());
// synopsys translate_off
defparam \tx_cnt[6]~19 .lut_mask = 16'hF00F;
defparam \tx_cnt[6]~19 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X15_Y4_N25
dffeas \tx_cnt[6] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\tx_cnt[6]~19_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(!\ps.TRANSMIT~q ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(tx_cnt[6]),
	.prn(vcc));
// synopsys translate_off
defparam \tx_cnt[6] .is_wysiwyg = "true";
defparam \tx_cnt[6] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y4_N8
cycloneiv_lcell_comb \Equal2~1 (
// Equation(s):
// \Equal2~1_combout  = (!tx_cnt[4] & (tx_cnt[5] & tx_cnt[6]))

	.dataa(gnd),
	.datab(tx_cnt[4]),
	.datac(tx_cnt[5]),
	.datad(tx_cnt[6]),
	.cin(gnd),
	.combout(\Equal2~1_combout ),
	.cout());
// synopsys translate_off
defparam \Equal2~1 .lut_mask = 16'h3000;
defparam \Equal2~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y4_N4
cycloneiv_lcell_comb \shift_reg[0]~feeder (
// Equation(s):
// \shift_reg[0]~feeder_combout  = \rcIn~input_o 

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(\rcIn~input_o ),
	.cin(gnd),
	.combout(\shift_reg[0]~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \shift_reg[0]~feeder .lut_mask = 16'hFF00;
defparam \shift_reg[0]~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y4_N5
dffeas \shift_reg[0] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\shift_reg[0]~feeder_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(shift_reg[0]),
	.prn(vcc));
// synopsys translate_off
defparam \shift_reg[0] .is_wysiwyg = "true";
defparam \shift_reg[0] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y4_N26
cycloneiv_lcell_comb \shift_reg[1]~feeder (
// Equation(s):
// \shift_reg[1]~feeder_combout  = shift_reg[0]

	.dataa(gnd),
	.datab(gnd),
	.datac(shift_reg[0]),
	.datad(gnd),
	.cin(gnd),
	.combout(\shift_reg[1]~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \shift_reg[1]~feeder .lut_mask = 16'hF0F0;
defparam \shift_reg[1]~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y4_N27
dffeas \shift_reg[1] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\shift_reg[1]~feeder_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(shift_reg[1]),
	.prn(vcc));
// synopsys translate_off
defparam \shift_reg[1] .is_wysiwyg = "true";
defparam \shift_reg[1] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y4_N0
cycloneiv_lcell_comb \shift_reg[2]~feeder (
// Equation(s):
// \shift_reg[2]~feeder_combout  = shift_reg[1]

	.dataa(gnd),
	.datab(gnd),
	.datac(shift_reg[1]),
	.datad(gnd),
	.cin(gnd),
	.combout(\shift_reg[2]~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \shift_reg[2]~feeder .lut_mask = 16'hF0F0;
defparam \shift_reg[2]~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y4_N1
dffeas \shift_reg[2] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\shift_reg[2]~feeder_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(shift_reg[2]),
	.prn(vcc));
// synopsys translate_off
defparam \shift_reg[2] .is_wysiwyg = "true";
defparam \shift_reg[2] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y4_N30
cycloneiv_lcell_comb \shift_reg[3]~feeder (
// Equation(s):
// \shift_reg[3]~feeder_combout  = shift_reg[2]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(shift_reg[2]),
	.cin(gnd),
	.combout(\shift_reg[3]~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \shift_reg[3]~feeder .lut_mask = 16'hFF00;
defparam \shift_reg[3]~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y4_N31
dffeas \shift_reg[3] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\shift_reg[3]~feeder_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(shift_reg[3]),
	.prn(vcc));
// synopsys translate_off
defparam \shift_reg[3] .is_wysiwyg = "true";
defparam \shift_reg[3] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y4_N20
cycloneiv_lcell_comb \Equal1~1 (
// Equation(s):
// \Equal1~1_combout  = (!shift_reg[3] & (shift_reg[0] & (!shift_reg[1] & !shift_reg[2])))

	.dataa(shift_reg[3]),
	.datab(shift_reg[0]),
	.datac(shift_reg[1]),
	.datad(shift_reg[2]),
	.cin(gnd),
	.combout(\Equal1~1_combout ),
	.cout());
// synopsys translate_off
defparam \Equal1~1 .lut_mask = 16'h0004;
defparam \Equal1~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y4_N10
cycloneiv_lcell_comb \shift_reg[4]~feeder (
// Equation(s):
// \shift_reg[4]~feeder_combout  = shift_reg[3]

	.dataa(gnd),
	.datab(gnd),
	.datac(shift_reg[3]),
	.datad(gnd),
	.cin(gnd),
	.combout(\shift_reg[4]~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \shift_reg[4]~feeder .lut_mask = 16'hF0F0;
defparam \shift_reg[4]~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y4_N11
dffeas \shift_reg[4] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\shift_reg[4]~feeder_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(shift_reg[4]),
	.prn(vcc));
// synopsys translate_off
defparam \shift_reg[4] .is_wysiwyg = "true";
defparam \shift_reg[4] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y4_N28
cycloneiv_lcell_comb \shift_reg[5]~feeder (
// Equation(s):
// \shift_reg[5]~feeder_combout  = shift_reg[4]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(shift_reg[4]),
	.cin(gnd),
	.combout(\shift_reg[5]~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \shift_reg[5]~feeder .lut_mask = 16'hFF00;
defparam \shift_reg[5]~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y4_N29
dffeas \shift_reg[5] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\shift_reg[5]~feeder_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(shift_reg[5]),
	.prn(vcc));
// synopsys translate_off
defparam \shift_reg[5] .is_wysiwyg = "true";
defparam \shift_reg[5] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y4_N18
cycloneiv_lcell_comb \shift_reg[6]~feeder (
// Equation(s):
// \shift_reg[6]~feeder_combout  = shift_reg[5]

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(shift_reg[5]),
	.cin(gnd),
	.combout(\shift_reg[6]~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \shift_reg[6]~feeder .lut_mask = 16'hFF00;
defparam \shift_reg[6]~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y4_N19
dffeas \shift_reg[6] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\shift_reg[6]~feeder_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(shift_reg[6]),
	.prn(vcc));
// synopsys translate_off
defparam \shift_reg[6] .is_wysiwyg = "true";
defparam \shift_reg[6] .power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y4_N25
dffeas \shift_reg[7] (
	.clk(\clk~inputclkctrl_outclk ),
	.d(gnd),
	.asdata(shift_reg[6]),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(shift_reg[7]),
	.prn(vcc));
// synopsys translate_off
defparam \shift_reg[7] .is_wysiwyg = "true";
defparam \shift_reg[7] .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y4_N24
cycloneiv_lcell_comb \Equal1~0 (
// Equation(s):
// \Equal1~0_combout  = (!shift_reg[4] & (!shift_reg[5] & (shift_reg[7] & !shift_reg[6])))

	.dataa(shift_reg[4]),
	.datab(shift_reg[5]),
	.datac(shift_reg[7]),
	.datad(shift_reg[6]),
	.cin(gnd),
	.combout(\Equal1~0_combout ),
	.cout());
// synopsys translate_off
defparam \Equal1~0 .lut_mask = 16'h0010;
defparam \Equal1~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y4_N10
cycloneiv_lcell_comb \always6~0 (
// Equation(s):
// \always6~0_combout  = (\Equal2~0_combout  & ((\Equal2~1_combout ) # ((\Equal1~1_combout  & \Equal1~0_combout )))) # (!\Equal2~0_combout  & (((\Equal1~1_combout  & \Equal1~0_combout ))))

	.dataa(\Equal2~0_combout ),
	.datab(\Equal2~1_combout ),
	.datac(\Equal1~1_combout ),
	.datad(\Equal1~0_combout ),
	.cin(gnd),
	.combout(\always6~0_combout ),
	.cout());
// synopsys translate_off
defparam \always6~0 .lut_mask = 16'hF888;
defparam \always6~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y4_N26
cycloneiv_lcell_comb \Selector5~0 (
// Equation(s):
// \Selector5~0_combout  = (\ps.DETECTED~q ) # ((\ps.TRANSMIT~q  & !\always6~0_combout ))

	.dataa(\ps.DETECTED~q ),
	.datab(gnd),
	.datac(\ps.TRANSMIT~q ),
	.datad(\always6~0_combout ),
	.cin(gnd),
	.combout(\Selector5~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector5~0 .lut_mask = 16'hAAFA;
defparam \Selector5~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y4_N27
dffeas \ps.TRANSMIT (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\Selector5~0_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\ps.TRANSMIT~q ),
	.prn(vcc));
// synopsys translate_off
defparam \ps.TRANSMIT .is_wysiwyg = "true";
defparam \ps.TRANSMIT .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y4_N4
cycloneiv_lcell_comb \Selector3~0 (
// Equation(s):
// \Selector3~0_combout  = (\ps.TRANSMIT~q  & (!\always6~0_combout  & ((\ps_seq.D~q ) # (\ps.IDLE~q )))) # (!\ps.TRANSMIT~q  & ((\ps_seq.D~q ) # ((\ps.IDLE~q ))))

	.dataa(\ps.TRANSMIT~q ),
	.datab(\ps_seq.D~q ),
	.datac(\ps.IDLE~q ),
	.datad(\always6~0_combout ),
	.cin(gnd),
	.combout(\Selector3~0_combout ),
	.cout());
// synopsys translate_off
defparam \Selector3~0 .lut_mask = 16'h54FC;
defparam \Selector3~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y4_N5
dffeas \ps.IDLE (
	.clk(\clk~inputclkctrl_outclk ),
	.d(\Selector3~0_combout ),
	.asdata(vcc),
	.clrn(!\rst~inputclkctrl_outclk ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(\ps.IDLE~q ),
	.prn(vcc));
// synopsys translate_off
defparam \ps.IDLE .is_wysiwyg = "true";
defparam \ps.IDLE .power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y4_N24
cycloneiv_lcell_comb \txOut~0 (
// Equation(s):
// \txOut~0_combout  = (\rcIn~input_o ) # (!\ps.IDLE~q )

	.dataa(\rcIn~input_o ),
	.datab(gnd),
	.datac(gnd),
	.datad(\ps.IDLE~q ),
	.cin(gnd),
	.combout(\txOut~0_combout ),
	.cout());
// synopsys translate_off
defparam \txOut~0 .lut_mask = 16'hAAFF;
defparam \txOut~0 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y4_N28
cycloneiv_lcell_comb \txAbort~0 (
// Equation(s):
// \txAbort~0_combout  = (\ps.TRANSMIT~q  & (\Equal1~0_combout  & \Equal1~1_combout ))

	.dataa(\ps.TRANSMIT~q ),
	.datab(\Equal1~0_combout ),
	.datac(\Equal1~1_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\txAbort~0_combout ),
	.cout());
// synopsys translate_off
defparam \txAbort~0 .lut_mask = 16'h8080;
defparam \txAbort~0 .sum_lutc_input = "datac";
// synopsys translate_on

assign txOut = \txOut~output_o ;

assign txValid = \txValid~output_o ;

assign txAbort = \txAbort~output_o ;

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

