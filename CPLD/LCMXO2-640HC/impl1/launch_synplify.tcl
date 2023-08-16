#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file D:/OneDrive/Documents/GitHub/RAM2GS/CPLD/LCMXO2-640HC/impl1/launch_synplify.tcl
#-- Written on Tue Aug 15 22:33:53 2023

project -close
set filename "D:/OneDrive/Documents/GitHub/RAM2GS/CPLD/LCMXO2-640HC/impl1/impl1_syn.prj"
if ([file exists "$filename"]) {
	project -load "$filename"
	project_file -remove *
} else {
	project -new "$filename"
}
set create_new 0

#device options
set_option -technology MACHXO2
set_option -part LCMXO2_640HC
set_option -package TG100C
set_option -speed_grade -4

if {$create_new == 1} {
#-- add synthesis options
	set_option -symbolic_fsm_compiler true
	set_option -resource_sharing true
	set_option -vlog_std v2001
	set_option -frequency 200
	set_option -maxfan 1000
	set_option -auto_constrain_io 0
	set_option -disable_io_insertion false
	set_option -retiming false; set_option -pipe true
	set_option -force_gsr auto
	set_option -compiler_compatible 0
	set_option -dup false
	
	set_option -default_enum_encoding default
	
	set_option -num_critical_paths 3
	
	set_option -write_apr_constraint 1
	set_option -fix_gated_and_generated_clocks 1
	set_option -update_models_cp 0
	set_option -resolve_multiple_driver 0
	
	
	set_option -seqshift_no_replicate 0
	
}
#-- add_file options
add_file -constraint {D:/OneDrive/Documents/GitHub/RAM2GS/CPLD/RAM2GS.sdc}
set_option -include_path "D:/OneDrive/Documents/GitHub/RAM2GS/CPLD/LCMXO2-640HC"
add_file -verilog -vlog_std v2001 "D:/OneDrive/Documents/GitHub/RAM2GS/CPLD/RAM2GS-SPI.v"
#-- top module name
set_option -top_module {}
project -result_file {D:/OneDrive/Documents/GitHub/RAM2GS/CPLD/LCMXO2-640HC/impl1/impl1.edi}
project -save "$filename"
