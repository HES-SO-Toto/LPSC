// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue May  7 19:38:30 2024
// Host        : DESKTOP-BKSE7R5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/scalp_revc_windows/scalp_zynqps/ip/scalp_zynqps_clk_wiz_0_0/scalp_zynqps_clk_wiz_0_0_stub.v
// Design      : scalp_zynqps_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module scalp_zynqps_clk_wiz_0_0(clk_out1, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="reset,locked,clk_in1" */
/* synthesis syn_force_seq_prim="clk_out1" */;
  output clk_out1 /* synthesis syn_isclock = 1 */;
  input reset;
  output locked;
  input clk_in1;
endmodule