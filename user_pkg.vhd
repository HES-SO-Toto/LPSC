library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- use ieee.std_logic_unsigned.all;
-- use ieee.std_logic_arith.all;
-- use ieee.std_logic_misc.all;

package user_pkg is
    function clogb2( depth : natural) return integer;
    
    constant C_NB_COL : integer := 1;            		-- Specify number of colums (number of bytes)
    constant C_RAM_PERFORMANCE : string := "LOW_LATENCY"; 		 -- Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
    constant C_INIT_FILE : string := "";    				 -- Specify name/location of RAM initialization file if using one (leave blank if not)
end user_pkg;

package body user_pkg is
        function clogb2( depth : natural) return integer is
    variable temp    : integer := depth;
    variable ret_val : integer := 0;
    begin
        while temp > 1 loop
            ret_val := ret_val + 1;
            temp    := temp / 2;
        end loop;
        return ret_val;
    end function;
end user_pkg;