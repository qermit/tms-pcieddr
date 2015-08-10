// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:48:31 MST 2014
// Date        : Wed Jul 15 23:25:33 2015
// Host        : andrzej running 64-bit Ubuntu 12.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/andrzej/projects/pcie_vivado/project_vivado/GEM_WEST.srcs/sources_1/ip/ddr_core/ddr_core_stub.v
// Design      : ddr_core
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tffg1156-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ddr_core(ddr3_dq, ddr3_dqs_p, ddr3_dqs_n, ddr3_addr, ddr3_ba, ddr3_ras_n, ddr3_cas_n, ddr3_we_n, ddr3_reset_n, ddr3_ck_p, ddr3_ck_n, ddr3_cke, ddr3_cs_n, ddr3_dm, ddr3_odt, app_addr, app_cmd, app_en, app_wdf_data, app_wdf_end, app_wdf_mask, app_wdf_wren, app_rd_data, app_rd_data_end, app_rd_data_valid, app_rdy, app_wdf_rdy, app_sr_req, app_ref_req, app_zq_req, app_sr_active, app_ref_ack, app_zq_ack, ui_clk, ui_clk_sync_rst, init_calib_complete, sys_clk_i, sys_rst)
/* synthesis syn_black_box black_box_pad_pin="ddr3_dq[31:0],ddr3_dqs_p[3:0],ddr3_dqs_n[3:0],ddr3_addr[15:0],ddr3_ba[2:0],ddr3_ras_n,ddr3_cas_n,ddr3_we_n,ddr3_reset_n,ddr3_ck_p[0:0],ddr3_ck_n[0:0],ddr3_cke[0:0],ddr3_cs_n[0:0],ddr3_dm[3:0],ddr3_odt[0:0],app_addr[29:0],app_cmd[2:0],app_en,app_wdf_data[255:0],app_wdf_end,app_wdf_mask[31:0],app_wdf_wren,app_rd_data[255:0],app_rd_data_end,app_rd_data_valid,app_rdy,app_wdf_rdy,app_sr_req,app_ref_req,app_zq_req,app_sr_active,app_ref_ack,app_zq_ack,ui_clk,ui_clk_sync_rst,init_calib_complete,sys_clk_i,sys_rst" */;
  inout [31:0]ddr3_dq;
  inout [3:0]ddr3_dqs_p;
  inout [3:0]ddr3_dqs_n;
  output [15:0]ddr3_addr;
  output [2:0]ddr3_ba;
  output ddr3_ras_n;
  output ddr3_cas_n;
  output ddr3_we_n;
  output ddr3_reset_n;
  output [0:0]ddr3_ck_p;
  output [0:0]ddr3_ck_n;
  output [0:0]ddr3_cke;
  output [0:0]ddr3_cs_n;
  output [3:0]ddr3_dm;
  output [0:0]ddr3_odt;
  input [29:0]app_addr;
  input [2:0]app_cmd;
  input app_en;
  input [255:0]app_wdf_data;
  input app_wdf_end;
  input [31:0]app_wdf_mask;
  input app_wdf_wren;
  output [255:0]app_rd_data;
  output app_rd_data_end;
  output app_rd_data_valid;
  output app_rdy;
  output app_wdf_rdy;
  input app_sr_req;
  input app_ref_req;
  input app_zq_req;
  output app_sr_active;
  output app_ref_ack;
  output app_zq_ack;
  output ui_clk;
  output ui_clk_sync_rst;
  output init_calib_complete;
  input sys_clk_i;
  input sys_rst;
endmodule
