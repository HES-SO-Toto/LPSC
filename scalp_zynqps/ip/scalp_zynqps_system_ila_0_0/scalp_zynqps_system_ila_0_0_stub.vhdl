-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue May  7 17:53:39 2024
-- Host        : DESKTOP-BKSE7R5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top scalp_zynqps_system_ila_0_0 -prefix
--               scalp_zynqps_system_ila_0_0_ scalp_zynqps_system_ila_0_0_stub.vhdl
-- Design      : scalp_zynqps_system_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity scalp_zynqps_system_ila_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );

end scalp_zynqps_system_ila_0_0;

architecture stub of scalp_zynqps_system_ila_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[0:0],probe1[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "bd_c0d9,Vivado 2023.2";
begin
end;
