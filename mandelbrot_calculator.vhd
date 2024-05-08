-------------------------------------------------------------------------------
-- HES-SO Master, projet du cours de LPSC 
--
-- File         : mandelbrot_calculator.vhd
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
-- 1.1       AKI    25.04.2024           Add pipeline
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mandelbrot_calculator is
generic ( 
    SIZE_PIXEL : integer := 10;
    COMMA : integer := 12; -- nombre de bits après la virgule
    MAX_ITER : integer := 100;
    SIZE : integer := 16);
port(
    clk : in std_logic;
    rst : in std_logic;
    start : in std_logic;
    pixel_x_i : in std_logic_vector(SIZE_PIXEL-1 downto 0);
    pixel_y_i : in std_logic_vector(SIZE_PIXEL-1 downto 0);
    c_real : in std_logic_vector(SIZE-1 downto 0);
    c_imaginary : in std_logic_vector(SIZE-1 downto 0);
    
    pixel_x_o : out std_logic_vector(SIZE_PIXEL-1 downto 0);
    pixel_y_o : out std_logic_vector(SIZE_PIXEL-1 downto 0);
    ready : out std_logic;
    finished : out std_logic;
    iterations : out std_logic_vector(SIZE-1 downto 0)
);
end mandelbrot_calculator;

architecture pipeline of mandelbrot_calculator is
    -- Déclaration of the signals,components,types and procedures
    -- Components (Nomenclature : name of the component + _c)
    -- Components
    component mandelbrot_inter is
        generic ( 
            SIZE_PIXEL : integer := 12;
            COMMA : integer := 12; -- nombre de bits après la virgule
            SIZE : integer := 16);
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
    end component;
    -- Types (Nomenclature : name of the type + _t)
    -- exemple : type state_t is (idle, start, stop);
    type pipeline_t is array(0 to MAX_ITER) of std_logic_vector(SIZE-1 downto 0);
    type pipeline_pixel_t is array(0 to MAX_ITER) of std_logic_vector(SIZE_PIXEL-1 downto 0);
    type pipeline_bool_t is array(0 to MAX_ITER) of std_logic;
    
    -- Signals (Nomenclature : name of the signal + _s)
    -- exemple : signal a : signed(N_bit-1 downto 0);
    signal end_s : std_logic_vector(MAX_ITER downto 0);
    signal data_ok_s : std_logic_vector(MAX_ITER downto 0);
    signal pixel_x_s : pipeline_pixel_t;
    signal pixel_y_s : pipeline_pixel_t;
    signal c_reel_s : pipeline_t;
    signal c_imag_s : pipeline_t;
    signal z_reel_s : pipeline_t;
    signal z_imag_s : pipeline_t;
    signal num_inter_s : pipeline_t; -- need less but DSP on 16 bits
    -- Procedures (Nomenclature : name of the procedure + _p)

begin
    -- Description of the behavior of the entity
    -- Initialisation of the signals
    c_reel_s(0)     <= c_real;
    c_imag_s(0)     <= c_imaginary;
    z_reel_s(0)     <= (others => '0');
    z_imag_s(0)     <= (others => '0');
    num_inter_s(0)  <= (others => '0');
    pixel_x_s(0)    <= pixel_x_i;
    pixel_y_s(0)    <= pixel_y_i;
    end_s(0)        <= '0';
    data_ok_s(0)    <= start;

    -- Declarations
    -- Process
    -- Components instantiation 
    pipeline_generator : for i in 0 to MAX_ITER - 1 generate
        mandelbrot_stage : mandelbrot_inter
        generic map(
            SIZE_PIXEL => SIZE_PIXEL,
            COMMA       => COMMA,
            SIZE        => SIZE
        )
        port map(
            clk_i           => clk,
            rst_i           => rst,
            end_i           => end_s(i),
            data_ok_i       => data_ok_s(i),
            pixel_x_i       => pixel_x_s(i),
            pixel_y_i       => pixel_y_s(i),
            c_reel_i        => c_reel_s(i),
            c_imag_i        => c_imag_s(i),
            z_reel_i        => z_reel_s(i),
            z_imag_i        => z_imag_s(i),
            num_inter_i     => num_inter_s(i),
            c_reel_o        => c_reel_s(i+1),
            c_imag_o        => c_imag_s(i+1),
            z_reel_o        => z_reel_s(i+1),
            z_imag_o        => z_imag_s(i+1),
            pixel_x_o       => pixel_x_s(i+1),
            pixel_y_o       => pixel_y_s(i+1),
            num_inter_o     => num_inter_s(i+1),
            end_o           => end_s(i+1),
            data_ok_o       => data_ok_s(i+1)
        );
    end generate;

    -- sorties
    ready <= '1'; -- always ready because we have a pipeline
    finished <= end_s(MAX_ITER);
    iterations <= num_inter_s(MAX_ITER);
    pixel_x_o <= pixel_x_s(MAX_ITER);
    pixel_y_o <= pixel_y_s(MAX_ITER);
    
end pipeline;