
o
Command: %s
53*	vivadotcl2A
-place_design -directive ExtraPostPlacementOpt2default:defaultZ4-113h px
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a200t2default:defaultZ17-347h px
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a200t2default:defaultZ17-349h px
�
�The version limit for your license is '%s' and will expire in %s days. A version limit expiration means that, although you may be able to continue to use the current version of tools or IP with this license, you will not be eligible for any updates or new releases.
519*common2
2014.122default:default2
-2092default:defaultZ17-1223h px
M
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px
S
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px
b
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px
m
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px
M
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px
S
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px
b
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px
R

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px
y
/The placer was invoked with the '%s' directive.14*	placeflow2)
ExtraPostPlacementOpt2default:defaultZ46-5h px
z
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px
v

Phase %s%s
101*constraints2
1 2default:default2,
Placer Runtime Estimator2default:defaultZ18-101h px
I
7Phase 1 Placer Runtime Estimator | Checksum: 144f237da
*commonh px
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.879 . Memory (MB): peak = 1245.789 ; gain = 0.0002default:defaulth px
s

Phase %s%s
101*constraints2
2 2default:default2)
Placer Initialization2default:defaultZ18-101h px
z

Phase %s%s
101*constraints2
2.1 2default:default2.
Placer Initialization Core2default:defaultZ18-101h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0732default:default2
1245.7892default:default2
0.0002default:defaultZ17-268h px
d
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
02default:defaultZ31-140h px
d
1Inserted %s OBUFs to IO ports without IO buffers.101*opt2
02default:defaultZ31-141h px
r
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
32default:default2
32default:defaultZ31-138h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0732default:default2
1245.7892default:default2
0.0002default:defaultZ17-268h px
/
%s*constraints2
 2default:defaulth px
�

Phase %s%s
101*constraints2
2.1.1 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px
s

Phase %s%s
101*constraints2
2.1.1.1 2default:default2#
Pre-Place Cells2default:defaultZ18-101h px
E
3Phase 2.1.1.1 Pre-Place Cells | Checksum: 32b654f3
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1245.789 ; gain = 0.0002default:defaulth px
�
YRegister %s and %s are from the same synchronizer and have the ASYNC_REG property set, %s757*constraints2�
�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_read_C_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_reg	�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_read_C_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_reg2default:default2�
�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_read_C_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb_4	�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_read_C_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb_42default:default2�
nbut could not be placed into the same slice due to constraints or mismatched control signals on the registers.2default:default8Z18-1079h px
�
YRegister %s and %s are from the same synchronizer and have the ASYNC_REG property set, %s757*constraints2�
�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_read_C_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_reg	�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_read_C_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_reg2default:default2�
�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_read_C_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb_4	�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_read_C_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb_42default:default2�
nbut could not be placed into the same slice due to constraints or mismatched control signals on the registers.2default:default8Z18-1079h px
�
YRegister %s and %s are from the same synchronizer and have the ASYNC_REG property set, %s757*constraints2�
�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_read_D_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_reg	�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_read_D_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_reg2default:default2�
�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_read_D_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb_4	�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_read_D_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb_42default:default2�
nbut could not be placed into the same slice due to constraints or mismatched control signals on the registers.2default:default8Z18-1079h px
�
YRegister %s and %s are from the same synchronizer and have the ASYNC_REG property set, %s757*constraints2�
�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_read_D_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_reg	�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_read_D_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_reg2default:default2�
�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_read_D_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb_4	�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_read_D_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb_42default:default2�
nbut could not be placed into the same slice due to constraints or mismatched control signals on the registers.2default:default8Z18-1079h px
�
YRegister %s and %s are from the same synchronizer and have the ASYNC_REG property set, %s757*constraints2�
�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_write_f2m_fifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg	�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_write_f2m_fifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg2default:default2�
�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_write_f2m_fifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1	�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_write_f2m_fifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d12default:default2�
nbut could not be placed into the same slice due to constraints or mismatched control signals on the registers.2default:default8Z18-1079h px
�
YRegister %s and %s are from the same synchronizer and have the ASYNC_REG property set, %s757*constraints2�
�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_write_f2m_fifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg	�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_write_f2m_fifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg2default:default2�
�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_write_f2m_fifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1	�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_write_f2m_fifo/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d12default:default2�
nbut could not be placed into the same slice due to constraints or mismatched control signals on the registers.2default:default8Z18-1079h px
�
YRegister %s and %s are from the same synchronizer and have the ASYNC_REG property set, %s757*constraints2�
�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_write_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_reg	�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_write_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_reg2default:default2�
�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_write_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb_4	�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_write_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb_42default:default2�
nbut could not be placed into the same slice due to constraints or mismatched control signals on the registers.2default:default8Z18-1079h px
�
YRegister %s and %s are from the same synchronizer and have the ASYNC_REG property set, %s757*constraints2�
�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_write_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_reg	�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_write_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_reg2default:default2�
�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_write_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb_4	�bpm_pcie_a7_i/LoopBack_BRAM_Off.DDRs_ctrl_module/u_ddr_control/DDR_pipe_write_fifo/U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb_42default:default2�
nbut could not be placed into the same slice due to constraints or mismatched control signals on the registers.2default:default8Z18-1079h px
/
%s*constraints2
 2default:defaulth px
