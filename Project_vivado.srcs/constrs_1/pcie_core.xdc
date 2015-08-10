
####################################################################################
# Constraints from file : 'xc7a200tffg1156.ucf'
####################################################################################

##-----------------------------------------------------------------------------
##
## (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
##
## This file contains confidential and proprietary information
## of Xilinx, Inc. and is protected under U.S. and
## international copyright and other intellectual property
## laws.
##
## DISCLAIMER
## This disclaimer is not a license and does not grant any
## rights to the materials distributed herewith. Except as
## otherwise provided in a valid license issued to you by
## Xilinx, and to the maximum extent permitted by applicable
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
## WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
## (2) Xilinx shall not be liable (whether in contract or tort,
## including negligence, or under any other theory of
## liability) for any loss or damage of any kind or nature
## related to, arising under or in connection with these
## materials, including for any direct, or any indirect,
## special, incidental, or consequential loss or damage
## (including loss of data, profits, goodwill, or any type of
## loss or damage suffered as a result of any action brought
## by a third party) even if such damage or loss was
## reasonably foreseeable or Xilinx had been advised of the
## possibility of the same.
##
## CRITICAL APPLICATIONS
## Xilinx products are not designed or intended to be fail-
## safe, or for use in any application requiring fail-safe
## performance, such as life-support or safety devices or
## systems, Class III medical devices, nuclear facilities,
## applications related to the deployment of airbags, or any
## other applications that could lead to death, personal
## injury, or severe property or environmental damage
## (individually and collectively, "Critical
## Applications"). Customer assumes the sole risk and
## liability of any use of Xilinx products in Critical
## Applications, subject only to applicable laws and
## regulations governing limitations on product liability.
##
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
## PART OF THIS FILE AT ALL TIMES.
##
##-----------------------------------------------------------------------------
## Project    : Series-7 Integrated Block for PCI Express
## File       : xilinx_pcie_2_1_ep_7x_04_lane_gen1_xc7a200t-ffg1156-2-PCIE_X0Y0.ucf
## Version    : 1.10
#
###############################################################################
# Define Device, Package And Speed Grade
###############################################################################
#CONFIG PART = xc7a200t-ffg1156-2;
#########################################################################################################################
# User Constraints
#########################################################################################################################
###############################################################################
# User Time Names / User Time Groups / Time Specs
###############################################################################
###############################################################################
# User Physical Constraints
###############################################################################
#########################################################################################################################
# End User Constraints
#########################################################################################################################
#
#
#
#########################################################################################################################
# PCIE Core Constraints
#########################################################################################################################
###############################################################################
# Pinout and Related I/O Constraints
###############################################################################

#
# SYS reset (input) signal.  The sys_reset_n signal should be
# obtained from the PCI Express interface if possible.  For
# slot based form factors, a system reset signal is usually
# present on the connector.  For cable based form factors, a
# system reset signal may not be available.  In this case, the
# system reset signal must be generated locally by some form of
# supervisory circuit.  You may change the IOSTANDARD and LOC
# to suit your requirements and VCCO voltage banking rules.
# Some 7 series devices do not have 3.3 V I/Os available.
# Therefore the appropriate level shift is required to operate
# with these devices that contain only 1.8 V banks.
#
set_false_path -through [get_nets sys_rst_n]
set_property PACKAGE_PIN AG26 [get_ports sys_rst_n]
set_property IOSTANDARD LVCMOS25 [get_ports sys_rst_n]
set_property PULLUP true [get_ports sys_rst_n]

#
# SYS clock 100 MHz (input) signal. The sys_clk_p and sys_clk_n
# signals are the PCI Express reference clock. Virtex-7 GT
# Transceiver architecture requires the use of a dedicated clock
# resources (FPGA input pins) associated with each GT Transceiver.
# To use these pins an IBUFDS primitive (refclk_ibuf) is
# instantiated in user's design.
# Please refer to the Virtex-7 GT Transceiver User Guide
# (UG) for guidelines regarding clock resource selection.
#
#INST "refclk_ibuf" LOC = IBUFDS_GTE2_X1Y2;
#INST "*/pcie_core_i/pcieclk_ibuf" LOC = IBUFDS_GTE2_X1Y2;

