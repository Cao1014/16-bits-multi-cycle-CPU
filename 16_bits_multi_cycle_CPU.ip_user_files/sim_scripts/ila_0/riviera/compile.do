vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../czy_2023.9.21.srcs/sources_1/ip/ila_0/hdl/verilog" "+incdir+../../../../czy_2023.9.21.srcs/sources_1/ip/ila_0/hdl/verilog" \
"E:/Vivado2017/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Vivado2017/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/Vivado2017/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../czy_2023.9.21.srcs/sources_1/ip/ila_0/hdl/verilog" "+incdir+../../../../czy_2023.9.21.srcs/sources_1/ip/ila_0/hdl/verilog" \
"../../../../czy_2023.9.21.srcs/sources_1/ip/ila_0/sim/ila_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

