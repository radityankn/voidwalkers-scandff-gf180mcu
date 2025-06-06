import re
import csv
import sys
import json

def parse_op_file(input_filepath, output_csv_filepath, selected_params_filepath):
    all_devices_data = []
    current_block_device_names = []
    current_block_data_dicts = []

    try:
        with open(input_filepath, 'r') as f:
            lines = f.readlines()
    except FileNotFoundError:
        print(f"Error: Input file {input_filepath} not found.")
        return
    except Exception as e:
        print(f"Error reading input file {input_filepath}: {e}")
        return

    i = 0
    while i < len(lines):
        line_stripped = lines[i].strip()

        if line_stripped.startswith("PSPNQS103VA:"):
            if current_block_device_names and current_block_data_dicts:
                all_devices_data.extend(current_block_data_dicts)
            
            current_block_device_names = []
            current_block_data_dicts = []
            i += 1 

            if i < len(lines) and lines[i].strip().startswith("device n.xota"):
                i += 1 
            
            found_model_successfully = False
            if i < len(lines):
                model_line_stripped = lines[i].strip()
                if model_line_stripped.startswith("model"):
                    parts = re.split(r'\s+', model_line_stripped)
                    if len(parts) > 1:
                        raw_device_ids = parts[1:]
                        current_block_device_names = [name.split(':')[0] for name in raw_device_ids if ':' in name]
                        current_block_data_dicts = [{'device_name': name} for name in current_block_device_names]
                        if current_block_device_names:
                             found_model_successfully = True
                    i += 1 
            else: 
                break 
            
            if not found_model_successfully:
                continue 

            while i < len(lines):
                param_line_full = lines[i]
                param_line_stripped = param_line_full.strip()

                if not param_line_stripped or \
                   param_line_stripped.startswith("PSPNQS103VA:") or \
                   param_line_stripped.startswith("Capacitor:") or \
                   param_line_stripped.startswith("Isource:") or \
                   param_line_stripped.startswith("Vsource:"):
                    break 

                if not (param_line_full.startswith(" ") and param_line_stripped):
                    i += 1
                    continue 

                param_parts = re.split(r'\s{2,}', param_line_stripped)
                
                if param_parts and len(param_parts[0]) > 0 and len(param_parts) >= 1 + len(current_block_device_names):
                    param_name = param_parts[0]
                    values = param_parts[1:1+len(current_block_device_names)]
                    for idx, device_dict in enumerate(current_block_data_dicts):
                        if idx < len(values):
                            device_dict[param_name] = values[idx]
                i += 1 
            continue 
        else: 
            i += 1

    if current_block_device_names and current_block_data_dicts: 
        all_devices_data.extend(current_block_data_dicts)
    
    if not all_devices_data:
        print(f"No MOSFET data successfully parsed from {input_filepath}")
        return

    # --- Load Selected Parameters ---
    try:
        with open(selected_params_filepath, 'r') as f_params:
            selected_params_ordered = json.load(f_params)
        print(f"Successfully loaded {len(selected_params_ordered)} parameters from {selected_params_filepath}")
    except FileNotFoundError:
        print(f"Error: Selected parameters file {selected_params_filepath} not found. Cannot proceed.")
        return
    except json.JSONDecodeError:
        print(f"Error: Could not decode JSON from {selected_params_filepath}. Please ensure it's a valid JSON list.")
        return
    except Exception as e:
        print(f"An unexpected error occurred while reading {selected_params_filepath}: {e}")
        return
    
    # --- CSV Writing (transposed format, selected parameters in specified order) ---
    device_names_ordered = sorted(list(set(d['device_name'] for d in all_devices_data)))
    csv_headers = ['Parameter'] + device_names_ordered
    rows_for_csv = []
    device_data_map = {d['device_name']: d for d in all_devices_data}

    # Use the order from selected_params_ordered for rows
    for param_name in selected_params_ordered: 
        row_to_write = {'Parameter': param_name}
        for dev_name in device_names_ordered:
            row_to_write[dev_name] = device_data_map.get(dev_name, {}).get(param_name, '')
        rows_for_csv.append(row_to_write)

    try:
        with open(output_csv_filepath, 'w', newline='') as csvfile:
            writer = csv.DictWriter(csvfile, fieldnames=csv_headers, restval='')
            writer.writeheader()
            writer.writerows(rows_for_csv)
        print(f"Successfully parsed MOSFET data to {output_csv_filepath} (transposed format, selected parameters)")
    except IOError:
        print(f"Error: Could not write to output file {output_csv_filepath}.")
    except Exception as e:
        print(f"An unexpected error occurred during CSV writing: {e}")

if __name__ == '__main__':
    if len(sys.argv) != 4: # Updated to expect 4 arguments
        print("Usage: python parse_spice_op.py <input_filepath> <output_csv_filepath> <selected_params_json_filepath>")
        sys.exit(1)
    
    input_file_arg = sys.argv[1]
    output_file_arg = sys.argv[2]
    selected_params_file_arg = sys.argv[3] # New argument
    parse_op_file(input_file_arg, output_file_arg, selected_params_file_arg) 