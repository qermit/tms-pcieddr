// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:48:31 MST 2014
// Date        : Wed Jul 15 23:21:43 2015
// Host        : andrzej running 64-bit Ubuntu 12.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/andrzej/projects/pcie_vivado/project_vivado/GEM_WEST.srcs/sources_1/ip/clock_unit/clock_unit_stub.v
// Design      : clock_unit
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tffg1156-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clock_unit(clk_in1, clk_out1, clk_out2, clk_out3, clk_out4, reset, locked)
/* synthesis syn_black_box black_box_pad_pin="clk_in1,clk_out1,clk_out2,clk_out3,clk_out4,reset,locked" */;
  input clk_in1;
  output clk_out1;
  output clk_out2;
  output clk_out3;
  output clk_out4;
  input reset;
  output locked;
endmodule
