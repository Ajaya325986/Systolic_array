###############################################################################
# Timing Constraints - CORRECTED
###############################################################################
current_design chip_top

# Clock Definition
create_clock -name clk -period 7.305 [get_ports {clk}]
set_clock_transition 0.1 [get_clocks {clk}]
set_clock_uncertainty -setup 0.30 [get_clocks clk]
set_clock_uncertainty -hold 0.05 [get_clocks clk]

# Timing Derating (Process Variation)
set_timing_derate -early 1.05
set_timing_derate -late 0.95

# Design Rules
set_max_transition 0.75 [current_design]
set_max_fanout 16 [current_design]


###############################################################################
# Input Constraints
###############################################################################
# Reset is asynchronous - don't time it
set_false_path -from [get_ports rst_n]

create_clock -name vin_clk -period 7.305
create_clock -name vout_clk -period 7.305


set_input_delay 2.0 -clock vin_clk -max [get_ports {data_in_broad[*]}]
set_input_delay 1.5 -clock vin_clk -max -add_delay [get_ports rst_n]
set_input_delay 1.3 -clock vin_clk -min -add_delay [get_ports {data_in_broad[*]}]

# Input drive strength
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} [get_ports {data_in_broad[*]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} [get_ports {clk}]

###############################################################################
# Output Constraints
###############################################################################
set_output_delay -max 2.0 -clock vout_clk [get_ports {result[*]}]
set_output_delay -min 0.0 -clock vout_clk -add_delay [get_ports {result[*]}]

# Output load (realistic pad load)
set_load 0.1 [get_ports {result[*]}]

###############################################################################
# Multi-Cycle Paths (CRITICAL FOR SYSTOLIC ARRAY!)
###############################################################################
# Systolic array takes 32 cycles to produce valid output
set_multicycle_path -setup 32 -from [get_ports data_in_broad[*]] -to [get_ports result[*]]
set_multicycle_path -hold 31 -from [get_ports data_in_broad[*]] -to [get_ports result[*]]

#set_multicycle_path -setup 32 -from [get_pins u_mem_a/dout0[*]] -to [all_registers]
#set_multicycle_path -setup 32 -from [get_pins u_mem_b/dout0[*]] -to [all_registers]
#set_multicycle_path -setup 32 -from [get_pins u_mem_c/dout0[*]] -to [all_registers]

set_multicycle_path -hold 31 -from [get_pins u_mem_a/dout0[*]] -to [all_registers]
set_multicycle_path -hold 31 -from [get_pins u_mem_b/dout0[*]] -to [all_registers]
set_multicycle_path -hold 31 -from [get_pins u_mem_c/dout0[*]] -to [all_registers]


###############################################################################
# False Paths for SRAM Control Signals
###############################################################################
set_false_path -to [get_pins */wmask0[*]]

###############################################################################
# Disable Timing on Non-Critical Cells
###############################################################################
set_disable_timing [get_lib_pins sky130_fd_sc_hd__conb_1/HI]
set_disable_timing [get_lib_pins sky130_fd_sc_hd__conb_1/LO]
set_disable_timing [get_lib_pins sky130_fd_sc_hd__diode_2/DIODE]

# SRAM read-only port (port1) - don't time it
set_disable_timing [get_lib_pins sky130_sram_1kbyte_1rw1r_32x256_8/addr1[0]]
set_disable_timing [get_lib_pins sky130_sram_1kbyte_1rw1r_32x256_8/addr1[1]]
set_disable_timing [get_lib_pins sky130_sram_1kbyte_1rw1r_32x256_8/addr1[2]]
set_disable_timing [get_lib_pins sky130_sram_1kbyte_1rw1r_32x256_8/addr1[3]]
set_disable_timing [get_lib_pins sky130_sram_1kbyte_1rw1r_32x256_8/addr1[4]]
set_disable_timing [get_lib_pins sky130_sram_1kbyte_1rw1r_32x256_8/addr1[5]]
set_disable_timing [get_lib_pins sky130_sram_1kbyte_1rw1r_32x256_8/addr1[6]]
set_disable_timing [get_lib_pins sky130_sram_1kbyte_1rw1r_32x256_8/addr1[7]]

set_disable_timing [get_lib_pins sky130_sram_1kbyte_1rw1r_32x256_8/csb1]
