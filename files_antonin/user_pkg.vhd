library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- use ieee.std_logic_unsigned.all;
-- use ieee.std_logic_arith.all;
-- use ieee.std_logic_misc.all;

package user_pkg is
    constant C_NB_COL : integer := 1;            		-- Specify number of colums (number of bytes)
    constant C_RAM_PERFORMANCE : string := "LOW_LATENCY"; 		 -- Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
    constant C_INIT_FILE : string := "";    				 -- Specify name/location of RAM initialization file if using one (leave blank if not)
   
    
    constant DATASIZE  : integer range 0 to 18 :=18;
    constant COMMA  : integer range 0 to DATASIZE-3 :=14;
    constant N_ITER  : integer range 0 to 100 :=100;
    constant NB_TOP  : integer range 0 to 16 :=16 ;
    constant SIZE_ITER  : integer range 0 to 7 :=7;
    constant SIZE_PIXEL_MAX : integer := 9;
    constant SCREEN_X : integer := 720;
    constant SCREEN_Y : integer := 720;
    constant Y_INTERVAL_TOTAL : std_logic_vector(DATASIZE-1 downto 0):= "001000000000000000";
    constant ONE_FIXED : std_logic_vector(DATASIZE-1 downto 0)      := "000100000000000000";
    constant MINUS_TWO_FIXED : std_logic_vector(DATASIZE-1 downto 0):= "111000000000000000";
    constant MINUS_ONE_FIXED : std_logic_vector(DATASIZE-1 downto 0):= "111100000000000000";
    constant STEP_X_VALUE : std_logic_vector(DATASIZE-1 downto 0):= "000000000000111001";
    constant STEP_Y_VALUE : std_logic_vector(DATASIZE-1 downto 0):= "000000000000101110";
    
    constant LAST_INDEX   : integer := COMMA; -- index of the last bit
    constant HIGH_INDEX  : integer := LAST_INDEX+DATASIZE-1;
    
    function clogb2( depth : natural) return integer;
    function real_stage_value(index : natural) return std_logic_vector;
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
    function real_stage_value( index : natural) return std_logic_vector is 
    
    variable interval_s : unsigned(DATASIZE-1 downto 0):=(others=>'0');
    variable interval : unsigned(DATASIZE-1 downto 0):=(others=>'0');
    variable Align_index : unsigned(DATASIZE-1 downto 0):=(others=>'0');
    variable inter_full : unsigned(2*DATASIZE-1 downto 0);
    variable new_value : std_logic_vector(DATASIZE-1 downto 0);
    
    begin
        interval_s      := unsigned(Y_INTERVAL_TOTAL);
        interval        := shift_right(interval_s,clogb2(NB_TOP));
        Align_index(DATASIZE-1 downto Comma) := to_unsigned(index,DATASIZE-Comma);
        inter_full := interval * Align_index;
        new_value       := std_logic_vector(unsigned(ONE_FIXED) - inter_full(HIGH_INDEX downto LAST_INDEX));
        return new_value(DATASIZE-1 downto 0);
    end function;
end user_pkg;