#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file

#device options
set_option -technology MACHXO2
set_option -part LCMXO2_640HC
set_option -package TG100C
set_option -speed_grade -4

#compilation/mapping options
set_option -symbolic_fsm_compiler true
set_option -resource_sharing true

#use verilog 2001 standard option
set_option -vlog_std v2001

#map options
set_option -frequency 100
set_option -maxfan 1000
set_option -auto_constrain_io 0
set_option -disable_io_insertion false
set_option -retiming false; set_option -pipe true
set_option -force_gsr false
set_option -compiler_compatible 0
set_option -dup false

add_file -constraint {Y:/Repos/RAM2GS/CPLD/RAM2GS.sdc}
set_option -default_enum_encoding default

#simulation options


#timing analysis options



#automatic place and route (vendor) options
set_option -write_apr_constraint 1

#synplifyPro options
set_option -fix_gated_and_generated_clocks 1
set_option -update_models_cp 0
set_option -resolve_multiple_driver 0


set_option -seqshift_no_replicate 0

#-- add_file options
set_option -include_path {Y:/Repos/RAM2GS/CPLD/LCMXO2-640HC}
add_file -verilog -vlog_std v2001 {Y:/Repos/RAM2GS/CPLD/RAM2GS-LCMXO2.v}
add_file -verilog -vlog_std v2001 {Y:/Repos/RAM2GS/CPLD/LCMXO2-640HC/REFB.v}

#-- top module name
set_option -top_module RAM2GS

#-- set result format/file last
project -result_file {Y:/Repos/RAM2GS/CPLD/LCMXO2-640HC/impl1/LCMXO2_640HC_impl1.edi}

#-- error message log file
project -log_file {LCMXO2_640HC_impl1.srf}

#-- set any command lines input by customer


#-- run Synplify with 'arrange HDL file'
project -run -clean
