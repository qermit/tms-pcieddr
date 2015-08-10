-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:48:31 MST 2014
-- Date        : Wed Jul 15 23:21:43 2015
-- Host        : andrzej running 64-bit Ubuntu 12.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/andrzej/projects/pcie_vivado/project_vivado/GEM_WEST.srcs/sources_1/ip/clock_unit/clock_unit_stub.vhdl
-- Design      : clock_unit
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tffg1156-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clock_unit is
  Port ( 
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    clk_out3 : out STD_LOGIC;
    clk_out4 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC
  );

end clock_unit;

architecture stub of clock_unit is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in1,clk_out1,clk_out2,clk_out3,clk_out4,reset,locked";
begin
end;
