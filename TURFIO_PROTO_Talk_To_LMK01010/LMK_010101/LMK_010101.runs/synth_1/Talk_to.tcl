# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "M:/LMK_010101/LMK_010101.runs/synth_1/Talk_to.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
OPTRACE "synth_1" START { ROLLUP_AUTO }
set_param tcl.collectionResultDisplayLimit 0
set_param chipscope.maxJobs 2
set_param xicom.use_bs_reader 1
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7a35tftg256-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir M:/LMK_010101/LMK_010101.cache/wt [current_project]
set_property parent.project_path M:/LMK_010101/LMK_010101.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part numato.com:mimas_a7_mini:part0:1.0 [current_project]
set_property ip_output_repo m:/LMK_010101/LMK_010101.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_verilog M:/LMK_010101/LMK_010101.srcs/sources_1/imports/Artix_7_MiMas_A7/counter/counter.srcs/sources_1/new/clogb2.vh
read_verilog -library xil_defaultlib {
  M:/LMK_010101/LMK_010101.srcs/sources_1/imports/Artix_7_MiMas_A7/Clock_Divider_20MHz/Clock_Divider_20MHz.srcs/sources_1/new/CLK_DIV_20MHz.v
  M:/LMK_010101/LMK_010101.srcs/sources_1/imports/Artix_7_MiMas_A7/Clock_Div/Clock_Div.srcs/sources_1/imports/hdl/clk_div_ce.v
  M:/LMK_010101/LMK_010101.srcs/sources_1/imports/Artix_7_MiMas_A7/counter/counter.srcs/sources_1/new/counter.v
  M:/LMK_010101/LMK_010101.srcs/sources_1/new/Talk_to.v
}
read_ip -quiet M:/LMK_010101/LMK_010101.srcs/sources_1/ip/ila_0/ila_0.xci
set_property used_in_synthesis false [get_files -all m:/LMK_010101/LMK_010101.gen/sources_1/ip/ila_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all m:/LMK_010101/LMK_010101.gen/sources_1/ip/ila_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all m:/LMK_010101/LMK_010101.gen/sources_1/ip/ila_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all m:/LMK_010101/LMK_010101.gen/sources_1/ip/ila_0/ila_0_ooc.xdc]

read_ip -quiet M:/LMK_010101/LMK_010101.srcs/sources_1/ip/vio_0/vio_0.xci
set_property used_in_implementation false [get_files -all m:/LMK_010101/LMK_010101.gen/sources_1/ip/vio_0/vio_0.xdc]
set_property used_in_implementation false [get_files -all m:/LMK_010101/LMK_010101.gen/sources_1/ip/vio_0/vio_0_ooc.xdc]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc M:/LMK_010101/LMK_010101.srcs/constrs_1/imports/MiMas/Mimasa7Mini.xdc
set_property used_in_implementation false [get_files M:/LMK_010101/LMK_010101.srcs/constrs_1/imports/MiMas/Mimasa7Mini.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top Talk_to -part xc7a35tftg256-1
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Talk_to.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Talk_to_utilization_synth.rpt -pb Talk_to_utilization_synth.pb"
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
