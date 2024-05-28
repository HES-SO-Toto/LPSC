
--  Xilinx Simple Dual Port 2 Clock RAM with Byte-write
--  This code implements a parameterizable SDP dual clock memory.
--  If a reset or enable is not necessary, it may be tied off or removed from the code.

-- Following libraries have to be used
library IEEE;
use IEEE.std_logic_1164.all;
use std.textio.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;


library scalp_lib;
use scalp_lib.user_pkg.all;

entity bram is
generic (
    C_RAM_WIDTH : integer := 3;            		-- Specify RAM data width
    C_RAM_DEPTH : integer := 518400 				        -- Specify RAM depth (number of entries)
);
port(
    clka : in std_logic;
    clkb : in std_logic;
    ena : in std_logic;
    enb : in std_logic;
    rstb : in std_logic;
    regceb : in std_logic;
    wea : in std_logic_vector(0 downto 0);
    addra : in  std_logic_vector((clogb2(C_RAM_DEPTH)) downto 0); 
    addrb : in std_logic_vector((clogb2(C_RAM_DEPTH)) downto 0);
    dia : in std_logic_vector(C_RAM_WIDTH-1 downto 0);
    dob : out std_logic_vector(C_RAM_WIDTH-1 downto 0)
);
end bram;

architecture syn of bram is

    signal dob_reg : std_logic_vector((C_NB_COL*C_RAM_WIDTH)-1 downto 0) := (others => '0');
    type ram_type is array (C_RAM_DEPTH-1 downto 0) of std_logic_vector ((C_NB_COL*C_RAM_WIDTH)-1 downto 0);          -- 2D Array Declaration for RAM signal
    signal bram_data : std_logic_vector((C_NB_COL*C_RAM_WIDTH)-1 downto 0) ;

    -- The folowing code either initializes the memory values to a specified file or to all zeros to match hardware

    function initramfromfile (ramfilename : in string) return ram_type is
    file ramfile	: text is in ramfilename;
    variable ramfileline : line;
    variable ram_name	: ram_type;
    variable bitvec : bit_vector((C_NB_COL*C_RAM_WIDTH)-1 downto 0);
    begin
        for i in ram_type'range loop
            readline (ramfile, ramfileline);
            read (ramfileline, bitvec);
            ram_name(i) := to_stdlogicvector(bitvec);
        end loop;
        return ram_name;
    end function;

    function init_from_file_or_zeroes(ramfile : string) return ram_type is
    begin
        if ramfile = "<Init File Name>" then
            return InitRamFromFile("<Init File Name>") ;
        else
            return (others => (others => '0'));
        end if;
    end;
    -- Define RAM
    signal ram_name : ram_type := init_from_file_or_zeroes(C_INIT_FILE);
    begin 
    --Insert the following in the architecture after the begin keyword
    process(clkb)
    begin
        if(clkb'event and clkb = '1') then
            if(enb = '1') then
                bram_data <= ram_name(to_integer(unsigned(addrb)));
            end if;
        end if;
    end process;

    process(clka) begin
        if(clka'event and clka = '1') then
            for i in  0 to C_NB_COL-1 loop
                if(wea(i) = '1') then
                    ram_name(to_integer(unsigned(addra)))(((i+1)*C_RAM_WIDTH)-1 downto i*C_RAM_WIDTH) <= dia(((i+1)*C_RAM_WIDTH)-1 downto i*C_RAM_WIDTH);
                end if;
            end loop;
        end if;
    end process;

    --  Following code generates LOW_LATENCY (no output register)
    --  Following is a 1 clock cycle read latency at the cost of a longer clock-to-out timing
    no_output_register : if C_RAM_PERFORMANCE = "LOW_LATENCY" generate
    dob <= bram_data;
    end generate;

    --  Following code generates HIGH_PERFORMANCE (use output register)
    --  Following is a 2 clock cycle read latency with improved clock-to-out timing
    output_register : if C_RAM_PERFORMANCE = "HIGH_PERFORMANCE"  generate
    process(clkb)
    begin
        if(clkb'event and clkb = '1') then
            if(rstb = '0') then
                dob_reg <= (others => '0');
            elsif(regceb = '1') then
                dob_reg <= bram_data;
            end if;
        end if;
    end process;
    dob <= dob_reg;
    end generate;

end syn;
						
					