#!/bin/bash

# Set the DESIGNS environment variable to the 'designs' subdirectory of the current directory
export DESIGNS="$(pwd)/designs"
# export DRY_RUN=1

# The docker container launcher script from https://github.com/iic-jku/IIC-OSIC-TOOLS
./scripts/start_vnc.sh "$@"
