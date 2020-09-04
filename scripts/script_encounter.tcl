
#-----------------------------------------------------------------------------
# Initial configurations
#-----------------------------------------------------------------------------

set USER "vicenzi201620381" ;# put here user name at this machine
set DESIGNS "somador"
set PROJECT_DIR /home/${USER}/projetos/${DESIGNS}

set VENDOR ibm180
set TECH_DIR /home/tools/design_kits/${VENDOR} ;# technology depedent
set HDL_NAME $DESIGNS

set MAIN_CLOCK_NAME clk
set MAIN_RST_NAME rst_n
set OPERATING_CONDITIONS PwcV162T125_STD_CELL_7RF
set period_clk 3.0  ;# 100ns=10MHz; 10ns=100MHz; 2.5ns=400MHz; 3ns=333.33MHz
set clk_uncertainty 0.25 ;# ns
set clk_latency 0.35 ;# ns
set in_delay 1.0 ;# ns
set out_delay 2.958 ;#ns BC1820PU_PM_A (1.518 + 0.032xCL) = (1.518 + 0.032x45 fF)
set out_load 0.045 ;#pF (15 fF + 30 fF) = pin A of IO Cell BC1820PU_PM_A (15 fF) + “a guess”
set slew "146 164 264 252" ;# minimum rise, minimum fall, maximum rise and - pin Z of IO Cell BC1820_PM_A
set slew_min_rise 0.146 ;# ns
set slew_min_fall 0.164 ;# ns
set slew_max_rise 0.264 ;# ns
set slew_max_fall 0.252 ;# ns



set WORST_LIST ${TECH_DIR}/IBM_PDK/cmrf7sf/V2.0.0.2AM/ibm_cmos7rf_std_cell_20111130/std_cell/v.20111130/synopsys/wc/PwcV162T125_STD_CELL_7RF.lib
set BEST_LIST ${TECH_DIR}/IBM_PDK/cmrf7sf/V2.0.0.2AM/ibm_cmos7rf_std_cell_20111130/std_cell/v.20111130/synopsys/bc/PbcV198Tm40_STD_CELL_7RF.lib 


set CAP_MAX ${TECH_DIR}/IBM_PDK/cmrf7sf/V2.0.0.2AM/cmos7rf_cadence_20121116/cadence/v.20121116/captable/cmos7rf_6ML_FuncCmax.CapTbl
set CAP_MIN ${TECH_DIR}/IBM_PDK/cmrf7sf/V2.0.0.2AM/cmos7rf_cadence_20121116/cadence/v.20121116/captable/cmos7rf_6ML_FuncCmin.CapTbl


#-----------------------------------------------------------------------------
# Load Path File
#-----------------------------------------------------------------------------
source ${PROJECT_DIR}/trunk/backend/synthesis/scripts/common/path.tcl

#-----------------------------------------------------------------------------
# Loads the design main files (netlist, LEFs, timing libraries)
#-----------------------------------------------------------------------------
source ${SCRIPT_DIR_L}/${DESIGNS}_${VENDOR}.globals

#-----------------------------------------------------------------------------
# Initiates the design files loaded above
#-----------------------------------------------------------------------------
init_design

#-----------------------------------------------------------------------------
# Tells EDI the technology being used
#-----------------------------------------------------------------------------
setDesignMode -process 180

#-----------------------------------------------------------------------------
# Specify floorplan
#-----------------------------------------------------------------------------
# graphical

# floorplan: aims aspect ratio = 1 and moves IO pads 8.0 microns from the outside edge of the core core box. core utilization = 0.85

#-----------------------------------------------------------------------------
# Power nets (Power planning)
#-----------------------------------------------------------------------------
# graphical

# creating power and grounds rings and stripes


#-----------------------------------------------------------------------------
# Add Ring (Power planning)
#-----------------------------------------------------------------------------
# graphical

#-----------------------------------------------------------------------------
# Sroute
#-----------------------------------------------------------------------------
# graphical

#-----------------------------------------------------------------------------
# Save Design: 01_power.enc
#-----------------------------------------------------------------------------
# graphical


#-----------------------------------------------------------------------------
# Verify connectivity and geometry
#-----------------------------------------------------------------------------
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
clearDrc
checkDesign -floorplan -powerGround


#-----------------------------------------------------------------------------
# Placement
#-----------------------------------------------------------------------------
# graphical


#-----------------------------------------------------------------------------
# Specify RC extraction mode
#-----------------------------------------------------------------------------
# graphical
setExtractRCMode -engine preRoute

#-----------------------------------------------------------------------------
# Extract RC (rc_worst)
#-----------------------------------------------------------------------------
# graphical

#-----------------------------------------------------------------------------
# Write SDF (ideal clock network)
#-----------------------------------------------------------------------------
# graphical

#-----------------------------------------------------------------------------
# Timing Analysis Pre-CTS
#-----------------------------------------------------------------------------
# graphical

#-----------------------------------------------------------------------------
# preCTS optimization
#-----------------------------------------------------------------------------
# graphical

setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -preCTS

#-----------------------------------------------------------------------------
# CTS Specification file 
#-----------------------------------------------------------------------------
# graphical
cleanupSpecifyClockTree

#-----------------------------------------------------------------------------
# CTS
#-----------------------------------------------------------------------------
# graphical

#-----------------------------------------------------------------------------
# CTS - convert clock object from ideal to propagated mode
#-----------------------------------------------------------------------------
set_clock_propagation propagated


#-----------------------------------------------------------------------------
# CTS - usefull clock reports
#-----------------------------------------------------------------------------
# graphical

#-----------------------------------------------------------------------------
# posCTS timing analysis
#-----------------------------------------------------------------------------
setAnalysisMode -analysisType onChipVariation
setAnalysisMode -cppr both  ;#(cppr: clock path pessimism removal)
timeDesign -postCTS
update_io_latency 
timeDesign -postCTS


#-----------------------------------------------------------------------------
# Save Design: CTS 03_cts_preOptimization.enc
#-----------------------------------------------------------------------------
# graphical


#-----------------------------------------------------------------------------
# postCTS optimization
#-----------------------------------------------------------------------------
optDesign -postCTS
optDesign -postCTS -drv


#-----------------------------------------------------------------------------
# postCTS hold analysis
#-----------------------------------------------------------------------------
setAnalysisMode -clockPropagation sdcControl
# graphical

#-----------------------------------------------------------------------------
# postCTS hold optimization
#-----------------------------------------------------------------------------
optDesign -postCTS -hold # and graphical


#-----------------------------------------------------------------------------
# Save Design: CTS optimization 04_cts_posOptimization.enc
#-----------------------------------------------------------------------------
# graphical

#-----------------------------------------------------------------------------
# NanoRoute
#-----------------------------------------------------------------------------
# graphical

#-----------------------------------------------------------------------------
# Post-Route Timing and SI Optimization
#-----------------------------------------------------------------------------
setExtractRCMode -engine postRoute
setExtractRCMode -effortLevel low ;# medium -> demands QRC file
timeDesign -postRoute 
timeDesign -postRoute -hold

setDelayCalMode -engine default -SIAware true 
optDesign -postRoute
optDesign -postRoute -hold



#-----------------------------------------------------------------------------
# Filler Cells Insertion
#-----------------------------------------------------------------------------
# graphical


#-----------------------------------------------------------------------------
# Save Design: Filler 05_filler.enc
#-----------------------------------------------------------------------------
# graphical




