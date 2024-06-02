transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/blk_mem_gen_v8_4_7
vlib activehdl/xil_defaultlib

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap blk_mem_gen_v8_4_7 activehdl/blk_mem_gen_v8_4_7
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l blk_mem_gen_v8_4_7 -l xil_defaultlib \
"D:/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+D:/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l blk_mem_gen_v8_4_7 -l xil_defaultlib \
"D:/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_7  -v2k5 "+incdir+D:/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l blk_mem_gen_v8_4_7 -l xil_defaultlib \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+D:/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l blk_mem_gen_v8_4_7 -l xil_defaultlib \
"../../../../scalp_user_design.gen/sources_1/ip/video_mem_1/sim/video_mem.v" \

vlog -work xil_defaultlib \
"glbl.v"
