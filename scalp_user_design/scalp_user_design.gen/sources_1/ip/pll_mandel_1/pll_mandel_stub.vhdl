-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue May 14 18:16:52 2024
-- Host        : DESKTOP-BKSE7R5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/mandelbrot/scalp_user_design/scalp_user_design.gen/sources_1/ip/pll_mandel_1/pll_mandel_stub.vhdl
-- Design      : pll_mandel
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pll_mandel is
  Port ( 
    clock_mandel : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clock_125 : in STD_LOGIC
  );

end pll_mandel;

architecture stub of pll_mandel is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clock_mandel,resetn,locked,clock_125";
begin
end;
