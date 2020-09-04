export HDL_NAME=${PWD##*/}
export USER=elc1054-costa2016520151
export PROJECT_DIR=/home/elc1054/${USER}/projetos/${HDL_NAME}
export TECH_DIR=/home/tools/design_kits/ibm180
export DESIGNS=$(echo ${PROJECT_DIR}/trunk/frontend/*.vhd)
export CLOCK_PERIOD=$1

module add cdn/rc/rc142
module add cdn/incisiv/incisive152

cd ${PROJECT_DIR}/trunk/backend/synthesis/work
rc -64 -gui -logfile rc.log -cmdfile rc.cmd -files ${PROJECT_DIR}/generic_logic_synthesis.tcl

