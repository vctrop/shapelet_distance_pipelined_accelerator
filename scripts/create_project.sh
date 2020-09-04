#!/bin/bash
if [ -z $1 ]
then
	echo "usage: sh new_project.sh [main dir]"
	exit 1
fi
mkdir -p ~/projetos/$1/trunk/backend/synthesis/work
mkdir -p ~/projetos/$1/trunk/backend/synthesis/constraints
cp ~/scripts/default.sdc ~/projetos/$1/trunk/backend/synthesis/constraints
mkdir  -p ~/projetos/$1/trunk/frontend/tests
mkdir -p ~/projetos/$1/trunk/backend/synthesis/scripts/common
cp ~/scripts/path.tcl ~/scripts/tech.tcl ~/projetos/$1/trunk/backend/synthesis/scripts/common
cp ~/scripts/generic_logic_synthesis.tcl ~/projetos/$1/trunk/backend/synthesis/scripts/
echo "Project Created!"
