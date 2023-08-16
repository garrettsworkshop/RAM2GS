#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file

#device options
set_option -technology MACHXO
set_option -part LCMXO640C
set_option -package T100C
set_option -speed_grade -3

#compilation/mapping options
set_option -symbolic_fsm_compiler true
set_option -resource_sharing true

#use verilog 2001 standard option
set_option -vlog_std v2001

#map options
set_option -frequency 70
set_option -maxfan 1000
set_option -auto_constrain_io 0
set_option -disable_io_insertion false
set_option -retiming false; set_option -pipe false
set_option -force_gsr auto
set_option -compiler_compatible 0
set_option -dup false

add_file -constraint {D:/OneDrive/Documents/GitHub/RAM2GS/CPLD/RAM2GS.sdc}
set_option -default_enum_encoding default

#simulation options


#timing analysis options
set_option -num_critical_paths 3


#automatic place and route (vendor) options
set_option -write_apr_constraint 1

#synplifyPro options
set_option -fix_gated_and_generated_clocks 1
set_option -update_models_cp 0
set_option -resolve_multiple_driver 0


set_option -seqshift_no_replicate 0

#-- add_file options
set_option -include_path {D:/OneDrive/Documents/GitHub/RAM2GS/CPLD/LCMXO640C}
add_file -verilog -vlog_std v2001 {D:/OneDrive/Documents/GitHub/RAM2GS/CPLD/RAM2GS-SPI.v}

#-- top module name
set_option -top_module RAM2GS

#-- set result format/file last
project -result_file {D:/OneDrive/Documents/GitHub/RAM2GS/CPLD/LCMXO640C/impl1/RAM2GS_LCMXO640C_impl1.edi}

#-- error message log file
project -log_file {RAM2GS_LCMXO640C_impl1.srf}

#-- set any command lines input by customer


#-- run Synplify with 'arrange HDL file'
project -run -clean
