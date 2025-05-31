#!/bin/bash

# Set the PDK related environment variables
export PDK_ROOT=/foss/pdks
export PDK=gf180mcuD
export PDKPATH=/foss/pdks/gf180mcuD

# Overwrite the xschemrc file to fix the 180MCU_MODELS path TCL variable
cp -f ./.config/xschemrc ~/.xschem/xschemrc