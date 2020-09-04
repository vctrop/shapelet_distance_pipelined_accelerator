#!/bin/bash

# Defines flopoco alias
alias flopoco="docker run --rm=true -v $PWD:/flopoco_workspace flopoco"

#--- check for user input frequency
if [ ! $# -eq "1" ];
then 
	echo "Generating FLOPOCO operators using no frequency option"
    FREQ=""
else
    FREQ="frequency=$1"
    echo "Generating FLOPOCO operators for frequency: $1"
fi

#defines location of generated .vhd
FOLDER=flopocoCores/$1

mkdir -p ${FOLDER}
echo "VHDL files will be stored at $FOLDER"

# --- Generates Operators ---
# ---------- Single-Path FP Adder ----------
flopoco FPAdd               n=20 wE=8 wF=23     file=false useHardMult=no  dualPath=false name=fp_adder_single $FREQ
mv flopoco.vhdl ${FOLDER}/fp_adder_single_$1.vhd        # Single-Path FP Adder

# ---------- Other Single-Path FP Adder ----------  
flopoco FPAddSinglePath     n=20 wE=8 wF=23     file=false useHardMult=no  name=fp_adder_single2 $FREQ
mv flopoco.vhdl ${FOLDER}/fp_adder_single2_$1.vhd       # Other Single-Path FP Adder

# ---------- Dual-Path FP Adder ----------           
flopoco FPAdd               n=20 wE=8 wF=23     file=false useHardMult=no  dualPath=true  name=fp_adder_dual $FREQ
mv flopoco.vhdl ${FOLDER}/fp_adder_dual_$1.vhd          # Dual-Path FP Adder

# ---------- FP Multiplier ----------                 
flopoco FPMult              n=20 wE=8 wF=23     file=false useHardMult=no  name=fp_mult $FREQ
mv flopoco.vhdl ${FOLDER}/fp_mult_$1.vhd                # FP Multiplier   

# ---------- FP Squarer ----------
flopoco FPSquare            n=20 wE=8 wF_in=23  file=false useHardMult=no  wF_out=23 name=fp_power $FREQ
mv flopoco.vhdl ${FOLDER}/fp_power_$1.vhd               # FP Squarer

# ------------- FP Divider ----------               
flopoco FPDiv               n=20 wE=8 wF=23     file=false useHardMult=no  file=false name=fp_div $FREQ
mv flopoco.vhdl ${FOLDER}/fp_div_$1.vhd                 # FP Divider

#  ---------- FP Square Root ----------              
flopoco FPSqrt              n=20 wE=8 wF=23     file=false useHardMult=no  name=fp_sqrt $FREQ
mv flopoco.vhdl ${FOLDER}/fp_sqrt_$1.vhd                # FP Square Root

# --- Generates Converters ----------

# Flopoco format to IEEE 754 format
flopoco OutputIEEE wEIn=8 wFIn=23 wEOut=8 wFOut=23 name=flopoco_to_IEEE $FREQ
mv flopoco.vhdl ${FOLDER}/flopoco_to_IEEE_$1.vhd
 
# IEEE 754 format to flopoco format
flopoco InputIEEE wEIn=8 wFIn=23 wEOut=8 wFOut=23 name=IEEE_to_flopoco $FREQ
mv flopoco.vhdl ${FOLDER}/IEEE_to_flopoco_$1.vhd

sudo chown -R $USER ${FOLDER}/

echo "Finished!"
