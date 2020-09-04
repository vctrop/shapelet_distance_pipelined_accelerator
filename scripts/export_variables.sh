#!/bin/bash

if [ ! $# -eq "2" ]; #we must pass both HDL_NAME and CLOCK_PERIOD as arguments
then 
	echo "Usage: sh ~/scripts/export_variables.sh [HDL_TOP_NAME] <CLOCK_PERIOD>"
	exit 1
fi
echo "EXPORTING VARIABLES FOR ${1} WITH CLOCK PERIOD OF: ${2} ns"
export HDL_NAME=$1
export USER=elc1054-costa2016520151 ;#change this to your username
export PROJECT_DIR=/home/elc1054/${USER}/projetos/${HDL_NAME}
export TECH_DIR=/home/tools/design_kits/ibm180
export DESIGNS="fpu_pkg.vhd pre_norm_addsub.vhd addsub_28.vhd post_norm_addsub.vhd pre_norm_mul.vhd mul_24.vhd post_norm_mul.vhd pre_norm_div.vhd serial_div.vhd post_norm_div.vhd pre_norm_sqrt.vhd sqrt.vhd post_norm_sqrt.vhd component_pkg.vhd
fp_addsub.vhd fp_div.vhd fp_mul.vhd fp_sqrt.vhd cycle_counter.vhd array_pkg.vhd adder_tree.vhd shapelet_distance.vhd"

export CLOCK_PERIOD=$2
mkdir ${PROJECT_DIR}/trunk/backend/synthesis/deliverables_${CLOCK_PERIOD}

echo ${HDL_NAME}
echo ${PROJECT_DIR}

module add cdn/rc/rc142
module add cdn/incisiv/incisive152

cd ${PROJECT_DIR}/trunk/backend/synthesis/work
rc -64 -logfile rc.log -cmdfile rc.cmd -files ~/scripts/generic_logic_synthesis.tcl

