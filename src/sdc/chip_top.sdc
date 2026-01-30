###############################################################################
# Created by write_sdc
# Fri Jan 30 20:01:32 2026
###############################################################################
current_design chip_top
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 8.0000 [get_ports {clk}]
set_clock_transition 0.1000 [get_clocks {clk}]
set_clock_uncertainty -setup 0.1500 clk
set_clock_uncertainty -hold 0.0500 clk
set_propagated_clock [get_clocks {clk}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[0]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[10]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[10]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[11]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[11]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[12]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[12]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[13]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[13]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[14]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[14]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[15]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[15]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[16]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[16]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[17]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[17]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[18]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[18]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[19]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[19]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[1]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[20]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[20]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[21]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[21]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[22]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[22]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[23]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[23]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[24]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[24]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[25]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[25]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[26]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[26]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[27]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[27]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[28]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[28]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[29]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[29]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[2]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[2]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[30]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[30]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[31]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[31]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[3]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[3]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[4]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[4]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[5]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[5]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[6]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[6]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[7]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[7]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[8]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[8]}]
set_input_delay 1.3000 -clock [get_clocks {clk}] -min -add_delay [get_ports {data_in_broad[9]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {data_in_broad[9]}]
set_input_delay 1.5000 -clock [get_clocks {clk}] -rise -max -add_delay [get_ports {rst_n}]
set_input_delay 1.5000 -clock [get_clocks {clk}] -fall -max -add_delay [get_ports {rst_n}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[0]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[10]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[10]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[11]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[11]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[12]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[12]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[13]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[13]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[14]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[14]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[15]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[15]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[16]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[16]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[17]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[17]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[18]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[18]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[19]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[19]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[1]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[20]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[20]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[21]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[21]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[22]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[22]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[23]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[23]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[24]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[24]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[25]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[25]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[26]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[26]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[27]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[27]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[28]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[28]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[29]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[29]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[2]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[30]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[30]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[31]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[31]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[3]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[4]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[4]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[5]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[5]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[6]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[6]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[7]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[7]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[8]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[8]}]
set_output_delay 0.0000 -clock [get_clocks {clk}] -min -add_delay [get_ports {result[9]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {result[9]}]
set_disable_timing [get_lib_pins {sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__diode_2/DIODE}]
set_disable_timing [get_lib_pins {sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__conb_1/HI}]
set_disable_timing [get_lib_pins {sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__conb_1/LO}]
set_multicycle_path -hold\
    -from [list [get_ports {data_in_broad[0]}]\
           [get_ports {data_in_broad[10]}]\
           [get_ports {data_in_broad[11]}]\
           [get_ports {data_in_broad[12]}]\
           [get_ports {data_in_broad[13]}]\
           [get_ports {data_in_broad[14]}]\
           [get_ports {data_in_broad[15]}]\
           [get_ports {data_in_broad[16]}]\
           [get_ports {data_in_broad[17]}]\
           [get_ports {data_in_broad[18]}]\
           [get_ports {data_in_broad[19]}]\
           [get_ports {data_in_broad[1]}]\
           [get_ports {data_in_broad[20]}]\
           [get_ports {data_in_broad[21]}]\
           [get_ports {data_in_broad[22]}]\
           [get_ports {data_in_broad[23]}]\
           [get_ports {data_in_broad[24]}]\
           [get_ports {data_in_broad[25]}]\
           [get_ports {data_in_broad[26]}]\
           [get_ports {data_in_broad[27]}]\
           [get_ports {data_in_broad[28]}]\
           [get_ports {data_in_broad[29]}]\
           [get_ports {data_in_broad[2]}]\
           [get_ports {data_in_broad[30]}]\
           [get_ports {data_in_broad[31]}]\
           [get_ports {data_in_broad[3]}]\
           [get_ports {data_in_broad[4]}]\
           [get_ports {data_in_broad[5]}]\
           [get_ports {data_in_broad[6]}]\
           [get_ports {data_in_broad[7]}]\
           [get_ports {data_in_broad[8]}]\
           [get_ports {data_in_broad[9]}]]\
    -to [list [get_ports {result[0]}]\
           [get_ports {result[10]}]\
           [get_ports {result[11]}]\
           [get_ports {result[12]}]\
           [get_ports {result[13]}]\
           [get_ports {result[14]}]\
           [get_ports {result[15]}]\
           [get_ports {result[16]}]\
           [get_ports {result[17]}]\
           [get_ports {result[18]}]\
           [get_ports {result[19]}]\
           [get_ports {result[1]}]\
           [get_ports {result[20]}]\
           [get_ports {result[21]}]\
           [get_ports {result[22]}]\
           [get_ports {result[23]}]\
           [get_ports {result[24]}]\
           [get_ports {result[25]}]\
           [get_ports {result[26]}]\
           [get_ports {result[27]}]\
           [get_ports {result[28]}]\
           [get_ports {result[29]}]\
           [get_ports {result[2]}]\
           [get_ports {result[30]}]\
           [get_ports {result[31]}]\
           [get_ports {result[3]}]\
           [get_ports {result[4]}]\
           [get_ports {result[5]}]\
           [get_ports {result[6]}]\
           [get_ports {result[7]}]\
           [get_ports {result[8]}]\
           [get_ports {result[9]}]] 31
set_multicycle_path -setup\
    -from [list [get_ports {data_in_broad[0]}]\
           [get_ports {data_in_broad[10]}]\
           [get_ports {data_in_broad[11]}]\
           [get_ports {data_in_broad[12]}]\
           [get_ports {data_in_broad[13]}]\
           [get_ports {data_in_broad[14]}]\
           [get_ports {data_in_broad[15]}]\
           [get_ports {data_in_broad[16]}]\
           [get_ports {data_in_broad[17]}]\
           [get_ports {data_in_broad[18]}]\
           [get_ports {data_in_broad[19]}]\
           [get_ports {data_in_broad[1]}]\
           [get_ports {data_in_broad[20]}]\
           [get_ports {data_in_broad[21]}]\
           [get_ports {data_in_broad[22]}]\
           [get_ports {data_in_broad[23]}]\
           [get_ports {data_in_broad[24]}]\
           [get_ports {data_in_broad[25]}]\
           [get_ports {data_in_broad[26]}]\
           [get_ports {data_in_broad[27]}]\
           [get_ports {data_in_broad[28]}]\
           [get_ports {data_in_broad[29]}]\
           [get_ports {data_in_broad[2]}]\
           [get_ports {data_in_broad[30]}]\
           [get_ports {data_in_broad[31]}]\
           [get_ports {data_in_broad[3]}]\
           [get_ports {data_in_broad[4]}]\
           [get_ports {data_in_broad[5]}]\
           [get_ports {data_in_broad[6]}]\
           [get_ports {data_in_broad[7]}]\
           [get_ports {data_in_broad[8]}]\
           [get_ports {data_in_broad[9]}]]\
    -to [list [get_ports {result[0]}]\
           [get_ports {result[10]}]\
           [get_ports {result[11]}]\
           [get_ports {result[12]}]\
           [get_ports {result[13]}]\
           [get_ports {result[14]}]\
           [get_ports {result[15]}]\
           [get_ports {result[16]}]\
           [get_ports {result[17]}]\
           [get_ports {result[18]}]\
           [get_ports {result[19]}]\
           [get_ports {result[1]}]\
           [get_ports {result[20]}]\
           [get_ports {result[21]}]\
           [get_ports {result[22]}]\
           [get_ports {result[23]}]\
           [get_ports {result[24]}]\
           [get_ports {result[25]}]\
           [get_ports {result[26]}]\
           [get_ports {result[27]}]\
           [get_ports {result[28]}]\
           [get_ports {result[29]}]\
           [get_ports {result[2]}]\
           [get_ports {result[30]}]\
           [get_ports {result[31]}]\
           [get_ports {result[3]}]\
           [get_ports {result[4]}]\
           [get_ports {result[5]}]\
           [get_ports {result[6]}]\
           [get_ports {result[7]}]\
           [get_ports {result[8]}]\
           [get_ports {result[9]}]] 32
set_false_path\
    -from [get_ports {rst_n}]
set_false_path\
    -to [list [get_pins {u_mem_a/wmask0[0]}]\
           [get_pins {u_mem_a/wmask0[1]}]\
           [get_pins {u_mem_a/wmask0[2]}]\
           [get_pins {u_mem_a/wmask0[3]}]\
           [get_pins {u_mem_b/wmask0[0]}]\
           [get_pins {u_mem_b/wmask0[1]}]\
           [get_pins {u_mem_b/wmask0[2]}]\
           [get_pins {u_mem_b/wmask0[3]}]\
           [get_pins {u_mem_c/wmask0[0]}]\
           [get_pins {u_mem_c/wmask0[1]}]\
           [get_pins {u_mem_c/wmask0[2]}]\
           [get_pins {u_mem_c/wmask0[3]}]]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.1000 [get_ports {result[31]}]
set_load -pin_load 0.1000 [get_ports {result[30]}]
set_load -pin_load 0.1000 [get_ports {result[29]}]
set_load -pin_load 0.1000 [get_ports {result[28]}]
set_load -pin_load 0.1000 [get_ports {result[27]}]
set_load -pin_load 0.1000 [get_ports {result[26]}]
set_load -pin_load 0.1000 [get_ports {result[25]}]
set_load -pin_load 0.1000 [get_ports {result[24]}]
set_load -pin_load 0.1000 [get_ports {result[23]}]
set_load -pin_load 0.1000 [get_ports {result[22]}]
set_load -pin_load 0.1000 [get_ports {result[21]}]
set_load -pin_load 0.1000 [get_ports {result[20]}]
set_load -pin_load 0.1000 [get_ports {result[19]}]
set_load -pin_load 0.1000 [get_ports {result[18]}]
set_load -pin_load 0.1000 [get_ports {result[17]}]
set_load -pin_load 0.1000 [get_ports {result[16]}]
set_load -pin_load 0.1000 [get_ports {result[15]}]
set_load -pin_load 0.1000 [get_ports {result[14]}]
set_load -pin_load 0.1000 [get_ports {result[13]}]
set_load -pin_load 0.1000 [get_ports {result[12]}]
set_load -pin_load 0.1000 [get_ports {result[11]}]
set_load -pin_load 0.1000 [get_ports {result[10]}]
set_load -pin_load 0.1000 [get_ports {result[9]}]
set_load -pin_load 0.1000 [get_ports {result[8]}]
set_load -pin_load 0.1000 [get_ports {result[7]}]
set_load -pin_load 0.1000 [get_ports {result[6]}]
set_load -pin_load 0.1000 [get_ports {result[5]}]
set_load -pin_load 0.1000 [get_ports {result[4]}]
set_load -pin_load 0.1000 [get_ports {result[3]}]
set_load -pin_load 0.1000 [get_ports {result[2]}]
set_load -pin_load 0.1000 [get_ports {result[1]}]
set_load -pin_load 0.1000 [get_ports {result[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[31]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[30]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[29]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[28]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[27]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[26]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[25]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[24]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[23]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[22]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[21]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[20]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[19]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[18]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[17]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[16]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_8 -pin {X} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in_broad[0]}]
set_timing_derate -late 0.9500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 1.2000 [current_design]
set_max_fanout 16.0000 [current_design]
