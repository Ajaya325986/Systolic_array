# 1. Reading liberty for cell defination
read_liberty $::env(LIB_SYNTH_COMPLETE)

# 2. Read the VCD File (The Activity Data)
# -scope: This is CRITICAL. It points to where your design is in the simulation hierarchy.
# If your testbench is 'tb_top' and you instantiated your design as 'uut', the scope is 'tb_top/uut'
read_power_activities -vcd /home/n0b0dy/OpenLane/designs/Tensor/testbench/ir_drop_analysis.vcd -scope tb_chip_top/u_dut

# 3. Set Voltage Domain (As discussed before)
set_voltage_domain -power VPWR -ground VGND 

# 4. Analyze Power Grid using the VCD data
# The tool now calculates current based on REAL switching from the VCD
analyze_power_grid -net VPWR -vsrc /home/n0b0dy/OpenLane/designs/Tensor/vsrc.loc
