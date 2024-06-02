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








connect_debug_port u_ila_0/probe1 [get_nets [list {PLxB.ImGenxB.hdmi_addr_s[0]} {PLxB.ImGenxB.hdmi_addr_s[1]} {PLxB.ImGenxB.hdmi_addr_s[2]} {PLxB.ImGenxB.hdmi_addr_s[3]} {PLxB.ImGenxB.hdmi_addr_s[4]} {PLxB.ImGenxB.hdmi_addr_s[5]} {PLxB.ImGenxB.hdmi_addr_s[6]} {PLxB.ImGenxB.hdmi_addr_s[7]} {PLxB.ImGenxB.hdmi_addr_s[8]} {PLxB.ImGenxB.hdmi_addr_s[9]} {PLxB.ImGenxB.hdmi_addr_s[10]} {PLxB.ImGenxB.hdmi_addr_s[11]} {PLxB.ImGenxB.hdmi_addr_s[12]} {PLxB.ImGenxB.hdmi_addr_s[13]} {PLxB.ImGenxB.hdmi_addr_s[14]} {PLxB.ImGenxB.hdmi_addr_s[15]} {PLxB.ImGenxB.hdmi_addr_s[16]} {PLxB.ImGenxB.hdmi_addr_s[17]} {PLxB.ImGenxB.hdmi_addr_s[18]} {PLxB.ImGenxB.hdmi_addr_s[19]}]]
connect_debug_port u_ila_0/probe2 [get_nets [list {PLxB.ImGenxB.y_msb[0]} {PLxB.ImGenxB.y_msb[1]} {PLxB.ImGenxB.y_msb[2]} {PLxB.ImGenxB.y_msb[3]} {PLxB.ImGenxB.y_msb[4]} {PLxB.ImGenxB.y_msb[5]} {PLxB.ImGenxB.y_msb[6]} {PLxB.ImGenxB.y_msb[7]} {PLxB.ImGenxB.y_msb[8]} {PLxB.ImGenxB.y_msb[9]} {PLxB.ImGenxB.y_msb[10]} {PLxB.ImGenxB.y_msb[11]} {PLxB.ImGenxB.y_msb[12]} {PLxB.ImGenxB.y_msb[13]} {PLxB.ImGenxB.y_msb[14]} {PLxB.ImGenxB.y_msb[15]} {PLxB.ImGenxB.y_msb[16]} {PLxB.ImGenxB.y_msb[17]} {PLxB.ImGenxB.y_msb[18]} {PLxB.ImGenxB.y_msb[19]} {PLxB.ImGenxB.y_msb[20]} {PLxB.ImGenxB.y_msb[21]} {PLxB.ImGenxB.y_msb[22]} {PLxB.ImGenxB.y_msb[23]} {PLxB.ImGenxB.y_msb[24]} {PLxB.ImGenxB.y_msb[25]} {PLxB.ImGenxB.y_msb[26]} {PLxB.ImGenxB.y_msb[27]} {PLxB.ImGenxB.y_msb[28]} {PLxB.ImGenxB.y_msb[29]} {PLxB.ImGenxB.y_msb[30]} {PLxB.ImGenxB.y_msb[31]}]]


connect_debug_port u_ila_0/probe0 [get_nets [list {PLxB.ImGenxB.imag_00_generate_s[1][0]} {PLxB.ImGenxB.imag_00_generate_s[1][1]} {PLxB.ImGenxB.imag_00_generate_s[1][2]} {PLxB.ImGenxB.imag_00_generate_s[1][3]} {PLxB.ImGenxB.imag_00_generate_s[1][4]} {PLxB.ImGenxB.imag_00_generate_s[1][5]} {PLxB.ImGenxB.imag_00_generate_s[1][6]} {PLxB.ImGenxB.imag_00_generate_s[1][7]} {PLxB.ImGenxB.imag_00_generate_s[1][8]} {PLxB.ImGenxB.imag_00_generate_s[1][9]} {PLxB.ImGenxB.imag_00_generate_s[1][10]} {PLxB.ImGenxB.imag_00_generate_s[1][11]} {PLxB.ImGenxB.imag_00_generate_s[1][12]} {PLxB.ImGenxB.imag_00_generate_s[1][13]} {PLxB.ImGenxB.imag_00_generate_s[1][14]} {PLxB.ImGenxB.imag_00_generate_s[1][15]} {PLxB.ImGenxB.imag_00_generate_s[1][16]} {PLxB.ImGenxB.imag_00_generate_s[1][17]}]]


