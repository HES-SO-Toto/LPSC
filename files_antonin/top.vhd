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


library scalp_lib;
use scalp_lib.user_pkg.all;

entity top is
    generic (
        SIZE_PIXEL : integer := 12;
        COMMA : integer := 14;
        DATASIZE : integer := 18;
        N_ITER : integer := 100;
        SIZE_ITER : integer := 7;
        SCREEN_X_SIZE : integer := 720;
        SCREEN_Y_SIZE : integer := 720;
        C_RAM_WIDTH : integer := 4          		-- Specify RAM data width
    );
    port(
        clka_i : in std_logic;
        clkb_i : in std_logic;

        nreset_i : in std_logic;

        real_00_i : in std_logic_vector(DATASIZE-1 downto 0);
        imag_00_i : in std_logic_vector(DATASIZE-1 downto 0);

        step_x_i : in std_logic_vector(DATASIZE-1 downto 0);  -- size step 
        step_y_i : in std_logic_vector(DATASIZE-1 downto 0);  -- size step 
        read_addr : in  std_logic_vector(clogb2(SCREEN_X_SIZE)+clogb2(SCREEN_Y_SIZE) downto 0); 
        pixel_o : out std_logic_vector(C_RAM_WIDTH-1 downto 0)
    );
end entity top;

architecture behave of top is
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
            step_x_i : in std_logic_vector(DATASIZE-1 downto 0);  -- size step 
            step_y_i : in std_logic_vector(DATASIZE-1 downto 0);  -- size step 

            next_i : in std_logic; -- next pixel
            clk_i : in std_logic; -- clock
            nreset_i : in std_logic; -- reset

            pixel_x_o : out std_logic_vector(clogb2(X) downto 0);-- x position out
            pixel_y_o : out std_logic_vector(clogb2(X) downto 0); -- y position out

            real_n_o : out std_logic_vector(DATASIZE-1 downto 0); -- real out
            imag_n_o : out std_logic_vector(DATASIZE-1 downto 0) -- imag out
            
        );
    end component;
    component Bram is
        generic (
            C_RAM_WIDTH : integer := C_RAM_WIDTH;            		-- Specify RAM data width
            C_RAM_DEPTH : integer := SCREEN_Y_SIZE*SCREEN_X_SIZE 	-- Specify RAM depth (number of entries)
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
    end component Bram;

    -- Types (Nomenclature : name of the type + _t)
    -- exemple : type state_t is (idle, start, stop);
    type state_t is (IDLE,STARTING,CALCULING,VALID);
    signal state_fut_s,state_pres_s :state_t;

    -- Signals (Nomenclature : name of the signal + _s)
    -- exemple : signal a : signed(N_bit-1 downto 0);
    signal c_real_s, c_imaginary_s: std_logic_vector(DATASIZE-1 downto 0);
    signal pixel_x_s: std_logic_vector(clogb2(SCREEN_X_SIZE) downto 0);
    signal pixel_y_s: std_logic_vector(clogb2(SCREEN_X_SIZE) downto 0);
    signal iterations_s : std_logic_vector(SIZE_ITER-1 downto 0);
    signal write_ena_s : std_logic_vector(0 downto 0);
    signal mandel_addr_s : std_logic_vector(pixel_y_s'high+pixel_x_s'high+1 downto 0);
    signal valid_s : std_logic;
    signal finished_s : std_logic;
    signal incr_s : std_logic;
    signal start_s : std_logic;
    -- Procedures (Nomenclature : name of the procedure + _p)
    
    attribute mark_debug : string;
    attribute keep       : string;
    
    attribute mark_debug of mandel_addr_s : signal is "true";
    attribute keep of mandel_addr_s       : signal is "true";
    attribute mark_debug of pixel_x_s : signal is "true";
    attribute keep of pixel_x_s       : signal is "true";
    attribute mark_debug of pixel_y_s : signal is "true";
    attribute keep of pixel_y_s       : signal is "true";

begin
     decode_state : process(all)
        variable end_v : std_logic ;
    begin
        state_fut_s <= state_pres_s;
        incr_s <= '0';
        valid_s <= '0';
        case state_pres_s is
            when IDLE =>
                if start_s ='1' then
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
                if start_s = '0' then
                    state_fut_s <= IDLE;
                end if;
            when others => state_fut_s <= IDLE;
        end case;

    end process;
    process(clka_i, nreset_i)
    begin
        if nreset_i = '0' then
            state_pres_s <= IDLE;
        elsif rising_edge(clka_i) then
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
        clk_i => clka_i,
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
            step_x_i => step_x_i,  -- size step
            step_y_i => step_y_i,  -- size step

            next_i => incr_s, -- next pixel 
            clk_i => clka_i, -- clock
            nreset_i => nreset_i, -- reset

            pixel_x_o => pixel_x_s,-- x position out
            pixel_y_o => pixel_y_s, -- y position out

            real_n_o => c_real_s, -- real out
            imag_n_o => c_imaginary_s -- imag out
        );
        start_s <= '0' when finished_s = '1' else '1';
        mandel_addr_s <= std_logic_vector(unsigned(pixel_y_s)*SCREEN_X_SIZE +unsigned(pixel_x_s));
        write_ena_s <= "1" when finished_s = '1' else "0";
    -- Bram
        my_Bram_inst : Bram
        generic map(
            C_RAM_WIDTH => 4,
            C_RAM_DEPTH =>SCREEN_Y_SIZE * SCREEN_X_SIZE
        )
        port map(
            clka => clka_i,
            clkb => clkb_i,
            addra => mandel_addr_s(mandel_addr_s'high-clogb2(NB_TOP)-1 downto 0),
            addrb => read_addr,
            dia => iterations_s(3 downto 0),
            ena => '1',
            wea => write_ena_s,
            enb => '1',
            dob => pixel_o,
            rstb => nreset_i,
            regceb => nreset_i
        );

end behave;