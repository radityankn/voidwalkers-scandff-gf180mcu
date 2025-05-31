#!/bin/bash

# Setup PDK related environment variables
source ./.config/bashrc

# Overwrite the xschemrc file to fix the 180MCU_MODELS path TCL variable
cp -f ./.config/xschemrc ~/.xschem/xschemrc
