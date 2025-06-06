#!/bin/bash

# Navigate to the script's directory to ensure correct relative paths
cd "$(dirname "$0")"

# Change to the libs directory relative to the script
cd "../libs"

# Find all .sch files in the current directory and subdirectories
find . -name "*.sch" -type f | while read -r sch_file; do
  # Extract the directory path and base name of the schematic file
  dir_path=$(dirname "$sch_file")
  base_name=$(basename "$sch_file" .sch)
  
  echo "Netlisting $sch_file..."
  # Run the xschem command with xvfb-run to prevent GUI from showing
  # Use auto-servernum to avoid conflicts and set screen resolution
  xvfb-run --auto-servernum --server-args="-screen 0 1024x768x24" xschem -b -s -n -q --netlist_path "$dir_path" --netlist_filename "$base_name.spice" "$sch_file"
done

echo "All schematics netlisted." 