-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
-- Date        : Tue Jul 28 09:42:06 2015
-- Host        : SDPC117 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.srcs/sources_1/ip/clock_unit/clock_unit_stub.vhdl
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
