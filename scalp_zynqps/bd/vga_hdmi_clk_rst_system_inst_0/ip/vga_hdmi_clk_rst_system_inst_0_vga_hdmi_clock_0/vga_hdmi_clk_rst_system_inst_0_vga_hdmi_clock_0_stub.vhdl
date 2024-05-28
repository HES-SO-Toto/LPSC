-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue May  7 17:51:01 2024
-- Host        : DESKTOP-BKSE7R5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0 -prefix
--               vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0_ vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0_stub.vhdl
-- Design      : vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0 is
  Port ( 
    clk_vga : out STD_LOGIC;
    clk_hdmi : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0;

architecture stub of vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_vga,clk_hdmi,resetn,locked,clk_in1";
begin
end;
