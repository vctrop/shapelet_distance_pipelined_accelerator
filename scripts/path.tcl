
#-----------------------------------------------------------------------------
# Common path variables (directory structure dependent)
#-----------------------------------------------------------------------------
set BACKEND_DIR ${PROJECT_DIR}/trunk/backend
set SYNT_DIR ${BACKEND_DIR}/synthesis
set SCRIPT_DIR ${SYNT_DIR}/scripts
set RPT_DIR ${SYNT_DIR}/reports_${CLOCK_PERIOD}
set DEV_DIR ${SYNT_DIR}/deliverables_${CLOCK_PERIOD}

set SCRIPT_DIR_L ${BACKEND_DIR}/layout/scripts

#-----------------------------------------------------------------------------
# Setting rtl search directories
#-----------------------------------------------------------------------------
set FRONTEND_DIR ${PROJECT_DIR}/trunk/frontend
set OTHERS ""
lappend FRONTEND_DIR $OTHERS

#-----------------------------------------------------------------------------
# Setting technology directories
#-----------------------------------------------------------------------------
set LIB_DIR ${TECH_DIR}/IBM_PDK/cmrf7sf/V2.0.0.2AM/ibm_cmos7rf_std_cell_20111130/std_cell/v.20111130/synopsys/wc
lappend LIB_DIR ${TECH_DIR}/IBM_PDK/cmrf7sf/V2.0.0.2AM/ibm_cmos7rf_std_cell_20111130/std_cell/v.20111130/synopsys/bc
lappend LIB_DIR ${TECH_DIR}/IBM_PDK/cmrf7sf/V2.0.0.2AM/ibm_cmos7rf_wb_io_base_20110710/wb_io/base/v.20110710/synopsys/wc

set LEF_DIR ${TECH_DIR}/IBM_PDK/cmrf7sf/V2.0.0.2AM/ibm_cmos7rf_std_cell_20111130/std_cell/v.20111130/lef
lappend LEF_DIR ${TECH_DIR}/IBM_PDK/cmrf7sf/V2.0.0.2AM/ibm_cmos7rf_wb_io_base_20110710/wb_io/base/v.20110710/lef



