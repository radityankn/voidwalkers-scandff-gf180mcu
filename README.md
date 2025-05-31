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

You are now ready to start designing!

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.