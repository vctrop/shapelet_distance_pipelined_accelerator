
# Last update: 2016/07/05

#-----------------------------------------------------------------------------
# General Comments
#-----------------------------------------------------------------------------
puts "  "
puts "  "
puts "  "
puts "  "

#-----------------------------------------------------------------------------
# Main Custom Variables Design Dependent (set local)
#-----------------------------------------------------------------------------
set PROJECT_DIR $env(PROJECT_DIR)
set TECH_DIR $env(TECH_DIR)
set DESIGNS $env(DESIGNS)
set HDL_NAME $env(HDL_NAME)
set INTERCONNECT_MODE ple


#-----------------------------------------------------------------------------
# MAIN Custom Variables to be used in SDC (constraints file)
#-----------------------------------------------------------------------------
set MAIN_CLOCK_NAME clk
set MAIN_RST_NAME rst_n
set OPERATING_CONDITIONS PwcV162T125_STD_CELL_7RF
set period_clk $env(CLOCK_PERIOD)  ;#clk = 10.00MHz = 100ns (period)
set clk_uncertainty 0.25 ;# ns (“a guess”)
set clk_latency 0.35 ;# ns (“a guess”)
set in_delay 1 ;# ns
set out_delay 2.958 ;#ns BC1820PU_PM_A (1.518 + 0.032xCL) = (1.518 + 0.032x45 fF)
set out_load 0.045 ;#pF (15 fF + 30 fF) = pin A of IO Cell BC1820PU_PM_A (15 fF) + “a guess”
set slew "146 164 264 252" ;#minimum rise, minimum fall, maximum rise and maximum fall - pin Z of IO Cell BC1820PU_PM_A
set slew_min_rise 0.146 ;# ns
set slew_min_fall 0.164 ;# ns
set slew_max_rise 0.264 ;# ns
set slew_max_fall 0.252 ;# ns


set WORST_LIST {PwcV162T125_STD_CELL_7RF.lib} 
set LEF_LIST {cmos7rf_6ML_tech.lef ibm_cmos7rf_sc_12Track.lef}

#-----------------------------------------------------------------------------
# Load Path File
#-----------------------------------------------------------------------------
source ${PROJECT_DIR}/trunk/backend/synthesis/scripts/common/path.tcl

#-----------------------------------------------------------------------------
# Load Tech File
#-----------------------------------------------------------------------------
source ${SCRIPT_DIR}/common/tech.tcl

#-----------------------------------------------------------------------------
# Analyze RTL source (manually set; file_list.tcl is not covered in ELC1054)
#-----------------------------------------------------------------------------
set_attribute hdl_search_path "${DEV_DIR} ${FRONTEND_DIR}"
read_hdl -vhdl ${DESIGNS}

#-----------------------------------------------------------------------------
# Pre "Elaborate" Attributes (manually set at file attributes.tcl)
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Elaborate Design
#-----------------------------------------------------------------------------
elaborate ${HDL_NAME}
check_design -unresolved ${HDL_NAME}
filter latch true [find / -instance *]

#-----------------------------------------------------------------------------
# Pos "Elaborate" Attributes (manually set)
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Generic optimization (technology independent)
#-----------------------------------------------------------------------------
synthesize -to_gen ${HDL_NAME} -effort high ;# timing driven CSA optimization

#-----------------------------------------------------------------------------
# Constraints (multi-mode is not covered in ELC1054)
#-----------------------------------------------------------------------------
read_sdc ${BACKEND_DIR}/synthesis/constraints/${HDL_NAME}.sdc
set_attribute fixed_slew ${slew} /designs/${HDL_NAME}/ports_in/*
report timing -lint

#-----------------------------------------------------------------------------
# Agressively optimization (area, timing, power) and mapping
#-----------------------------------------------------------------------------
synthesize -to_map ${HDL_NAME} -effort high ;# timing driven CSA optimization

#-----------------------------------------------------------------------------
# Preparing and generating output data (reports, verilog netlist)
#-----------------------------------------------------------------------------
report design_rules ;# > ${DEV_DIR}/${HDL_NAME}_drc.rpt
report area ;# > ${DEV_DIR}/${HDL_NAME}_area.rpt
report timing ;# > ${DEV_DIR}/${HDL_NAME}_timing.rpt
report gates ;# > ${DEV_DIR}/${HDL_NAME}_gates.rpt
write_sdf -edge check_edge -nonegchecks -setuphold split -version 2.1 -design ${HDL_NAME} > ${DEV_DIR}/${HDL_NAME}_normal_worst.sdf
write_hdl ${HDL_NAME} > ${DEV_DIR}/${HDL_NAME}.v



