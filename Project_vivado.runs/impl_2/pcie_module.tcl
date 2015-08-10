proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param gui.test TreeTableDev
  debug::add_scope template.lib 1
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir D:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.cache/wt [current_project]
  set_property parent.project_path D:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.xpr [current_project]
  set_property ip_repo_paths d:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.cache/ip [current_project]
  set_property ip_output_repo d:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.cache/ip [current_project]
  add_files -quiet D:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.runs/synth_2/pcie_module.dcp
  read_edif D:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.srcs/sources_1/imports/hdl/artix7/ip_cores/bpm-gw/hdl/ip_cores/pcie/7a200ffg1156/sfifo_15x128.ngc
  read_edif D:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.srcs/sources_1/imports/hdl/artix7/ip_cores/bpm-gw/hdl/ip_cores/pcie/7a200ffg1156/prime_FIFO_plain.ngc
  read_edif D:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.srcs/sources_1/imports/hdl/artix7/ip_cores/bpm-gw/hdl/ip_cores/pcie/7a200ffg1156/bram_x64.ngc
  add_files -quiet D:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.runs/clock_unit_synth_1/clock_unit.dcp
  set_property netlist_only true [get_files D:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.runs/clock_unit_synth_1/clock_unit.dcp]
  read_xdc D:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.srcs/constrs_1/pcie_core.xdc
  set_property processing_order EARLY [get_files D:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.srcs/constrs_1/pcie_core.xdc]
  read_xdc -mode out_of_context -ref clock_unit -cells U0 d:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.srcs/sources_1/ip/clock_unit/clock_unit_ooc.xdc
  set_property processing_order EARLY [get_files d:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.srcs/sources_1/ip/clock_unit/clock_unit_ooc.xdc]
  read_xdc -prop_thru_buffers -ref clock_unit -cells U0 d:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.srcs/sources_1/ip/clock_unit/clock_unit_board.xdc
  set_property processing_order EARLY [get_files d:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.srcs/sources_1/ip/clock_unit/clock_unit_board.xdc]
  read_xdc -ref clock_unit -cells U0 d:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.srcs/sources_1/ip/clock_unit/clock_unit.xdc
  set_property processing_order EARLY [get_files d:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.srcs/sources_1/ip/clock_unit/clock_unit.xdc]
  read_xdc D:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.srcs/constrs_1/pcie_core_1.xdc
  read_xdc D:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.srcs/sources_1/ip/ddr_core/ddr_core/user_design/constraints/ddr_core.xdc
  link_design -top pcie_module -part xc7a200tffg1156-2
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force pcie_module_opt.dcp
  catch {report_drc -file pcie_module_drc_opted.rpt}
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  place_design 
  write_checkpoint -force pcie_module_placed.dcp
  catch { report_io -file pcie_module_io_placed.rpt }
  catch { report_clock_utilization -file pcie_module_clock_utilization_placed.rpt }
  catch { report_utilization -file pcie_module_utilization_placed.rpt -pb pcie_module_utilization_placed.pb }
  catch { report_control_sets -verbose -file pcie_module_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force pcie_module_routed.dcp
  catch { report_drc -file pcie_module_drc_routed.rpt -pb pcie_module_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file pcie_module_timing_summary_routed.rpt -rpx pcie_module_timing_summary_routed.rpx }
  catch { report_power -file pcie_module_power_routed.rpt -pb pcie_module_power_summary_routed.pb }
  catch { report_route_status -file pcie_module_route_status.rpt -pb pcie_module_route_status.pb }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  write_bitstream -force pcie_module.bit 
  if { [file exists D:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.runs/synth_2/pcie_module.hwdef] } {
    catch { write_sysdef -hwdef D:/Devel/projekty/TMS/project_vivado_20150716.tar/Project_vivado.runs/synth_2/pcie_module.hwdef -bitfile pcie_module.bit -meminfo pcie_module.mmi -file pcie_module.sysdef }
  }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