u

Phase %s%s
101*constraints2
2.1.1.2 2default:default2%
IO & Clk Clean Up2default:defaultZ18-101h px
G
5Phase 2.1.1.2 IO & Clk Clean Up | Checksum: 32b654f3
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:00:24 ; elapsed = 00:00:25 . Memory (MB): peak = 1245.789 ; gain = 0.0002default:defaulth px
�

Phase %s%s
101*constraints2
2.1.1.3 2default:default2>
*Implementation Feasibility check On IDelay2default:defaultZ18-101h px
`
NPhase 2.1.1.3 Implementation Feasibility check On IDelay | Checksum: 32b654f3
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:00:24 ; elapsed = 00:00:25 . Memory (MB): peak = 1245.789 ; gain = 0.0002default:defaulth px
w

Phase %s%s
101*constraints2
2.1.1.4 2default:default2'
Commit IO Placement2default:defaultZ18-101h px
I
7Phase 2.1.1.4 Commit IO Placement | Checksum: e816a75a
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:00:24 ; elapsed = 00:00:25 . Memory (MB): peak = 1245.789 ; gain = 0.0002default:defaulth px
g
UPhase 2.1.1 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 1af4e7170
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:00:24 ; elapsed = 00:00:25 . Memory (MB): peak = 1245.789 ; gain = 0.0002default:defaulth px
|

Phase %s%s
101*constraints2
2.1.2 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px
u

Phase %s%s
101*constraints2
2.1.2.1 2default:default2%
Place Init Design2default:defaultZ18-101h px
}

Phase %s%s
101*constraints2

2.1.2.1.1 2default:default2+
Init Lut Pin Assignment2default:defaultZ18-101h px
P
>Phase 2.1.2.1.1 Init Lut Pin Assignment | Checksum: 1fcb2465e
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 1257.594 ; gain = 11.8052default:defaulth px
H
6Phase 2.1.2.1 Place Init Design | Checksum: 1d0c6cc6a
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:00:55 ; elapsed = 00:00:46 . Memory (MB): peak = 1257.594 ; gain = 11.8052default:defaulth px
O
=Phase 2.1.2 Build Placer Netlist Model | Checksum: 1d0c6cc6a
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:00:55 ; elapsed = 00:00:46 . Memory (MB): peak = 1257.594 ; gain = 11.8052default:defaulth px
y

Phase %s%s
101*constraints2
2.1.3 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px
�

Phase %s%s
101*constraints2
2.1.3.1 2default:default24
 Constrain Global/Regional Clocks2default:defaultZ18-101h px
W
EPhase 2.1.3.1 Constrain Global/Regional Clocks | Checksum: 1d0c6cc6a
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:00:55 ; elapsed = 00:00:46 . Memory (MB): peak = 1257.594 ; gain = 11.8052default:defaulth px
L
:Phase 2.1.3 Constrain Clocks/Macros | Checksum: 1d0c6cc6a
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:00:56 ; elapsed = 00:00:46 . Memory (MB): peak = 1257.594 ; gain = 11.8052default:defaulth px
M
;Phase 2.1 Placer Initialization Core | Checksum: 1d0c6cc6a
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:00:56 ; elapsed = 00:00:47 . Memory (MB): peak = 1257.594 ; gain = 11.8052default:defaulth px
F
4Phase 2 Placer Initialization | Checksum: 1d0c6cc6a
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:00:56 ; elapsed = 00:00:47 . Memory (MB): peak = 1257.594 ; gain = 11.8052default:defaulth px
n

Phase %s%s
101*constraints2
3 2default:default2$
Global Placement2default:defaultZ18-101h px
A
/Phase 3 Global Placement | Checksum: 21a418b95
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:02:09 ; elapsed = 00:01:34 . Memory (MB): peak = 1262.148 ; gain = 16.3592default:defaulth px
n

Phase %s%s
101*constraints2
4 2default:default2$
Detail Placement2default:defaultZ18-101h px
z

Phase %s%s
101*constraints2
4.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px
M
;Phase 4.1 Commit Multi Column Macros | Checksum: 21a418b95
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:02:09 ; elapsed = 00:01:34 . Memory (MB): peak = 1262.148 ; gain = 16.3592default:defaulth px
|

Phase %s%s
101*constraints2
4.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px
O
=Phase 4.2 Commit Most Macros & LUTRAMs | Checksum: 29d269325
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:02:26 ; elapsed = 00:01:45 . Memory (MB): peak = 1262.148 ; gain = 16.3592default:defaulth px
v

Phase %s%s
101*constraints2
4.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px
I
7Phase 4.3 Area Swap Optimization | Checksum: 28965d9d4
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:02:27 ; elapsed = 00:01:46 . Memory (MB): peak = 1262.148 ; gain = 16.3592default:defaulth px
u

Phase %s%s
101*constraints2
4.4 2default:default2)
updateClock Trees: DP2default:defaultZ18-101h px
H
6Phase 4.4 updateClock Trees: DP | Checksum: 28965d9d4
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:02:27 ; elapsed = 00:01:46 . Memory (MB): peak = 1262.148 ; gain = 16.3592default:defaulth px
u

Phase %s%s
101*constraints2
4.5 2default:default2)
Timing Path Optimizer2default:defaultZ18-101h px
H
6Phase 4.5 Timing Path Optimizer | Checksum: 2901e86c3
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:02:33 ; elapsed = 00:01:49 . Memory (MB): peak = 1262.148 ; gain = 16.3592default:defaulth px
|

Phase %s%s
101*constraints2
4.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px
�

Phase %s%s
101*constraints2
4.6.1 2default:default24
 Commit Small Macros & Core Logic2default:defaultZ18-101h px
n

Phase %s%s
101*constraints2
4.6.1.1 2default:default2

setBudgets2default:defaultZ18-101h px
A
/Phase 4.6.1.1 setBudgets | Checksum: 1d6d6d796
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:02:34 ; elapsed = 00:01:50 . Memory (MB): peak = 1262.148 ; gain = 16.3592default:defaulth px
y

Phase %s%s
101*constraints2
4.6.1.2 2default:default2)
Commit Slice Clusters2default:defaultZ18-101h px
L
:Phase 4.6.1.2 Commit Slice Clusters | Checksum: 2e0516967
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:02:54 ; elapsed = 00:02:07 . Memory (MB): peak = 1312.395 ; gain = 66.6052default:defaulth px
U
CPhase 4.6.1 Commit Small Macros & Core Logic | Checksum: 2e0516967
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:02:54 ; elapsed = 00:02:07 . Memory (MB): peak = 1312.395 ; gain = 66.6052default:defaulth px
�

Phase %s%s
101*constraints2
4.6.2 2default:default2C
/Clock Restriction Legalization for Leaf Columns2default:defaultZ18-101h px
d
RPhase 4.6.2 Clock Restriction Legalization for Leaf Columns | Checksum: 2e0516967
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:02:55 ; elapsed = 00:02:08 . Memory (MB): peak = 1315.773 ; gain = 69.9842default:defaulth px
�

Phase %s%s
101*constraints2
4.6.3 2default:default2E
1Clock Restriction Legalization for Non-Clock Pins2default:defaultZ18-101h px
f
TPhase 4.6.3 Clock Restriction Legalization for Non-Clock Pins | Checksum: 2e0516967
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:02:55 ; elapsed = 00:02:08 . Memory (MB): peak = 1316.109 ; gain = 70.3202default:defaulth px
O
=Phase 4.6 Small Shape Detail Placement | Checksum: 2e0516967
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:02:56 ; elapsed = 00:02:08 . Memory (MB): peak = 1316.109 ; gain = 70.3202default:defaulth px
r

Phase %s%s
101*constraints2
4.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px
E
3Phase 4.7 Re-assign LUT pins | Checksum: 2e0516967
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:02:58 ; elapsed = 00:02:11 . Memory (MB): peak = 1316.109 ; gain = 70.3202default:defaulth px
A
/Phase 4 Detail Placement | Checksum: 2e0516967
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:02:58 ; elapsed = 00:02:11 . Memory (MB): peak = 1316.109 ; gain = 70.3202default:defaulth px
�

Phase %s%s
101*constraints2
5 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px
s

Phase %s%s
101*constraints2
5.1 2default:default2'
PCOPT Shape updates2default:defaultZ18-101h px
F
4Phase 5.1 PCOPT Shape updates | Checksum: 22ee3f019
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:02:59 ; elapsed = 00:02:11 . Memory (MB): peak = 1316.109 ; gain = 70.3202default:defaulth px
x

Phase %s%s
101*constraints2
5.2 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px
z

Phase %s%s
101*constraints2
5.2.1 2default:default2,
updateClock Trees: PCOPT2default:defaultZ18-101h px
M
;Phase 5.2.1 updateClock Trees: PCOPT | Checksum: 22ee3f019
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:02:59 ; elapsed = 00:02:12 . Memory (MB): peak = 1316.109 ; gain = 70.3202default:defaulth px
}

Phase %s%s
101*constraints2
5.2.2 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px
�

Phase %s%s
101*constraints2
5.2.2.1 2default:default26
"Post Placement Timing Optimization2default:defaultZ18-101h px
|

Phase %s%s
101*constraints2

5.2.2.1.1 2default:default2*
Restore Best Placement2default:defaultZ18-101h px
O
=Phase 5.2.2.1.1 Restore Best Placement | Checksum: 18b26a74a
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:04:00 ; elapsed = 00:03:07 . Memory (MB): peak = 1318.414 ; gain = 72.6252default:defaulth px
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-3.9432default:defaultZ30-746h px
Y
GPhase 5.2.2.1 Post Placement Timing Optimization | Checksum: 18b26a74a
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:04:01 ; elapsed = 00:03:07 . Memory (MB): peak = 1318.414 ; gain = 72.6252default:defaulth px
P
>Phase 5.2.2 Post Placement Optimization | Checksum: 18b26a74a
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:04:01 ; elapsed = 00:03:08 . Memory (MB): peak = 1318.414 ; gain = 72.6252default:defaulth px
K
9Phase 5.2 Post Commit Optimization | Checksum: 18b26a74a
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:04:01 ; elapsed = 00:03:08 . Memory (MB): peak = 1318.414 ; gain = 72.6252default:defaulth px
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-3.9432default:defaultZ30-746h px
�

Phase %s%s
101*constraints2
5.3 2default:default25
!Sweep Clock Roots: Post-Placement2default:defaultZ18-101h px
T
BPhase 5.3 Sweep Clock Roots: Post-Placement | Checksum: 1087e9728
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:04:50 ; elapsed = 00:03:51 . Memory (MB): peak = 1321.203 ; gain = 75.4142default:defaulth px
v

Phase %s%s
101*constraints2
5.4 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px
I
7Phase 5.4 Post Placement Cleanup | Checksum: 1087e9728
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:04:51 ; elapsed = 00:03:51 . Memory (MB): peak = 1321.203 ; gain = 75.4142default:defaulth px
p

Phase %s%s
101*constraints2
5.5 2default:default2$
Placer Reporting2default:defaultZ18-101h px
m

Phase %s%s
101*constraints2
5.5.1 2default:default2
Restore STA2default:defaultZ18-101h px
@
.Phase 5.5.1 Restore STA | Checksum: 1087e9728
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:04:51 ; elapsed = 00:03:52 . Memory (MB): peak = 1321.203 ; gain = 75.4142default:defaulth px
C
1Phase 5.5 Placer Reporting | Checksum: 1087e9728
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:04:51 ; elapsed = 00:03:52 . Memory (MB): peak = 1321.203 ; gain = 75.4142default:defaulth px
w

Phase %s%s
101*constraints2
5.6 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px
J
8Phase 5.6 Final Placement Cleanup | Checksum: 18d512ce2
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:04:51 ; elapsed = 00:03:52 . Memory (MB): peak = 1321.203 ; gain = 75.4142default:defaulth px
Y
GPhase 5 Post Placement Optimization and Clean-Up | Checksum: 18d512ce2
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:04:51 ; elapsed = 00:03:52 . Memory (MB): peak = 1321.203 ; gain = 75.4142default:defaulth px
;
)Ending Placer Task | Checksum: 13f0d8adf
*commonh px
�

%s
*constraints2p
\Time (s): cpu = 00:00:00 ; elapsed = 00:03:52 . Memory (MB): peak = 1321.203 ; gain = 75.4142default:defaulth px
W
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
282default:default2
162default:default2
02default:default2
02default:defaultZ4-41h px
[
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:05:002default:default2
00:04:012default:default2
1321.2032default:default2
130.6882default:defaultZ17-268h px
A
Writing placer database...
1603*designutilsZ20-1893h px
:
Writing XDEF routing.
211*designutilsZ20-211h px
G
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px
G
#Writing XDEF routing special nets.
210*designutilsZ20-210h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:112default:default2
00:00:072default:default2
1321.2032default:default2
0.0002default:defaultZ17-268h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:162default:default2
00:00:132default:default2
1321.2032default:default2
0.0002default:defaultZ17-268h px
}
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.193 . Memory (MB): peak = 1321.203 ; gain = 0.000
*commonh px
�
preport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:01 . Memory (MB): peak = 1321.203 ; gain = 0.000
*commonh px
�
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.131 . Memory (MB): peak = 1321.203 ; gain = 0.000
*commonh px


End Record