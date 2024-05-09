-------------------------------------------------------------------------------
-- HES-SO Master, projet du cours de LPSC 
--
-- File         : mandelbrot_seq.vhd
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

entity mandelbrot_seq is
generic ( 
    SIZE_PIXEL : integer := 12;
    COMMA : integer := 14; -- nombre de bits après la virgule
    SIZE : integer := 18;
    N_ITER : integer := 100
    );
port(
    clk_i : in std_logic;
    rst_i : in std_logic;
    data_ok_i : in std_logic;
    c_reel_i : in std_logic_vector(SIZE-1 downto 0);
    c_imag_i : in std_logic_vector(SIZE-1 downto 0);
    end_o : out std_logic;
    num_inter_o : out std_logic_vector(SIZE-1 downto 0)
);
end mandelbrot_seq;

architecture behave of mandelbrot_seq is
    -- Déclaration of the signals,components,types and procedures
    constant LAST_INDEX   : integer := COMMA; -- index of the last bit
    constant HIGH_IDX  : integer := LAST_INDEX+SIZE-1;
    constant FOUR : signed((2*SIZE-1) downto 0) := (2*COMMA+3 => '1', others => '0');
    -- Components (Nomenclature : name of the component + _c)
    -- Components
    -- Types (Nomenclature : name of the type + _t)
    type state_t is (INIT,CHARGING,CALCULING,VALID);
    -- exemple : type state_t is (idle, start, stop);
    signal state_fut_s,state_pres_s :state_t;
    -- Signals (Nomenclature : name of the signal + _s)

    signal power_z_reel_s : signed(2*SIZE-1 downto 0);
    signal power_z_im_s : signed(2*SIZE-1 downto 0);
    signal mult_z_reel_image_s : signed(2*SIZE-1 downto 0);
    signal power_z_real_minus_imag_s : signed(2*SIZE-1 downto 0);

    signal z_reel_fut_s : signed(SIZE-1 downto 0);
    signal z_imag_fut_s : signed(SIZE-1 downto 0);
    signal z_reel_pres_s : signed(SIZE-1 downto 0);
    signal z_imag_pres_s : signed(SIZE-1 downto 0);
    signal n_iter_fut_s : unsigned(SIZE-1 downto 0);
    signal n_iter_pres_s : unsigned(SIZE-1 downto 0);
    

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
    decode_state : process(all)
        variable end_v : std_logic ;
    begin
        z_reel_fut_s <= z_reel_pres_s;
        z_imag_fut_s <= z_imag_pres_s;
        n_iter_fut_s <= n_iter_pres_s;
        end_v := '0';
        end_o <= '0';
        state_fut_s <= state_pres_s;
        case state_pres_s is
            when INIT =>
                state_fut_s <= CHARGING;
                z_reel_fut_s       <= (others => '0');
                z_imag_fut_s       <= (others => '0');
                n_iter_fut_s       <= (others => '0');
            when CHARGING =>
                z_reel_fut_s <= signed(c_reel_i);
                z_imag_fut_s <= signed(c_imag_i);
                n_iter_fut_s <= (others => '0');
                if data_ok_i ='1' then
                    state_fut_s<= CALCULING;
                end if ;
            when CALCULING =>
                end_v := '1' when (n_iter_pres_s + 1 >= N_ITER) or (euclidean_distance_s >= FOUR) else '0'; 
                z_reel_fut_s <= power_z_real_minus_imag_s(HIGH_IDX downto LAST_INDEX) + signed(c_reel_i);
                z_imag_fut_s <= shift_left(mult_z_reel_image_s,1)(HIGH_IDX downto LAST_INDEX) + signed(c_imag_i);
                n_iter_fut_s <= n_iter_pres_s + 1;
                if end_v = '1' then 
                    state_fut_s <= VALID;
                end if;
            when VALID =>
                end_o <= '1';
                if data_ok_i = '0' then
                    state_fut_s <= CHARGING;
                end if;
            when others => state_fut_s <= INIT;
        end case;

    end process;
    process(clk_i, rst_i)
    begin
        if rst_i = '0' then
            z_reel_pres_s       <= (others => '0');
            z_imag_pres_s       <= (others => '0');
            n_iter_pres_s       <= (others => '0');
            state_pres_s        <= INIT;
        elsif rising_edge(clk_i) then
            state_pres_s        <=state_fut_s;
            z_reel_pres_s       <= z_reel_fut_s;
            z_imag_pres_s       <= z_imag_fut_s;
            n_iter_pres_s       <= n_iter_fut_s;
        end if;
    end process;
    -- Components instantiation 

    -- Arithmetic operations
    power_z_im_s <= (signed(z_imag_pres_s) * signed(z_imag_pres_s));
    power_z_reel_s <= (signed(z_reel_pres_s) * signed(z_reel_pres_s));
    mult_z_reel_image_s <= (signed(z_reel_pres_s)*signed(z_imag_pres_s));
    power_z_real_minus_imag_s <= (power_z_reel_s - power_z_im_s);
    -- Euclidean distance
    euclidean_distance_s <= power_z_reel_s + power_z_im_s;

    num_inter_o <= std_logic_vector(n_iter_pres_s);

end behave;