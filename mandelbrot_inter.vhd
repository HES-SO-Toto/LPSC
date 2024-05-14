-------------------------------------------------------------------------------
-- HES-SO Master, projet du cours de LPSC 
--
-- File         : mandelbrot_inter.vhd
-- Description  : The file contain a implementation of a mandelbrot calculator
--                in VHDL.
--
-- Author       : Antonin Kenzi
-- Date         : 23.03.2024
-- Version      : 1.0
--
-- Dependencies :
--
--| Modifications |------------------------------------------------------------
-- Version   Author Date               Description
-- 1.0       AKI    23.03.2024           Creation of the file
--
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mandelbrot_inter is
generic ( 
    SIZE_PIXEL : integer := 12;
    COMMA : integer := 14; -- nombre de bits après la virgule
    SIZE : integer := 18;
    N_ITER : integer := 9
    );
port(
    clk_i : in std_logic;
    rst_i : in std_logic;
    end_i : in std_logic;
    data_ok_i : in std_logic;
    pixel_x_i : in std_logic_vector(SIZE_PIXEL-1 downto 0);
    pixel_y_i : in std_logic_vector(SIZE_PIXEL-1 downto 0);
    c_reel_i : in std_logic_vector(SIZE-1 downto 0);
    c_imag_i : in std_logic_vector(SIZE-1 downto 0);
    z_reel_i : in std_logic_vector(SIZE-1 downto 0);
    z_imag_i : in std_logic_vector(SIZE-1 downto 0);
    num_inter_i : in std_logic_vector(SIZE-1 downto 0);
    end_o : out std_logic;
    data_ok_o : out std_logic;
    pixel_x_o : out std_logic_vector(SIZE_PIXEL-1 downto 0);
    pixel_y_o : out std_logic_vector(SIZE_PIXEL-1 downto 0);
    c_reel_o : out std_logic_vector(SIZE-1 downto 0);
    c_imag_o : out std_logic_vector(SIZE-1 downto 0);
    z_reel_o : out std_logic_vector(SIZE-1 downto 0);
    z_imag_o : out std_logic_vector(SIZE-1 downto 0);
    num_inter_o : out std_logic_vector(SIZE-1 downto 0)
);
end mandelbrot_inter;

architecture behave of mandelbrot_inter is
    -- Déclaration of the signals,components,types and procedures
    constant LAST_INDEX   : integer := COMMA; -- index of the last bit
    constant HIGH_IDX  : integer := LAST_INDEX+SIZE-1;
    constant FOUR : signed((2*SIZE-1) downto 0) := (2*COMMA+3 => '1', others => '0');
    -- Components (Nomenclature : name of the component + _c)
    -- Components
    -- Types (Nomenclature : name of the type + _t)
    -- exemple : type state_t is (idle, start, stop);
    -- Signals (Nomenclature : name of the signal + _s)
    signal diverge_s : std_logic;
    signal end_s : std_logic;
    signal end_fut_s : std_logic;

    signal power_z_reel_s : signed(2*SIZE-1 downto 0);
    signal power_z_im_s : signed(2*SIZE-1 downto 0);
    signal mult_z_reel_image_s : signed(2*SIZE-1 downto 0);
    signal power_z_real_minus_imag_s : signed(2*SIZE-1 downto 0);

    signal z_real_fut_s : signed(SIZE-1 downto 0);
    signal z_imag_fut_s : signed(SIZE-1 downto 0);
    signal num_inter_fut_s : unsigned(SIZE-1 downto 0);


    signal euclidean_distance_s : signed(2*SIZE-1 downto 0);

    -- exemple : signal a : signed(N_bit-1 downto 0);
    -- Procedures (Nomenclature : name of the procedure + _p)
    
    -- Attribute :
    attribute USE_DSP : STRING ;
    attribute USE_DSP of power_z_reel_s : signal is "YES";
    attribute USE_DSP of power_z_im_s : signal is "YES";
    attribute USE_DSP of mult_z_reel_image_s : signal is "YES";
    attribute USE_DSP of power_z_real_minus_imag_s : signal is "YES";

begin
    -- Description of the behavior of the entity

    -- Declarations

    -- Process
    process(clk_i, rst_i)
    begin
        if rst_i = '0' then
            end_o               <= '0';
            z_reel_o            <= (others => '0');
            z_imag_o            <= (others => '0');
            c_reel_o            <= (others => '0');
            c_imag_o            <= (others => '0');
            num_inter_o         <= (others => '0');
            pixel_x_o           <= (others => '0');
            pixel_y_o           <= (others => '0');
            data_ok_o           <= '0';
        elsif rising_edge(clk_i) then
            end_o               <= end_fut_s;
            z_reel_o            <= std_logic_vector(z_real_fut_s);
            z_imag_o            <= std_logic_vector(z_imag_fut_s);
            c_reel_o            <= c_reel_i;
            c_imag_o            <= c_imag_i;
            data_ok_o           <= data_ok_i;
            pixel_x_o           <= pixel_x_i;
            pixel_y_o           <= pixel_y_i;
            num_inter_o         <= std_logic_vector(num_inter_fut_s);
        end if;
    end process;
    -- Components instantiation 

    -- Arithmetic operations
    power_z_im_s <= (signed(z_imag_i) * signed(z_imag_i));
    power_z_reel_s <= (signed(z_reel_i) * signed(z_reel_i));
    mult_z_reel_image_s <= (signed(z_reel_i)*signed(z_imag_i));
    power_z_real_minus_imag_s <= (power_z_reel_s - power_z_im_s);
    -- Euclidean distance
    euclidean_distance_s <= power_z_reel_s + power_z_im_s;
    diverge_s <= '1' when euclidean_distance_s >= FOUR else '0';
    end_s <= '1' when (unsigned(num_inter_i) + 1) >= N_ITER else '0';
    -- Next state
    z_real_fut_s <= power_z_real_minus_imag_s(HIGH_IDX downto LAST_INDEX) + signed(c_reel_i);
    z_imag_fut_s <= shift_left(mult_z_reel_image_s,1)(HIGH_IDX downto LAST_INDEX) + signed(c_imag_i);
    num_inter_fut_s <= unsigned(num_inter_i) + 1 when end_fut_s='0' else unsigned(num_inter_i);

    -- Divergence
    end_fut_s <= '1' when (diverge_s = '1') or (end_s ='1') or (end_i = '1')else '0';

end behave;