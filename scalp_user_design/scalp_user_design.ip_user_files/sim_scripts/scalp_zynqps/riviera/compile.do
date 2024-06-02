transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_14
vlib riviera/xlconstant_v1_1_8
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_15
vlib riviera/processing_system7_vip_v1_0_17
vlib riviera/generic_baseblocks_v2_1_1
vlib riviera/axi_register_slice_v2_1_29
vlib riviera/fifo_generator_v13_2_9
vlib riviera/axi_data_fifo_v2_1_28
vlib riviera/axi_crossbar_v2_1_30
vlib riviera/axi_protocol_converter_v2_1_29
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_gpio_v2_0_31
vlib riviera/axi_intc_v4_1_18
vlib riviera/xlconcat_v2_1_5
vlib riviera/lib_pkg_v1_0_3
vlib riviera/axi_iic_v2_1_5

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_14 riviera/proc_sys_reset_v5_0_14
vmap xlconstant_v1_1_8 riviera/xlconstant_v1_1_8
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_15 riviera/axi_vip_v1_1_15
vmap processing_system7_vip_v1_0_17 riviera/processing_system7_vip_v1_0_17
vmap generic_baseblocks_v2_1_1 riviera/generic_baseblocks_v2_1_1
vmap axi_register_slice_v2_1_29 riviera/axi_register_slice_v2_1_29
vmap fifo_generator_v13_2_9 riviera/fifo_generator_v13_2_9
vmap axi_data_fifo_v2_1_28 riviera/axi_data_fifo_v2_1_28
vmap axi_crossbar_v2_1_30 riviera/axi_crossbar_v2_1_30
vmap axi_protocol_converter_v2_1_29 riviera/axi_protocol_converter_v2_1_29
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_31 riviera/axi_gpio_v2_0_31
vmap axi_intc_v4_1_18 riviera/axi_intc_v4_1_18
vmap xlconcat_v2_1_5 riviera/xlconcat_v2_1_5
vmap lib_pkg_v1_0_3 riviera/lib_pkg_v1_0_3
vmap axi_iic_v2_1_5 riviera/axi_iic_v2_1_5

vlog -work xilinx_vip  -incr "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"/tools/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/tools/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ip/vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0/vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0_clk_wiz.v" \
"../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ip/vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0/vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0.v" \

vcom -work lib_cdc_v1_0_2 -93  -incr \
"../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_14 -93  -incr \
"../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ip/vga_hdmi_clk_rst_system_inst_0_rst_ps7_1_vga_0/sim/vga_hdmi_clk_rst_system_inst_0_rst_ps7_1_vga_0.vhd" \
"../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ip/vga_hdmi_clk_rst_system_inst_0_rst_ps7_2_hdmi_0/sim/vga_hdmi_clk_rst_system_inst_0_rst_ps7_2_hdmi_0.vhd" \
"../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/sim/vga_hdmi_clk_rst_system_inst_0.vhd" \

vlog -work xlconstant_v1_1_8  -incr -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../../../scalp_zynqps/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_gnd_constant_0/sim/scalp_zynqps_gnd_constant_0.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../../../scalp_zynqps/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_15  -incr "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../../../scalp_zynqps/ipshared/5753/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_17  -incr "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../../../scalp_zynqps/ipshared/6b2b/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_processing_system7_0_0/sim/scalp_zynqps_processing_system7_0_0.v" \

vcom -work xil_defaultlib -2008  -incr \
"../../../bd/scalp_zynqps/ipshared/3ff2/src/scalp_axi_link.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_scalp_axi_link_firmwareid_0/sim/scalp_zynqps_scalp_axi_link_firmwareid_0.vhd" \

vlog -work generic_baseblocks_v2_1_1  -incr -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../../../scalp_zynqps/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_29  -incr -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../../../scalp_zynqps/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_9  -incr -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../../../scalp_zynqps/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9 -93  -incr \
"../../../../../scalp_zynqps/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../../../scalp_zynqps/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_28  -incr -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../../../scalp_zynqps/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_30  -incr -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../../../scalp_zynqps/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_xbar_0/sim/scalp_zynqps_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_29  -incr -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../../../scalp_zynqps/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_auto_pc_0/sim/scalp_zynqps_auto_pc_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../../scalp_zynqps/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../../scalp_zynqps/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_31 -93  -incr \
"../../../../../scalp_zynqps/ipshared/6fbe/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_axi_gpio_switches_0/sim/scalp_zynqps_axi_gpio_switches_0.vhd" \

vcom -work axi_intc_v4_1_18 -93  -incr \
"../../../../../scalp_zynqps/ipshared/d764/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_axi_intc_0_0/sim/scalp_zynqps_axi_intc_0_0.vhd" \

vlog -work xlconcat_v2_1_5  -incr -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../../../scalp_zynqps/ipshared/147b/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_xlconcat_0_0/sim/scalp_zynqps_xlconcat_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_axi_gpio_reset_btn_0/sim/scalp_zynqps_axi_gpio_reset_btn_0.vhd" \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_system_ila_0_0/bd_0/ip/ip_0/sim/bd_c0d9_ila_lib_0.vhd" \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_system_ila_0_0/bd_0/sim/bd_c0d9.vhd" \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_system_ila_0_0/sim/scalp_zynqps_system_ila_0_0.vhd" \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_scalp_axi_link_cplx_num_regs_0/sim/scalp_zynqps_scalp_axi_link_cplx_num_regs_0.vhd" \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_rst_ps7_0_125M_0/sim/scalp_zynqps_rst_ps7_0_125M_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ipshared/c2c6" "+incdir+../../../../../scalp_zynqps/ipshared/ec67/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/6b2b/hdl" "+incdir+../../../../../scalp_zynqps/ipshared/e2ba/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/a29c/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/ae90/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/0e59/hdl/verilog" "+incdir+../../../../../scalp_zynqps/ipshared/c2c6" "+incdir+/tools/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l xlconstant_v1_1_8 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l generic_baseblocks_v2_1_1 -l axi_register_slice_v2_1_29 -l fifo_generator_v13_2_9 -l axi_data_fifo_v2_1_28 -l axi_crossbar_v2_1_30 -l axi_protocol_converter_v2_1_29 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_31 -l axi_intc_v4_1_18 -l xlconcat_v2_1_5 -l lib_pkg_v1_0_3 -l axi_iic_v2_1_5 \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_sys_clock_0/scalp_zynqps_sys_clock_0_clk_wiz.v" \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_sys_clock_0/scalp_zynqps_sys_clock_0.v" \

vcom -work lib_pkg_v1_0_3 -93  -incr \
"../../../../../scalp_zynqps/ipshared/56d9/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_iic_v2_1_5 -93  -incr \
"../../../../../scalp_zynqps/ipshared/0f29/hdl/axi_iic_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_axi_iic_ioext_0/sim/scalp_zynqps_axi_iic_ioext_0.vhd" \
"../../../bd/scalp_zynqps/ip/scalp_zynqps_axi_gpio_joystick_0/sim/scalp_zynqps_axi_gpio_joystick_0.vhd" \
"../../../bd/scalp_zynqps/sim/scalp_zynqps.vhd" \

vlog -work xil_defaultlib \
"glbl.v"
