############################################################################
# Timing constraints                                                       #
############################################################################

##### PS_CLK (125 MHz) #####
create_clock -period 8.000 -waveform {0.000 4.000} [get_ports PSClkxCIO]

##### GTP reference clocks (125 MHz) #####
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets GTPRefClk0PxCI]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets GTPRefClk1xC]

##### Clocks from PLLs (125 MHz) #####
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {PLL_Clk_in_Local}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {PLL_Clk_in_North}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {PLL_Clk_in_South}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {PLL_Clk_in_Top}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {PLL_Clk_in_Bottom}]

##### Clocks from neighbours (125 MHz) #####
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {Clk_in_North}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {Clk_in_South}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {Clk_in_East}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {Clk_in_West}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {Clk_in_Top}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {Clk_in_Bottom}]

# Output delays
#create_clock -name clk_125 -period 8.000 [get_nets sys_clock_clk_125]
#set_output_delay 1.000 -clock [get_clocks clk_125] [get_ports Led12V5RxSO]
#set_output_delay 1.000 -clock [get_clocks clk_125] [get_ports Led12V5RxSO]
#set_output_delay 1.000 -clock [get_clocks clk_125] [get_ports Led12V5RxSO]






set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[4]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[7]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[11]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[12]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[14]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[3]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[5]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[2]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[9]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[15]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[0]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[1]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[13]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[16]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[18]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[19]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[6]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[8]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[17]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addra[10]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[1]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[2]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[3]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[9]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[15]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[10]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[12]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[16]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[19]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[0]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[4]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[5]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[8]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[14]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[6]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[7]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[11]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[13]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[17]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/addrb[18]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/dina[0]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/dina[1]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/dina[2]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/dina[3]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/doutb[0]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/doutb[1]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/doutb[2]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.video_mem_inst/doutb[3]}]

connect_debug_port u_ila_0/probe0 [get_nets [list {PLxB.ImGenxB.interations_s[0]} {PLxB.ImGenxB.interations_s[1]} {PLxB.ImGenxB.interations_s[2]} {PLxB.ImGenxB.interations_s[3]} {PLxB.ImGenxB.interations_s[4]} {PLxB.ImGenxB.interations_s[5]} {PLxB.ImGenxB.interations_s[6]}]]

connect_debug_port u_ila_0/probe1 [get_nets [list {PLxB.ImGenxB.mandel_addr_s[0]} {PLxB.ImGenxB.mandel_addr_s[1]} {PLxB.ImGenxB.mandel_addr_s[2]} {PLxB.ImGenxB.mandel_addr_s[3]} {PLxB.ImGenxB.mandel_addr_s[4]} {PLxB.ImGenxB.mandel_addr_s[5]} {PLxB.ImGenxB.mandel_addr_s[6]} {PLxB.ImGenxB.mandel_addr_s[7]} {PLxB.ImGenxB.mandel_addr_s[8]} {PLxB.ImGenxB.mandel_addr_s[9]} {PLxB.ImGenxB.mandel_addr_s[10]} {PLxB.ImGenxB.mandel_addr_s[11]} {PLxB.ImGenxB.mandel_addr_s[12]} {PLxB.ImGenxB.mandel_addr_s[13]} {PLxB.ImGenxB.mandel_addr_s[14]} {PLxB.ImGenxB.mandel_addr_s[15]} {PLxB.ImGenxB.mandel_addr_s[16]} {PLxB.ImGenxB.mandel_addr_s[17]} {PLxB.ImGenxB.mandel_addr_s[18]} {PLxB.ImGenxB.mandel_addr_s[19]}]]


set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets Clk125xC]
