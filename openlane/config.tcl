# Design name
set ::env(DESIGN_NAME) "alu_8bit"

# Verilog source files
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

# Clockless combinational design
set ::env(RUN_CTS) 0
set ::env(CLOCK_PORT) ""

# Basic floorplan
set ::env(FP_CORE_UTIL) 40
set ::env(FP_ASPECT_RATIO) 1.0

# Power distribution network
set ::env(FP_PDN_VOFFSET) 5
set ::env(FP_PDN_VPITCH) 20
set ::env(FP_PDN_HOFFSET) 5
set ::env(FP_PDN_HPITCH) 20
