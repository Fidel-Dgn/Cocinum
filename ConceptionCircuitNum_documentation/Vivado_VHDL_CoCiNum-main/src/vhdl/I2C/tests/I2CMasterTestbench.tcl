
# Close simulator if a simulation session is already open.
if {[current_sim] ne ""} {
    close_sim -force
}

set_property top I2CMasterTestbench [get_filesets sim_1]

# Start the simulator.
launch_simulation -simset sim_1 -mode behavioral
restart

# Add waves for signals in I2STransmitter.
set tbdiv [add_wave_divider -before_wave clk I2CMasterTestbench]
set div   [add_wave_divider -before_wave $tbdiv  I2CMaster]
add_wave -after_wave $div master_inst/*

# Run.
run -a
