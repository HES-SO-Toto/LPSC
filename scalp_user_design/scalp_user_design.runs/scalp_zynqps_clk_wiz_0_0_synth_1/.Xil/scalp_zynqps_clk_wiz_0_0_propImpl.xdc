set_property SRC_FILE_INFO {cfile:e:/scalp_revc_windows/scalp_zynqps/ip/scalp_zynqps_clk_wiz_0_0/scalp_zynqps_clk_wiz_0_0.xdc rfile:../../../../scalp_zynqps/ip/scalp_zynqps_clk_wiz_0_0/scalp_zynqps_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.080
