#-----------------------------------------------------------------------------
# file: somador.sdc
#-----------------------------------------------------------------------------
# Revisions:
# Date       | Author     | Description
#-----------------------------------------------------------------------------
# 2016/07/05 | Leonardo	  | Created
#-----------------------------------------------------------------------------
# README
# - This file contains commands which can be shared among all design steps and tools.
# - ...
#-----------------------------------------------------------------------------


#################################################################################
## DEFINE VARS
#################################################################################
set sdc_version 1.5
current_design ${HDL_NAME}

#################################################################################
## IDEAL NETS
#################################################################################
set_ideal_net [get_nets ${MAIN_CLOCK_NAME}]
set_ideal_net [get_nets ${MAIN_RST_NAME}]

#################################################################################
## CLOCK
#################################################################################
create_clock -name ${MAIN_CLOCK_NAME} -period $period_clk [get_ports ${MAIN_CLOCK_NAME}]
set_clock_uncertainty ${clk_uncertainty} [get_clocks ${MAIN_CLOCK_NAME}]
set_clock_latency ${clk_latency} [get_clocks ${MAIN_CLOCK_NAME}]

#################################################################################
## INPUT PINS SECTION
#################################################################################
set_input_delay -clock [get_clocks ${MAIN_CLOCK_NAME}] ${in_delay} [remove_from_collection [all_inputs] "[get_ports ${MAIN_CLOCK_NAME}]"]

#################################################################################
## OUTPUT PINS SECTION
#################################################################################
set_output_delay -clock [get_clocks ${MAIN_CLOCK_NAME}] ${out_delay} [all_outputs]

#################################################################################
# DEFAULT OUTPUT PIN LOAD
#################################################################################
set_load -pin_load ${out_load} [get_ports [all_outputs]]

#################################################################################
## DEFAULT DRIVER 
##################################################################################

set_input_transition -rise -min $slew_min_rise [remove_from_collection [all_inputs] "[get_ports ${MAIN_CLOCK_NAME}]"]
set_input_transition -fall -min $slew_min_fall [remove_from_collection [all_inputs] "[get_ports ${MAIN_CLOCK_NAME}]"]

set_input_transition -rise -max $slew_max_rise [remove_from_collection [all_inputs] "[get_ports ${MAIN_CLOCK_NAME}]"]
set_input_transition -fall -max $slew_max_fall [remove_from_collection [all_inputs] "[get_ports ${MAIN_CLOCK_NAME}]"]






