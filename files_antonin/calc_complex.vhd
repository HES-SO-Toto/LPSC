-------------------------------------------------------------------------------
-- HES-SO Master, projet du cours de LPSC 
--
-- File         : calc_complex.vhd
-- Description  : The file contain a implementation of a complex number calculator
--                in VHDL.
--
-- Author       : Antonin Kenzi
-- Date         : 12.03.2024
-- Version      : 1.1
--
-- Dependencies :
--
--| Modifications |------------------------------------------------------------
-- Version   Author Date               Description
-- 1.0       AKI    12.03.2024           Creation of the file
-- 1.1       AKI    19.03.2024           add counter and pkg 
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity calc_complex is
    generic (
        DATASIZE : integer := 18;
        SIZE_PIXEL : integer := 10;
        X : integer := 720;
        Y : integer := 720
    );
    port(
        real_00_i : in std_logic_vector(DATASIZE-1 downto 0); -- real. pos 0,0
        imag_00_i : in std_logic_vector(DATASIZE-1 downto 0); -- imag. pos 0,0
        step_x_i : in std_logic_vector(DATASIZE-1 downto 0);  -- size step 
        step_y_i : in std_logic_vector(DATASIZE-1 downto 0);  -- size step 

        next_i : in std_logic; -- next pixel
        clk_i : in std_logic; -- clock
        nreset_i : in std_logic; -- reset

        pixel_x_o : out std_logic_vector(SIZE_PIXEL-1 downto 0);-- x position out
        pixel_y_o : out std_logic_vector(SIZE_PIXEL-1 downto 0); -- y position out

        real_n_o : out std_logic_vector(DATASIZE-1 downto 0); -- real out
        imag_n_o : out std_logic_vector(DATASIZE-1 downto 0) -- imag out
    );
end entity calc_complex;

architecture behave of calc_complex is
    -- Déclaration of the signals,components,types and procedures
    -- Components (Nomenclature : name of the component + _c)

    -- Components
    component counter
        generic (
            Nmax : integer := X;
            Nbit : integer := SIZE_PIXEL
            );
        port (
            clock_i : in std_logic;
            incr_i : in std_logic;
            nreset_i : in std_logic;
            count_o : out std_logic_vector(Nbit-1 downto 0);
            ovf_o : out std_logic
        );
    end component;
    -- Types (Nomenclature : name of the type + _t)
    -- exemple : type state_t is (idle, start, stop);
    -- Signals (Nomenclature : name of the signal + _s)
    signal cnt_x_reg_s : std_logic_vector(SIZE_PIXEL-1 downto 0);
    signal cnt_y_reg_s : std_logic_vector(SIZE_PIXEL-1 downto 0);
    signal cnt_x_s : std_logic_vector(SIZE_PIXEL-1 downto 0);
    signal cnt_y_s : std_logic_vector(SIZE_PIXEL-1 downto 0);
    signal cnt_x_fut_s : std_logic_vector(SIZE_PIXEL-1 downto 0);
    signal cnt_y_fut_s : std_logic_vector(SIZE_PIXEL-1 downto 0);
    signal real_reg_s : std_logic_vector(DATASIZE-1 downto 0);
    signal imag_reg_s : std_logic_vector(DATASIZE-1 downto 0);
    signal z_real_fut_s : std_logic_vector(DATASIZE-1 downto 0);
    signal z_imag_fut_s : std_logic_vector(DATASIZE-1 downto 0);
    signal calc_z_real_s : std_logic_vector(SIZE_PIXEL+DATASIZE-1 downto 0);
    signal calc_z_imag_s : std_logic_vector(SIZE_PIXEL+DATASIZE-1 downto 0);
    signal ovf_counter_x_s,ovf_counter_y_s : std_logic;
    signal incr_s : std_logic;
    -- exemple : signal a : signed(N_bit-1 downto 0);
    -- Procedures (Nomenclature : name of the procedure + _p)

begin
    -- Description of the behavior of the entity

    -- Declarations

    -- Process
    process(clk_i,nreset_i)
    begin
        if nreset_i = '0' then
            cnt_x_reg_s <= (others => '0');
            cnt_y_reg_s <= (others => '0');
            real_reg_s <= (others => '0');
            imag_reg_s <= (others => '0');
        elsif rising_edge(clk_i) then
            cnt_x_reg_s <= cnt_x_fut_s;
            cnt_y_reg_s <= cnt_y_fut_s;
            real_reg_s <= z_real_fut_s;
            imag_reg_s <= z_imag_fut_s;
            incr_s <= next_i;
        end if;
    end process;
    -- Components instantiation 
    counter_x_c : counter
    generic map (
        Nmax => X,
        Nbit => SIZE_PIXEL
    )
    port map (
        clock_i => clk_i,
        incr_i  => incr_s,
        nreset_i  => nreset_i,
        count_o => cnt_x_s,
        ovf_o => ovf_counter_x_s
    );
    counter_y_c : counter
    generic map (
        Nmax => Y,
        Nbit => SIZE_PIXEL
    )
    port map (
        clock_i => clk_i,
        incr_i  => ovf_counter_x_s,
        nreset_i  => nreset_i,
        count_o => cnt_y_s,
        ovf_o => ovf_counter_y_s
    );
    calc_z_real_s <= std_logic_vector(unsigned(real_00_i) + (unsigned(step_x_i) * unsigned(cnt_x_s)));
    calc_z_imag_s <= std_logic_vector(unsigned(imag_00_i) - (unsigned(step_y_i) * unsigned(cnt_y_s)));
    -- sorties
    z_real_fut_s <= calc_z_real_s(DATASIZE-1 downto 0);
    z_imag_fut_s <= calc_z_imag_s(DATASIZE-1 downto 0);
    cnt_x_fut_s <= cnt_x_s;
    cnt_y_fut_s <= cnt_y_s;

    pixel_x_o <= cnt_x_reg_s;
    pixel_y_o <= cnt_y_reg_s;
    real_n_o <= real_reg_s;
    imag_n_o <= imag_reg_s;
    
end behave;