set_property LOC IBUFDS_GTE2_X1Y0 [get_cells bpm_pcie_a7_i/pcieclk_ibuf]

#
# Transceiver instance placement.  This constraint selects the
# transceivers to be used, which also dictates the pinout for the
# transmit and receive differential pairs.  Please refer to the
# Virtex-7 GT Transceiver User Guide (UG) for more information.
#
# PCIe Lane 0
# PCIe Lane 1
# PCIe Lane 2
# PCIe Lane 3

# GTP Common Placement
set_property LOC GTPE2_COMMON_X1Y0 [get_cells {bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/pipe_lane[0].pipe_quad.pipe_common.qpll_wrapper_i/gtp_common.gtpe2_common_i}]

#
# PCI Express Block placement. This constraint selects the PCI Express
# Block to be used.
#
set_property LOC PCIE_X0Y0 [get_cells bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_block_i]

# MGT 116
set_property PACKAGE_PIN AK17 [get_ports {pci_exp_rxn[0]}]

set_property PACKAGE_PIN AM16 [get_ports {pci_exp_rxn[1]}]

set_property PACKAGE_PIN AK15 [get_ports {pci_exp_rxn[2]}]

set_property PACKAGE_PIN AK13 [get_ports {pci_exp_rxn[3]}]

#
# BlockRAM placement
#
#set_property LOC RAMB36_X2Y46 [get_cells {bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[3].ram/use_tdp.ramb36/bram36_tdp_bl.bram36_tdp_bl}]
#set_property LOC RAMB36_X1Y47 [get_cells {bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[2].ram/use_tdp.ramb36/bram36_tdp_bl.bram36_tdp_bl}]
#set_property LOC RAMB36_X1Y46 [get_cells {bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[1].ram/use_tdp.ramb36/bram36_tdp_bl.bram36_tdp_bl}]
#set_property LOC RAMB36_X1Y45 [get_cells {bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[0].ram/use_tdp.ramb36/bram36_tdp_bl.bram36_tdp_bl}]
#set_property LOC RAMB36_X1Y44 [get_cells {bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_tx/brams[0].ram/use_tdp.ramb36/bram36_tdp_bl.bram36_tdp_bl}]
#set_property LOC RAMB36_X1Y43 [get_cells {bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_tx/brams[1].ram/use_tdp.ramb36/bram36_tdp_bl.bram36_tdp_bl}]
#set_property LOC RAMB36_X1Y42 [get_cells {bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_tx/brams[2].ram/use_tdp.ramb36/bram36_tdp_bl.bram36_tdp_bl}]
#set_property LOC RAMB36_X1Y41 [get_cells {bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_tx/brams[3].ram/use_tdp.ramb36/bram36_tdp_bl.bram36_tdp_bl}]
# is not leaf level -> check this

#set_property LOC RAMB36_X2Y46 [get_cells {bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[3].ram/use_tdp.ramb36}]
#set_property LOC RAMB36_X1Y47 [get_cells {bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[2].ram/use_tdp.ramb36}]
#set_property LOC RAMB36_X1Y46 [get_cells {bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[1].ram/use_tdp.ramb36}]
#set_property LOC RAMB36_X1Y45 [get_cells {bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[0].ram/use_tdp.ramb36}]
#set_property LOC RAMB36_X1Y44 [get_cells {bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_tx/brams[0].ram/use_tdp.ramb36}]
#set_property LOC RAMB36_X1Y43 [get_cells {bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_tx/brams[1].ram/use_tdp.ramb36}]
#set_property LOC RAMB36_X1Y42 [get_cells {bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_tx/brams[2].ram/use_tdp.ramb36}]
#set_property LOC RAMB36_X1Y41 [get_cells {bpm_pcie_a7_i/pcie_core_i/pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_tx/brams[3].ram/use_tdp.ramb36}]

###############################################################################
# Timing Constraints
###############################################################################

#INST "bpm_pcie_a7_i/pcie_core_i/gt_top.gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/mmcm_i" LOC = MMCME2_ADV_X0Y4;



################################################################################
## Physical Constraints
################################################################################
##########################################################################################################################
## End PCIe Core Constraints
##########################################################################################################################
#