connect_debug_port u_ila_0/probe2 [get_nets [list {PLxB.ImGenxB.imag_00_generate_s[4][0]} {PLxB.ImGenxB.imag_00_generate_s[4][1]} {PLxB.ImGenxB.imag_00_generate_s[4][2]} {PLxB.ImGenxB.imag_00_generate_s[4][3]} {PLxB.ImGenxB.imag_00_generate_s[4][4]} {PLxB.ImGenxB.imag_00_generate_s[4][5]} {PLxB.ImGenxB.imag_00_generate_s[4][6]} {PLxB.ImGenxB.imag_00_generate_s[4][7]} {PLxB.ImGenxB.imag_00_generate_s[4][8]} {PLxB.ImGenxB.imag_00_generate_s[4][9]} {PLxB.ImGenxB.imag_00_generate_s[4][10]} {PLxB.ImGenxB.imag_00_generate_s[4][11]} {PLxB.ImGenxB.imag_00_generate_s[4][12]} {PLxB.ImGenxB.imag_00_generate_s[4][13]} {PLxB.ImGenxB.imag_00_generate_s[4][14]} {PLxB.ImGenxB.imag_00_generate_s[4][15]} {PLxB.ImGenxB.imag_00_generate_s[4][16]} {PLxB.ImGenxB.imag_00_generate_s[4][17]}]]
connect_debug_port u_ila_0/probe3 [get_nets [list {PLxB.ImGenxB.imag_00_generate_s[6][0]} {PLxB.ImGenxB.imag_00_generate_s[6][1]} {PLxB.ImGenxB.imag_00_generate_s[6][2]} {PLxB.ImGenxB.imag_00_generate_s[6][3]} {PLxB.ImGenxB.imag_00_generate_s[6][4]} {PLxB.ImGenxB.imag_00_generate_s[6][5]} {PLxB.ImGenxB.imag_00_generate_s[6][6]} {PLxB.ImGenxB.imag_00_generate_s[6][7]} {PLxB.ImGenxB.imag_00_generate_s[6][8]} {PLxB.ImGenxB.imag_00_generate_s[6][9]} {PLxB.ImGenxB.imag_00_generate_s[6][10]} {PLxB.ImGenxB.imag_00_generate_s[6][11]} {PLxB.ImGenxB.imag_00_generate_s[6][12]} {PLxB.ImGenxB.imag_00_generate_s[6][13]} {PLxB.ImGenxB.imag_00_generate_s[6][14]} {PLxB.ImGenxB.imag_00_generate_s[6][15]} {PLxB.ImGenxB.imag_00_generate_s[6][16]} {PLxB.ImGenxB.imag_00_generate_s[6][17]}]]
connect_debug_port u_ila_0/probe4 [get_nets [list {PLxB.ImGenxB.imag_00_generate_s[5][0]} {PLxB.ImGenxB.imag_00_generate_s[5][1]} {PLxB.ImGenxB.imag_00_generate_s[5][2]} {PLxB.ImGenxB.imag_00_generate_s[5][3]} {PLxB.ImGenxB.imag_00_generate_s[5][4]} {PLxB.ImGenxB.imag_00_generate_s[5][5]} {PLxB.ImGenxB.imag_00_generate_s[5][6]} {PLxB.ImGenxB.imag_00_generate_s[5][7]} {PLxB.ImGenxB.imag_00_generate_s[5][8]} {PLxB.ImGenxB.imag_00_generate_s[5][9]} {PLxB.ImGenxB.imag_00_generate_s[5][10]} {PLxB.ImGenxB.imag_00_generate_s[5][11]} {PLxB.ImGenxB.imag_00_generate_s[5][12]} {PLxB.ImGenxB.imag_00_generate_s[5][13]} {PLxB.ImGenxB.imag_00_generate_s[5][14]} {PLxB.ImGenxB.imag_00_generate_s[5][15]} {PLxB.ImGenxB.imag_00_generate_s[5][16]} {PLxB.ImGenxB.imag_00_generate_s[5][17]}]]
connect_debug_port u_ila_0/probe7 [get_nets [list {PLxB.ImGenxB.imag_00_generate_s[7][0]} {PLxB.ImGenxB.imag_00_generate_s[7][1]} {PLxB.ImGenxB.imag_00_generate_s[7][2]} {PLxB.ImGenxB.imag_00_generate_s[7][3]} {PLxB.ImGenxB.imag_00_generate_s[7][4]} {PLxB.ImGenxB.imag_00_generate_s[7][5]} {PLxB.ImGenxB.imag_00_generate_s[7][6]} {PLxB.ImGenxB.imag_00_generate_s[7][7]} {PLxB.ImGenxB.imag_00_generate_s[7][8]} {PLxB.ImGenxB.imag_00_generate_s[7][9]} {PLxB.ImGenxB.imag_00_generate_s[7][10]} {PLxB.ImGenxB.imag_00_generate_s[7][11]} {PLxB.ImGenxB.imag_00_generate_s[7][12]} {PLxB.ImGenxB.imag_00_generate_s[7][13]} {PLxB.ImGenxB.imag_00_generate_s[7][14]} {PLxB.ImGenxB.imag_00_generate_s[7][15]} {PLxB.ImGenxB.imag_00_generate_s[7][16]} {PLxB.ImGenxB.imag_00_generate_s[7][17]}]]

