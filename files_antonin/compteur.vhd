-------------------------------------------------------------------------------
-- HES-SO Master, projet du cours de LPSC 
--
-- File         : compteur.vhd
-- Description  : The file contain a implementation of a counter
--                
--
-- Author       : Antonin Kenzi
-- Date         : 12.03.2024
-- Version      : 1.1
--
-- Dependencies :
--
--| Modifications |------------------------------------------------------------
-- Version   Author Date               Description
-- 1.0       AKI    12.03.2024          Creation of the file
-- 1.1       AKI    19.03.2024          Finish and tested
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
    generic (
        Nmax : integer := 720;
        Nbit : integer := 10
    );
    port(
        clock_i : in std_logic;
        incr_i : in std_logic;
        nreset_i : in std_logic;
        count_o : out std_logic_vector(Nbit downto 0);
        ovf_o : out std_logic
    );
end entity counter;

architecture behave of counter is
    -- Déclaration of the signals,components,types and procedures
    -- Components (Nomenclature : name of the component + _c)
    -- Types (Nomenclature : name of the type + _t)
    -- exemple : type state_t is (idle, start, stop);

    -- Signals (Nomenclature : name of the signal + _s)
    -- exemple : signal a : signed(N_bit-1 downto 0);
    signal count_pres_s, count_fut_s: std_logic_vector(Nbit downto 0);
    signal incr_old_s : std_logic;
    signal rising_edge_det_s : std_logic;
    signal ovf_s : std_logic;

    -- Procedures (Nomenclature : name of the procedure + _p)

begin
    -- Declarations
    -- Process
    rising_edge_det_s <= '1' when incr_old_s = '0' and incr_i = '1' else '0';
    count_fut_s <= std_logic_vector(unsigned(count_pres_s)+1) when rising_edge_det_s = '1' and ovf_s = '0' else
                   (others => '0') when rising_edge_det_s = '1' and ovf_s = '1' else
                   count_pres_s;
    
    
    process(clock_i,nreset_i)
    begin
        if nreset_i='0' then
            count_pres_s <= (others => '0');
        elsif rising_edge(clock_i) then
            incr_old_s <= incr_i;
            count_pres_s <= count_fut_s;
        end if; 
    end process;
    
    ovf_s <= '1' when unsigned(count_pres_s) >= Nmax-1 else '0';
        -- sorties 
    ovf_o <= ovf_s;
    count_o <= count_pres_s;

end behave;