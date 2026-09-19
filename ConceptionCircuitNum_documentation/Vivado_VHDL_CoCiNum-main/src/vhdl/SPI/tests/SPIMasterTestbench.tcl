
#
# Copyright (C), 2020, ESEO
# Guillaume Savaton <guillaume.savaton@eseo.fr>
#

# Close simulator if a simulation session is already open.
if {[current_sim] ne ""} {
    close_sim -force
}

set_property top SPIMasterTestbench [get_filesets sim_1]

# Start the simulator.
launch_simulation -simset sim_1 -mode behavioral
restart

# Add waves for signals in SPIMaster.
set tbdiv [add_wave_divider -before_wave clk SPIMasterTestbench]
set div   [add_wave_divider -before_wave $tbdiv  SPIMaster]
add_wave -after_wave $div master_inst/*

# Run.
run 1us
