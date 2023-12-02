set_property PACKAGE_PIN M19 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property PACKAGE_PIN L18 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports en_in]
set_property PACKAGE_PIN AB6 [get_ports en_in]
set_property PACKAGE_PIN V4 [get_ports {led_flowing[0]}]
set_property PACKAGE_PIN U6 [get_ports {led_flowing[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_flowing[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_flowing[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_flowing[2]}]
set_property PACKAGE_PIN U5 [get_ports {led_flowing[2]}]
set_property PACKAGE_PIN V7 [get_ports {led_flowing[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_flowing[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_flowing[4]}]
set_property PACKAGE_PIN W7 [get_ports {led_flowing[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_flowing[5]}]
set_property PACKAGE_PIN W6 [get_ports {led_flowing[5]}]
set_property PACKAGE_PIN W5 [get_ports {led_flowing[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_flowing[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_flowing[7]}]
set_property PACKAGE_PIN U7 [get_ports {led_flowing[7]}]

create_clock -period 20.000 -name clk -waveform {0.000 10.000} [get_ports clk]




set_property SLEW SLOW [get_ports {led_flowing[0]}]
set_property SLEW SLOW [get_ports {led_flowing[1]}]
set_property SLEW SLOW [get_ports {led_flowing[2]}]
set_property SLEW SLOW [get_ports {led_flowing[3]}]
set_property SLEW SLOW [get_ports {led_flowing[4]}]
set_property SLEW SLOW [get_ports {led_flowing[5]}]
set_property SLEW SLOW [get_ports {led_flowing[6]}]
set_property SLEW SLOW [get_ports {led_flowing[7]}]
set_property DRIVE 12 [get_ports {led_flowing[0]}]
set_property DRIVE 12 [get_ports {led_flowing[1]}]
set_property DRIVE 12 [get_ports {led_flowing[2]}]
set_property DRIVE 12 [get_ports {led_flowing[3]}]
set_property DRIVE 12 [get_ports {led_flowing[4]}]
set_property DRIVE 12 [get_ports {led_flowing[5]}]
set_property DRIVE 12 [get_ports {led_flowing[6]}]
set_property DRIVE 12 [get_ports {led_flowing[7]}]


