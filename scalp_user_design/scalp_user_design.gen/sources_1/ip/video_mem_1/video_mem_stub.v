// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue May  7 19:02:09 2024
// Host        : DESKTOP-BKSE7R5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top video_mem -prefix
//               video_mem_ video_mem_stub.v
// Design      : video_mem
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *)
module video_mem(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="ena,wea[0:0],addra[18:0],dina[3:0],enb,addrb[18:0],doutb[3:0]" */
/* synthesis syn_force_seq_prim="clka" */
/* synthesis syn_force_seq_prim="clkb" */;
  input clka /* synthesis syn_isclock = 1 */;
  input ena;
  input [0:0]wea;
  input [18:0]addra;
  input [3:0]dina;
  input clkb /* synthesis syn_isclock = 1 */;
  input enb;
  input [18:0]addrb;
  output [3:0]doutb;
endmodule
