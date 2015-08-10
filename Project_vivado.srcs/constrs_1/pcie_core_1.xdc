#
# Pinout and constraints 
#
# Author: Andrzej Wojenski
#

create_clock -period 10.000 -name sys_clk -waveform {0.000 5.000} [get_ports sys_clk_p]
create_generated_clock -name {ddr3_ck_p[0]} -source [get_pins {bpm_pcie_a7_i/u_ddr_core/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_ck_gen_loop[0].ddr_ck_gen.ddr_ck/C}] -divide_by 1 [get_ports {ddr3_ck_p[0]}]

create_clock -period 10.000 -name pcie_clk [get_pins bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/mmcm_i/CLKIN1]

create_clock -period 10.000 -name {bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/O9} -waveform {0.000 5.000} [get_pins {bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtp_channel.gtpe2_channel_i/TXOUTCLK}]
create_generated_clock -name clk_125mhz_Gen -source [get_pins bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/I0] -divide_by 1 -add -master_clock clk_125mhz [get_pins bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/O]
# this signal is not used
#create_generated_clock -name clk_250mhz_Gen -source [get_pins bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/I1] -divide_by 1 -add -master_clock clk_250mhz [get_pins bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/O]
#set_clock_groups -logically_exclusive -group [get_clocks -include_generated_clocks clk_125mhz_Gen] -group [get_clocks -include_generated_clocks clk_250mhz_Gen]

set_false_path -through [get_pins bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_block_i/PLPHYLNKUPN*]
set_false_path -through [get_pins bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_block_i/PLRECEIVEDHOTRST*]

#set_false_path -through [get_nets {bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/user_resetdone*}]
set_false_path -through [get_nets bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/*reset*]
set_false_path -through [get_nets {bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/pipe_lane[0].gtp_pipe_rate.gtp_pipe_rate_i/*}]
set_false_path -through [get_nets {bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/pipe_lane[1].gtp_pipe_rate.gtp_pipe_rate_i/*}]
set_false_path -through [get_nets {bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/pipe_lane[2].gtp_pipe_rate.gtp_pipe_rate_i/*}]
set_false_path -through [get_nets {bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/pipe_lane[3].gtp_pipe_rate.gtp_pipe_rate_i/*}]

set_false_path -through [get_nets bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_sel*]

set_false_path -through [get_cells bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/gtp_pipe_reset.gtp_pipe_reset_i/pllreset_reg*]

set_case_analysis 1 [get_pins bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/S0]
set_case_analysis 0 [get_pins bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/S1]
set_false_path -from [get_pins bpm_pcie_a7_i/user_reset_reg/C]

set_false_path -through [get_cells bpm_pcie_a7_i/u_ddr_core/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/init_calib_complete_reg]
set_false_path -through [get_cells bpm_pcie_a7_i/theTlpControl/tx_Itf/ABB_Tx_MReader/Tx_wb_TimeOut_i_reg]
set_false_path -from [get_pins bpm_pcie_a7_i/theTlpControl/Memory_Space/usDMA_Channel_Rst_i_reg/C]
