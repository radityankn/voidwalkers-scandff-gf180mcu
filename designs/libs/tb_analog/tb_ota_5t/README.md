# TB_OTA_5T Test Suite

This directory contains test scripts for the 5-transistor Operational Transconductance Amplifier (OTA) testbench.

## Overview

The `test_all.py` script provides automated testing for the OTA 5T design using NGSpice simulation. It includes two main test cases:

- **Operating Point Analysis (`test_op`)**: Performs DC operating point analysis with unity feedback and DC stimulus
- **DC Sweep Analysis (`test_dc`)**: Performs DC sweep analysis to characterize the amplifier's behavior

## Test Functions

### `test_op()`
- Runs operating point analysis
- Uses unity feedback configuration
- Applies DC stimulus voltage of 1.5V
- Outputs results to `op.log`

### `test_dc()`
- Runs DC sweep analysis
- Uses unity feedback configuration
- Applies DC stimulus sweep
- Outputs results to `results.raw`

## Running the Tests

### 1. Standalone Execution

Run the script directly with Python to execute all tests:

```bash
python test_all.py
```

This will run both `test_op()` and `test_dc()` sequentially.

### 2. Interactive Execution

You can run individual tests interactively in a Python shell:

```python
# Start Python interpreter
python

# Import the test functions
from test_all import *

# Run individual tests
test_op()
test_dc()
```

### 3. Using pytest

Run tests using pytest for more advanced test management and reporting:

```bash
# Run all tests in the file
pytest test_all.py

# Run specific test
pytest test_all.py::test_op
pytest test_all.py::test_dc

# Run with verbose output
pytest -v test_all.py

# Run with detailed output and print statements
pytest -s test_all.py

# Run all tests of the library
cd /foss/designs/libs/tb_analog
pytest -v .

```

## Output

Test results are stored in the simulation directory structure:
- Operating point results: `/foss/designs/simulations/tb_ota_5t/test_op/op.log`
- DC sweep results: `/foss/designs/simulations/tb_ota_5t/test_dc/results.raw`

## Dependencies

- `fixture.py` (customized test fixture module for this testbench, contains helper functions for netlist generation and simulation)
- NGSpice simulator
- Python 3.x

## File Structure

```
tb_ota_5t/
├── fixture.py           # Test fixture
├── test_all.py          # Main test script
├── tb_ota_5t.spice      # Testbench netlist
├── tb_ota_5t.sch        # Testbench schematic
└── README.md            # This file
```

## Notes

- The script automatically creates the necessary simulation directories
- Each test generates a complete SPICE netlist including PVT headers, stimulus, and analysis commands
- The testbench uses unity feedback configuration for both tests
- `fixture.py` is customized for each testbench and provides testbench-specific helper functions 