vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+D:/Vivado/2023.2/data/xilinx_vip/include" \
"D:/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../ipstatic" "+incdir+D:/Vivado/2023.2/data/xilinx_vip/include" \
"D:/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic" "+incdir+D:/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../scalp_user_design.gen/sources_1/ip/pll_mandel_1/pll_mandel_clk_wiz.v" \
"../../../../scalp_user_design.gen/sources_1/ip/pll_mandel_1/pll_mandel.v" \

vlog -work xil_defaultlib \
"glbl.v"

