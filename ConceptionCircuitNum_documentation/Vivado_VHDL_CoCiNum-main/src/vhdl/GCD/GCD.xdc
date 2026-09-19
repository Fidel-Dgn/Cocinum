# --------------------------------------------------------------------
# Push-buttons
# --------------------------------------------------------------------

# BTNC
set_property PACKAGE_PIN U18     [get_ports load_i]
set_property IOSTANDARD LVCMOS33 [get_ports load_i]

# --------------------------------------------------------------------
# Switches
# --------------------------------------------------------------------

# SW0 .. SW7
set_property PACKAGE_PIN V17 [get_ports {a_i[0]}]
set_property PACKAGE_PIN V16 [get_ports {a_i[1]}]
set_property PACKAGE_PIN W16 [get_ports {a_i[2]}]
set_property PACKAGE_PIN W17 [get_ports {a_i[3]}]
set_property PACKAGE_PIN W15 [get_ports {a_i[4]}]
set_property PACKAGE_PIN V15 [get_ports {a_i[5]}]
set_property PACKAGE_PIN W14 [get_ports {a_i[6]}]
set_property PACKAGE_PIN W13 [get_ports {a_i[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {a_i[*]}]

# SW8 .. SW15
set_property PACKAGE_PIN V2 [get_ports {b_i[0]}]
set_property PACKAGE_PIN T3 [get_ports {b_i[1]}]
set_property PACKAGE_PIN T2 [get_ports {b_i[2]}]
set_property PACKAGE_PIN R3 [get_ports {b_i[3]}]
set_property PACKAGE_PIN W2 [get_ports {b_i[4]}]
set_property PACKAGE_PIN U1 [get_ports {b_i[5]}]
set_property PACKAGE_PIN T1 [get_ports {b_i[6]}]
set_property PACKAGE_PIN R2 [get_ports {b_i[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {b_i[*]}]

# --------------------------------------------------------------------
# LEDs
# --------------------------------------------------------------------

# LD0 .. LD7
set_property PACKAGE_PIN U16 [get_ports {g_o[0]}]
set_property PACKAGE_PIN E19 [get_ports {g_o[1]}]
set_property PACKAGE_PIN U19 [get_ports {g_o[2]}]
set_property PACKAGE_PIN V19 [get_ports {g_o[3]}]
set_property PACKAGE_PIN W18 [get_ports {g_o[4]}]
set_property PACKAGE_PIN U15 [get_ports {g_o[5]}]
set_property PACKAGE_PIN U14 [get_ports {g_o[6]}]
set_property PACKAGE_PIN V14 [get_ports {g_o[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {g_o[*]}]

# LD15
set_property PACKAGE_PIN L1      [get_ports done_o]
set_property IOSTANDARD LVCMOS33 [get_ports done_o]

# --------------------------------------------------------------------
# Clock
# --------------------------------------------------------------------

set_property PACKAGE_PIN W5      [get_ports clk_i]
set_property IOSTANDARD LVCMOS33 [get_ports clk_i]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_i]