connect_debug_port u_ila_0/probe2 [get_nets [list {PLxB.ImGenxB.imag_00_generate_s[2][0]} {PLxB.ImGenxB.imag_00_generate_s[2][1]} {PLxB.ImGenxB.imag_00_generate_s[2][2]} {PLxB.ImGenxB.imag_00_generate_s[2][3]} {PLxB.ImGenxB.imag_00_generate_s[2][4]} {PLxB.ImGenxB.imag_00_generate_s[2][5]} {PLxB.ImGenxB.imag_00_generate_s[2][6]} {PLxB.ImGenxB.imag_00_generate_s[2][7]} {PLxB.ImGenxB.imag_00_generate_s[2][8]} {PLxB.ImGenxB.imag_00_generate_s[2][9]} {PLxB.ImGenxB.imag_00_generate_s[2][10]} {PLxB.ImGenxB.imag_00_generate_s[2][11]} {PLxB.ImGenxB.imag_00_generate_s[2][12]} {PLxB.ImGenxB.imag_00_generate_s[2][13]} {PLxB.ImGenxB.imag_00_generate_s[2][14]} {PLxB.ImGenxB.imag_00_generate_s[2][15]} {PLxB.ImGenxB.imag_00_generate_s[2][16]} {PLxB.ImGenxB.imag_00_generate_s[2][17]}]]
connect_debug_port u_ila_0/probe3 [get_nets [list {PLxB.ImGenxB.imag_00_generate_s[3][0]} {PLxB.ImGenxB.imag_00_generate_s[3][1]} {PLxB.ImGenxB.imag_00_generate_s[3][2]} {PLxB.ImGenxB.imag_00_generate_s[3][3]} {PLxB.ImGenxB.imag_00_generate_s[3][4]} {PLxB.ImGenxB.imag_00_generate_s[3][5]} {PLxB.ImGenxB.imag_00_generate_s[3][6]} {PLxB.ImGenxB.imag_00_generate_s[3][7]} {PLxB.ImGenxB.imag_00_generate_s[3][8]} {PLxB.ImGenxB.imag_00_generate_s[3][9]} {PLxB.ImGenxB.imag_00_generate_s[3][10]} {PLxB.ImGenxB.imag_00_generate_s[3][11]} {PLxB.ImGenxB.imag_00_generate_s[3][12]} {PLxB.ImGenxB.imag_00_generate_s[3][13]} {PLxB.ImGenxB.imag_00_generate_s[3][14]} {PLxB.ImGenxB.imag_00_generate_s[3][15]} {PLxB.ImGenxB.imag_00_generate_s[3][16]} {PLxB.ImGenxB.imag_00_generate_s[3][17]}]]

set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets Clk125xC]
