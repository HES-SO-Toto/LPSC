-------------------------------------------------------------------------------
-- HES-SO Master, projet du cours de LPSC 
--
-- File         : top.vhd
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

entity top is
    generic (
        SIZE_PIXEL : integer := 12;
        COMMA : integer := 14;
        DATASIZE : integer := 18;
        N_ITER : integer := 100;
        SIZE_ITER : integer := 7;
        SCREEN_X_SIZE : integer := 720;
        SCREEN_Y_SIZE : integer := 720
    );
    port(
        clk_i : in std_logic;
        nreset_i : in std_logic;
        start_i : in std_logic;
        real_00_i : in std_logic_vector(DATASIZE-1 downto 0);
        imag_00_i : in std_logic_vector(DATASIZE-1 downto 0);
        step_i : in std_logic_vector(DATASIZE-1 downto 0);  -- size step 
        pixel_x_o : out std_logic_vector(SIZE_PIXEL-1 downto 0);
        pixel_y_o : out std_logic_vector(SIZE_PIXEL-1 downto 0);
        interations_o : out std_logic_vector(SIZE_ITER-1 downto 0);
        finished_o : out std_logic
    );
end entity top;

architecture behave of top is
    constant MINUS_TWO_FIXED : std_logic_vector(DATASIZE-1 downto 0):= "111000000000000000";
    constant HALF_ONE_FIXED : std_logic_vector(DATASIZE-1 downto 0):= "000110000000000000";
    constant STEP_VALUE : std_logic_vector(DATASIZE-1 downto 0):= "000000000001000100";
    -- Declaration of the signals,components,types and procedures
    component mandelbrot_seq is
    generic ( 
        COMMA : integer := COMMA;
        SIZE : integer := DATASIZE;
        N_ITER : integer := N_ITER;
        SIZE_ITER : integer := SIZE_ITER
        );
    port(
        clk_i : in std_logic;
        nreset_i : in std_logic;
        data_ok_i : in std_logic;
        c_reel_i : in std_logic_vector(SIZE-1 downto 0);
        c_imag_i : in std_logic_vector(SIZE-1 downto 0);
        end_o : out std_logic;
        num_inter_o : out std_logic_vector(SIZE_ITER-1 downto 0)
    );
    end component mandelbrot_seq;

    component calc_complex is
        generic (
            DATASIZE : integer := DATASIZE;
            SIZE_PIXEL : integer := SIZE_PIXEL;
            X : integer := SCREEN_X_SIZE;
            Y : integer := SCREEN_Y_SIZE
        );
        port(
            real_00_i : in std_logic_vector(DATASIZE-1 downto 0); -- real. pos 0,0
            imag_00_i : in std_logic_vector(DATASIZE-1 downto 0); -- imag. pos 0,0
            step_i : in std_logic_vector(DATASIZE-1 downto 0);  -- size step 

            next_i : in std_logic; -- next pixel
            clk_i : in std_logic; -- clock
            nreset_i : in std_logic; -- reset

            pixel_x_o : out std_logic_vector(SIZE_PIXEL-1 downto 0);-- x position out
            pixel_y_o : out std_logic_vector(SIZE_PIXEL-1 downto 0); -- y position out

            real_n_o : out std_logic_vector(DATASIZE-1 downto 0); -- real out
            imag_n_o : out std_logic_vector(DATASIZE-1 downto 0) -- imag out
            
        );
    end component;
    -- Types (Nomenclature : name of the type + _t)
    -- exemple : type state_t is (idle, start, stop);
    type state_t is (IDLE,STARTING,CALCULING,VALID);
    signal state_fut_s,state_pres_s :state_t;

    -- Signals (Nomenclature : name of the signal + _s)
    -- exemple : signal a : signed(N_bit-1 downto 0);
    signal c_real_s, c_imaginary_s: std_logic_vector(DATASIZE-1 downto 0);
    signal pixel_x_s, pixel_y_s: std_logic_vector(SIZE_PIXEL-1 downto 0);
    signal iterations_s : std_logic_vector(SIZE_ITER-1 downto 0);
    signal valid_s : std_logic;
    signal finished_s : std_logic;
    signal incr_s : std_logic;
    -- Procedures (Nomenclature : name of the procedure + _p)

begin
     decode_state : process(all)
        variable end_v : std_logic ;
    begin
        state_fut_s <= state_pres_s;
        incr_s <= '0';
        finished_o <= '0';
        valid_s <= '0';
        case state_pres_s is
            when IDLE =>
                if start_i ='1' then
                    state_fut_s <= STARTING;
                end if ;
            when STARTING =>
                state_fut_s<= CALCULING;
                incr_s <= '1';
            when CALCULING =>
                valid_s <= '1';
                if finished_s = '1' then 
                    state_fut_s <= VALID;
                end if;
            when VALID =>
                valid_s <= '1';
                finished_o <= '1';
                if start_i = '0' then
                    state_fut_s <= IDLE;
                end if;
            when others => state_fut_s <= IDLE;
        end case;

    end process;
    process(clk_i, nreset_i)
    begin
        if nreset_i = '0' then
            state_pres_s <= IDLE;
        elsif rising_edge(clk_i) then
            state_pres_s        <=state_fut_s;
        end if;
    end process;
    -- Declarations
    mandelbrot_seq_inst : mandelbrot_seq
    generic map( 
        COMMA => COMMA,
        SIZE => DATASIZE,
        N_ITER => N_ITER,
        SIZE_ITER => SIZE_ITER
    )
    port map (
        clk_i => clk_i,
        nreset_i => nreset_i,
        data_ok_i => valid_s,
        c_reel_i => c_real_s,
        c_imag_i => c_imaginary_s,
        end_o => finished_s,
        num_inter_o => iterations_s
    );

    calc_complex_c : calc_complex
        generic map(
            DATASIZE => DATASIZE,
            SIZE_PIXEL => SIZE_PIXEL,
            X => SCREEN_X_SIZE,
            Y => SCREEN_Y_SIZE
        )
        port map (
            real_00_i => real_00_i, -- real. pos 0,0
            imag_00_i => imag_00_i, -- imag. pos 0,0
            step_i => step_i,  -- size step

            next_i => incr_s, -- next pixel 
            clk_i => clk_i, -- clock
            nreset_i => nreset_i, -- reset

            pixel_x_o => pixel_x_s,-- x position out
            pixel_y_o => pixel_y_s, -- y position out

            real_n_o => c_real_s, -- real out
            imag_n_o => c_imaginary_s -- imag out
        );
    -- Process
    pixel_x_o <= pixel_x_s;
    pixel_y_o <= pixel_y_s;
    interations_o <= iterations_s;

end behave;