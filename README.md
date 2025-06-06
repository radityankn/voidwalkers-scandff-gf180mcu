# IIC-OSIC-TOOLS Design Project Template (GlobalFoundries 180nm)

This repository is a project template for the IIC-OSIC-TOOLS (https://github.com/iic-jku/IIC-OSIC-TOOLS) workflow, preconfigured for the GlobalFoundries 180nm PDK (gf180mcuD).


## Getting Started

### 1. Launch the Docker Container
Use the following script to start the pre-configured Docker container:
```bash
./start_project_vnc.sh
```

### 2. Access the Design Environment
You have two options to access the environment running inside the container:

*   **VNC Client**: Connect to `localhost:5901` (default password: `abc123`)
*   **Web Browser (noVNC)**: Open `http://localhost` (default password: `abc123`) 

### 3. Open a Terminal
Once you are in the VNC session (either via VNC client or web browser):
1.  Right-click on the desktop.
2.  Select "Terminal Emulator" (or similar, the exact name might vary slightly).

This will open a terminal session, and you should automatically be in the `/foss/designs` directory.

### 4. Project Directory
The `/foss/designs` directory inside the Docker container is mounted from the `designs` folder in this repository.
**Important:** Keep all your non-temporary design files within this `designs` folder (or `/foss/designs` when inside the container) to ensure they persist if the Docker container is restarted.

### 5. Setup PDK Environment
Run the following command *inside the terminal within the VNC session* to set up the correct environment variables and paths for the `gf180mcuD` PDK:
```bash
source setup_pdk.sh
```
Launch Xschem
```bash
xschem
```
You should see the available devices from the PDK and their testbenches.


## Library Structure Conventions

The project follows specific naming conventions for organizing design libraries under `/designs/libs/`:

### Directory Structure
```
/designs/libs/
├── core_*/          # Design libraries (core functionality)
├── tb_*/            # Testbench libraries
└── ...
```

### Naming Conventions
- **`core_*`**: Design libraries containing your core circuit implementations
- **`tb_*`**: Testbench libraries containing simulation and verification setups

### File Organization
Within each library directory:
- Each cell should have its own subdirectory: `/designs/libs/library_name/cell_name/`
- Files within a cell directory should be prefixed with the cell name (e.g., `cell_name.sch`, `cell_name.sym`)
- **Exception**: Testbench directories (starting with `tb_`) are exempt from the file naming prefix requirement

### Validation
Use the provided sanity check script to validate your library structure:
```bash
cd designs/CI
./library_check.sh
```

This script verifies:
- Proper directory hierarchy (no files at inappropriate levels)
- Correct file naming conventions for design libraries
- Exempts testbench libraries from strict naming requirements


## Example Design: 5-Transistor Single Stage OTA

This project includes a reference design to demonstrate the library structure and design flow:

### Libraries
- **Design**: 5-Transistor Single Stage Operational Transconductance Amplifier (OTA)
- **Library Location**: `core_analog`
- **Testbench Location**: `tb_analog`


### Usage
1. **Design Files**: Navigate to `/designs/libs/core_analog/` to find the schematics and symbols of the OTA cell and parameterized unit transistor cells.
2. **Testbench**: Use the verification setups in `/designs/libs/tb_analog/` to simulate and characterize the design.
3. **Validation**: Run the library check to ensure proper file organization:
   ```bash
   cd designs/CI
   ./library_check.sh
   ```

This example demonstrates the proper use of the library naming conventions (`core_*` for design libraries, `tb_*` for testbenches) and serves as a starting point for developing your own analog circuits.


## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.