// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue May  7 17:51:01 2024
// Host        : DESKTOP-BKSE7R5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0 -prefix
//               vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0_ vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0_stub.v
// Design      : vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0(clk_vga, clk_hdmi, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="resetn,locked,clk_in1" */
/* synthesis syn_force_seq_prim="clk_vga" */
/* synthesis syn_force_seq_prim="clk_hdmi" */;
  output clk_vga /* synthesis syn_isclock = 1 */;
  output clk_hdmi /* synthesis syn_isclock = 1 */;
  input resetn;
  output locked;
  input clk_in1;
endmodule
