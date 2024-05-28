----------------------------------------------------------------------------------
--                                 _             _
--                                | |_  ___ _ __(_)__ _
--                                | ' \/ -_) '_ \ / _` |
--                                |_||_\___| .__/_\__,_|
--                                         |_|
--
----------------------------------------------------------------------------------
--
-- Company: hepia
-- Author: Joachim Schmidt <joachim.schmidt@hesge.ch>
--
-- Module Name: scalp_color_pkg - arch
-- Target Device: hepia-cores.ch:scalp_node:part0:0.2 xc7z015clg485-2
-- Tool version: 2023.2
-- Description: Package scalp_color_pkg
--
-- Last update: 2024-03-29
--
---------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- use ieee.math_real.all;
-- use ieee.math_real."ceil";
-- use ieee.math_real."log2";
-- use ieee.std_logic_unsigned.all;
-- use ieee.std_logic_arith.all;
-- use ieee.std_logic_misc.all;

library unisim;
use unisim.vcomponents.all;

library unimacro;
use unimacro.vcomponents.all;

library scalp_lib;
-- use scalp_lib.scalp_axi_pkg.all;
use scalp_lib.scalp_hdmi_pkg.all;

package scalp_color_pkg is

    -- Constants and types
    constant C_64_COLOUR_PALETTE_SIZE : integer range 0 to 64 := 64;
    constant C_16_COLOUR_PALETTE_SIZE : integer range 0 to 16 := 16;

    ---------------------------------------------------------------------------
    -- 64-colour EGA palette
    ---------------------------------------------------------------------------
    constant C_64_COLOUR_EGA_BLACK                  : t_hdmi_vga_pix := (RxD => x"00", GxD => x"00", BxD => x"00");
    constant C_64_COLOUR_EGA_OXFORD_BLUE            : t_hdmi_vga_pix := (RxD => x"00", GxD => x"00", BxD => x"55");
    constant C_64_COLOUR_EGA_DUKE_BLUE              : t_hdmi_vga_pix := (RxD => x"00", GxD => x"00", BxD => x"aa");
    constant C_64_COLOUR_EGA_BLUE                   : t_hdmi_vga_pix := (RxD => x"00", GxD => x"00", BxD => x"ff");
    constant C_64_COLOUR_EGA_DARK_GREEN             : t_hdmi_vga_pix := (RxD => x"00", GxD => x"55", BxD => x"00");
    constant C_64_COLOUR_EGA_MIDNIGHT_GREEN         : t_hdmi_vga_pix := (RxD => x"00", GxD => x"55", BxD => x"55");
    constant C_64_COLOUR_EGA_COBALT_BLUE            : t_hdmi_vga_pix := (RxD => x"00", GxD => x"55", BxD => x"aa");
    constant C_64_COLOUR_EGA_BLUE_MOON              : t_hdmi_vga_pix := (RxD => x"00", GxD => x"55", BxD => x"ff");
    constant C_64_COLOUR_EGA_ISLAMIC_GREEN          : t_hdmi_vga_pix := (RxD => x"00", GxD => x"aa", BxD => x"00");
    constant C_64_COLOUR_EGA_JAEGER_GREEN           : t_hdmi_vga_pix := (RxD => x"00", GxD => x"aa", BxD => x"55");
    constant C_64_COLOUR_EGA_TIFFANY_BLUE           : t_hdmi_vga_pix := (RxD => x"00", GxD => x"aa", BxD => x"aa");
    constant C_64_COLOUR_EGA_VIVID_CERULEAN         : t_hdmi_vga_pix := (RxD => x"00", GxD => x"aa", BxD => x"ff");
    constant C_64_COLOUR_EGA_GREEN                  : t_hdmi_vga_pix := (RxD => x"00", GxD => x"ff", BxD => x"00");
    constant C_64_COLOUR_EGA_MALACHISTE             : t_hdmi_vga_pix := (RxD => x"00", GxD => x"ff", BxD => x"55");
    constant C_64_COLOUR_EGA_MEDIUM_SPRING_GREEN    : t_hdmi_vga_pix := (RxD => x"00", GxD => x"ff", BxD => x"aa");
    constant C_64_COLOUR_EGA_CYAN                   : t_hdmi_vga_pix := (RxD => x"00", GxD => x"ff", BxD => x"ff");
    constant C_64_COLOUR_EGA_BULGARIAN_ROSE         : t_hdmi_vga_pix := (RxD => x"55", GxD => x"00", BxD => x"00");
    constant C_64_COLOUR_EGA_IMPERIAL_PURPLE        : t_hdmi_vga_pix := (RxD => x"55", GxD => x"00", BxD => x"55");
    constant C_64_COLOUR_EGA_INDIGO                 : t_hdmi_vga_pix := (RxD => x"55", GxD => x"00", BxD => x"aa");
    constant C_64_COLOUR_EGA_ELECTRIC_ULTRAMARINE   : t_hdmi_vga_pix := (RxD => x"55", GxD => x"00", BxD => x"ff");
    constant C_64_COLOUR_EGA_ARMY_GREEN             : t_hdmi_vga_pix := (RxD => x"55", GxD => x"55", BxD => x"00");
    constant C_64_COLOUR_EGA_DARK_GRAY              : t_hdmi_vga_pix := (RxD => x"55", GxD => x"55", BxD => x"55");
    constant C_64_COLOUR_EGA_LIBERTY                : t_hdmi_vga_pix := (RxD => x"55", GxD => x"55", BxD => x"aa");
    constant C_64_COLOUR_EGA_VERY_LIGHT_BLUE        : t_hdmi_vga_pix := (RxD => x"55", GxD => x"55", BxD => x"ff");
    constant C_64_COLOUR_EGA_KELLY_GREEN            : t_hdmi_vga_pix := (RxD => x"55", GxD => x"aa", BxD => x"00");
    constant C_64_COLOUR_EGA_MAY_GREEN              : t_hdmi_vga_pix := (RxD => x"55", GxD => x"aa", BxD => x"55");
    constant C_64_COLOUR_EGA_CADET_BLUE             : t_hdmi_vga_pix := (RxD => x"55", GxD => x"aa", BxD => x"aa");
    constant C_64_COLOUR_EGA_PICTON_BLUE            : t_hdmi_vga_pix := (RxD => x"55", GxD => x"aa", BxD => x"ff");
    constant C_64_COLOUR_EGA_BRIGHT_GREEN           : t_hdmi_vga_pix := (RxD => x"55", GxD => x"ff", BxD => x"00");
    constant C_64_COLOUR_EGA_SCREAMIN_GREEN         : t_hdmi_vga_pix := (RxD => x"55", GxD => x"ff", BxD => x"55");
    constant C_64_COLOUR_EGA_MEDIUM_AQUAMARINE      : t_hdmi_vga_pix := (RxD => x"55", GxD => x"ff", BxD => x"aa");
    constant C_64_COLOUR_EGA_ELECTRIC_BLUE          : t_hdmi_vga_pix := (RxD => x"55", GxD => x"ff", BxD => x"ff");
    constant C_64_COLOUR_EGA_DARK_CANDY_APPLE_RED   : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"00", BxD => x"00");
    constant C_64_COLOUR_EGA_JAZZBERRY_JAM          : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"00", BxD => x"55");
    constant C_64_COLOUR_EGA_PURPLE                 : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"00", BxD => x"aa");
    constant C_64_COLOUR_EGA_VIVID_VIOLET           : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"00", BxD => x"ff");
    constant C_64_COLOUR_EGA_WINDSOR_TAN            : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"55", BxD => x"00");
    constant C_64_COLOUR_EGA_ROSE_VALE              : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"55", BxD => x"55");
    constant C_64_COLOUR_EGA_PURPUREUS              : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"55", BxD => x"aa");
    constant C_64_COLOUR_EGA_LAVENDER_INDIGO        : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"55", BxD => x"ff");
    constant C_64_COLOUR_EGA_LIMERICK               : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"aa", BxD => x"00");
    constant C_64_COLOUR_EGA_BRASS                  : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"aa", BxD => x"55");
    constant C_64_COLOUR_EGA_LIGHT_GRAY             : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"aa", BxD => x"aa");
    constant C_64_COLOUR_EGA_BABY_BLUE_EYES         : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"aa", BxD => x"ff");
    constant C_64_COLOUR_EGA_SPRING_BUD             : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"ff", BxD => x"00");
    constant C_64_COLOUR_EGA_INCHWORM               : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"ff", BxD => x"55");
    constant C_64_COLOUR_EGA_MINT_GREEN             : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"ff", BxD => x"aa");
    constant C_64_COLOUR_EGA_CELESTE                : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"ff", BxD => x"ff");
    constant C_64_COLOUR_EGA_RED                    : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"00", BxD => x"00");
    constant C_64_COLOUR_EGA_FOLLY                  : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"00", BxD => x"55");
    constant C_64_COLOUR_EGA_FASHION_MAGENTA        : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"00", BxD => x"aa");
    constant C_64_COLOUR_EGA_MAGENTA                : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"00", BxD => x"ff");
    constant C_64_COLOUR_EGA_ORANGE                 : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"55", BxD => x"00");
    constant C_64_COLOUR_EGA_SUNSET_ORANGE          : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"55", BxD => x"55");
    constant C_64_COLOUR_EGA_BRILLIANT_ROSE         : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"55", BxD => x"aa");
    constant C_64_COLOUR_EGA_SHOCKING_PINK          : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"55", BxD => x"ff");
    constant C_64_COLOUR_EGA_CHROME_YELLOW          : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"aa", BxD => x"00");
    constant C_64_COLOUR_EGA_RAJAH                  : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"aa", BxD => x"55");
    constant C_64_COLOUR_EGA_MELON                  : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"aa", BxD => x"aa");
    constant C_64_COLOUR_EGA_RICH_BRILLANT_LAVENDER : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"aa", BxD => x"ff");
    constant C_64_COLOUR_EGA_YELLOW                 : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"ff", BxD => x"00");
    constant C_64_COLOUR_EGA_ICTERINE               : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"ff", BxD => x"55");
    constant C_64_COLOUR_EGA_PASTEL_YELLOW          : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"ff", BxD => x"aa");
    constant C_64_COLOUR_EGA_WHITE                  : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"ff", BxD => x"ff");
    ---------------------------------------------------------------------------
    -- 16-colour CGA palette
    ---------------------------------------------------------------------------
    constant C_16_COLOUR_CGA_BLACK                  : t_hdmi_vga_pix := (RxD => x"00", GxD => x"00", BxD => x"00");
    constant C_16_COLOUR_CGA_LOW_BLUE               : t_hdmi_vga_pix := (RxD => x"00", GxD => x"00", BxD => x"aa");
    constant C_16_COLOUR_CGA_LOW_GREEN              : t_hdmi_vga_pix := (RxD => x"00", GxD => x"aa", BxD => x"00");
    constant C_16_COLOUR_CGA_LOW_CYAN               : t_hdmi_vga_pix := (RxD => x"00", GxD => x"aa", BxD => x"aa");
    constant C_16_COLOUR_CGA_LOW_RED                : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"00", BxD => x"00");
    constant C_16_COLOUR_CGA_LOW_MAGENTA            : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"00", BxD => x"aa");
    constant C_16_COLOUR_CGA_BROWN                  : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"55", BxD => x"00");
    constant C_16_COLOUR_CGA_LIGHT_GRAY             : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"aa", BxD => x"aa");
    constant C_16_COLOUR_CGA_DARK_GRAY              : t_hdmi_vga_pix := (RxD => x"55", GxD => x"55", BxD => x"55");
    constant C_16_COLOUR_CGA_HIGH_BLUE              : t_hdmi_vga_pix := (RxD => x"55", GxD => x"55", BxD => x"ff");
    constant C_16_COLOUR_CGA_HIGH_GREEN             : t_hdmi_vga_pix := (RxD => x"55", GxD => x"ff", BxD => x"55");
    constant C_16_COLOUR_CGA_HIGH_CYAN              : t_hdmi_vga_pix := (RxD => x"55", GxD => x"ff", BxD => x"ff");
    constant C_16_COLOUR_CGA_HIGH_RED               : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"55", BxD => x"55");
    constant C_16_COLOUR_CGA_HIGH_MAGENTA           : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"55", BxD => x"ff");
    constant C_16_COLOUR_CGA_YELLOW                 : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"ff", BxD => x"55");
    constant C_16_COLOUR_CGA_WHITE                  : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"ff", BxD => x"ff");
    ---------------------------------------------------------------------------
    -- 16-colour C64 palette
    ---------------------------------------------------------------------------
    constant C_16_COLOUR_C64_BLACK                  : t_hdmi_vga_pix := (RxD => x"00", GxD => x"00", BxD => x"00");
    constant C_16_COLOUR_C64_WHITE                  : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"ff", BxD => x"ff");
    constant C_16_COLOUR_C64_RED                    : t_hdmi_vga_pix := (RxD => x"88", GxD => x"39", BxD => x"32");
    constant C_16_COLOUR_C64_CYAN                   : t_hdmi_vga_pix := (RxD => x"67", GxD => x"b6", BxD => x"bd");
    constant C_16_COLOUR_C64_PURPLE                 : t_hdmi_vga_pix := (RxD => x"8b", GxD => x"3f", BxD => x"96");
    constant C_16_COLOUR_C64_GREEN                  : t_hdmi_vga_pix := (RxD => x"55", GxD => x"a0", BxD => x"49");
    constant C_16_COLOUR_C64_BLUE                   : t_hdmi_vga_pix := (RxD => x"40", GxD => x"31", BxD => x"8d");
    constant C_16_COLOUR_C64_YELLOW                 : t_hdmi_vga_pix := (RxD => x"bf", GxD => x"ce", BxD => x"72");
    constant C_16_COLOUR_C64_ORANGE                 : t_hdmi_vga_pix := (RxD => x"8b", GxD => x"54", BxD => x"29");
    constant C_16_COLOUR_C64_BROWN                  : t_hdmi_vga_pix := (RxD => x"57", GxD => x"42", BxD => x"00");
    constant C_16_COLOUR_C64_LIGHT_RED              : t_hdmi_vga_pix := (RxD => x"b8", GxD => x"69", BxD => x"62");
    constant C_16_COLOUR_C64_DARK_GRAY              : t_hdmi_vga_pix := (RxD => x"50", GxD => x"50", BxD => x"50");
    constant C_16_COLOUR_C64_GRAY                   : t_hdmi_vga_pix := (RxD => x"78", GxD => x"78", BxD => x"78");
    constant C_16_COLOUR_C64_LIGHT_GREEN            : t_hdmi_vga_pix := (RxD => x"94", GxD => x"e0", BxD => x"89");
    constant C_16_COLOUR_C64_LIGHT_BLUE             : t_hdmi_vga_pix := (RxD => x"78", GxD => x"69", BxD => x"c4");
    constant C_16_COLOUR_C64_LIGHT_GRAY             : t_hdmi_vga_pix := (RxD => x"9f", GxD => x"9f", BxD => x"9f");
    ---------------------------------------------------------------------------
    -- 16-colour Apple-II palette
    ---------------------------------------------------------------------------
    constant C_16_COLOUR_APPLE_II_BLACK             : t_hdmi_vga_pix := (RxD => x"00", GxD => x"00", BxD => x"00");
    constant C_16_COLOUR_APPLE_II_MAGENTA           : t_hdmi_vga_pix := (RxD => x"72", GxD => x"26", BxD => x"40");
    constant C_16_COLOUR_APPLE_II_DARK_BLUE         : t_hdmi_vga_pix := (RxD => x"40", GxD => x"33", BxD => x"7f");
    constant C_16_COLOUR_APPLE_II_PURPLE            : t_hdmi_vga_pix := (RxD => x"e4", GxD => x"34", BxD => x"fe");
    constant C_16_COLOUR_APPLE_II_DARK_GREEN        : t_hdmi_vga_pix := (RxD => x"0e", GxD => x"59", BxD => x"40");
    constant C_16_COLOUR_APPLE_II_GRAY_1            : t_hdmi_vga_pix := (RxD => x"80", GxD => x"80", BxD => x"80");
    constant C_16_COLOUR_APPLE_II_MEDIUM_BLUE       : t_hdmi_vga_pix := (RxD => x"1b", GxD => x"9a", BxD => x"fe");
    constant C_16_COLOUR_APPLE_II_LIGHT_BLUE        : t_hdmi_vga_pix := (RxD => x"bf", GxD => x"b3", BxD => x"ff");
    constant C_16_COLOUR_APPLE_II_BROWN             : t_hdmi_vga_pix := (RxD => x"40", GxD => x"4c", BxD => x"00");
    constant C_16_COLOUR_APPLE_II_ORANGE            : t_hdmi_vga_pix := (RxD => x"e4", GxD => x"65", BxD => x"01");
    constant C_16_COLOUR_APPLE_II_GRAY_2            : t_hdmi_vga_pix := (RxD => x"80", GxD => x"80", BxD => x"80");
    constant C_16_COLOUR_APPLE_II_PINK              : t_hdmi_vga_pix := (RxD => x"f1", GxD => x"a6", BxD => x"bf");
    constant C_16_COLOUR_APPLE_II_GREEN             : t_hdmi_vga_pix := (RxD => x"1b", GxD => x"cb", BxD => x"01");
    constant C_16_COLOUR_APPLE_II_YELLOW            : t_hdmi_vga_pix := (RxD => x"bf", GxD => x"cc", BxD => x"80");
    constant C_16_COLOUR_APPLE_II_AQUA              : t_hdmi_vga_pix := (RxD => x"8d", GxD => x"d9", BxD => x"bf");
    constant C_16_COLOUR_APPLE_II_WHITE             : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"ff", BxD => x"ff");
    ---------------------------------------------------------------------------
    -- 16-colour ZX Spectrum palette
    ---------------------------------------------------------------------------
    constant C_16_COLOUR_ZX_SPECTRUM_BLACK_1        : t_hdmi_vga_pix := (RxD => x"00", GxD => x"00", BxD => x"00");
    constant C_16_COLOUR_ZX_SPECTRUM_BASIC_BLUE     : t_hdmi_vga_pix := (RxD => x"00", GxD => x"00", BxD => x"aa");
    constant C_16_COLOUR_ZX_SPECTRUM_BASIC_RED      : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"00", BxD => x"00");
    constant C_16_COLOUR_ZX_SPECTRUM_BASIC_MAGENTA  : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"00", BxD => x"aa");
    constant C_16_COLOUR_ZX_SPECTRUM_BASIC_GREEN    : t_hdmi_vga_pix := (RxD => x"00", GxD => x"aa", BxD => x"00");
    constant C_16_COLOUR_ZX_SPECTRUM_BASIC_CYAN     : t_hdmi_vga_pix := (RxD => x"00", GxD => x"aa", BxD => x"aa");
    constant C_16_COLOUR_ZX_SPECTRUM_BASIC_YELLOW   : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"aa", BxD => x"00");
    constant C_16_COLOUR_ZX_SPECTRUM_BASIC_WHITE    : t_hdmi_vga_pix := (RxD => x"aa", GxD => x"aa", BxD => x"aa");
    constant C_16_COLOUR_ZX_SPECTRUM_BLACK_2        : t_hdmi_vga_pix := (RxD => x"00", GxD => x"00", BxD => x"00");
    constant C_16_COLOUR_ZX_SPECTRUM_BRIGHT_BLUE    : t_hdmi_vga_pix := (RxD => x"00", GxD => x"00", BxD => x"ff");
    constant C_16_COLOUR_ZX_SPECTRUM_BRIGHT_RED     : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"00", BxD => x"00");
    constant C_16_COLOUR_ZX_SPECTRUM_BRIGHT_MAGENTA : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"00", BxD => x"ff");
    constant C_16_COLOUR_ZX_SPECTRUM_BRIGHT_GREEN   : t_hdmi_vga_pix := (RxD => x"00", GxD => x"ff", BxD => x"00");
    constant C_16_COLOUR_ZX_SPECTRUM_BRIGHT_CYAN    : t_hdmi_vga_pix := (RxD => x"00", GxD => x"ff", BxD => x"ff");
    constant C_16_COLOUR_ZX_SPECTRUM_BRIGHT_YELLOW  : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"ff", BxD => x"00");
    constant C_16_COLOUR_ZX_SPECTRUM_BRIGHT_WHITE   : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"ff", BxD => x"ff");
    ---------------------------------------------------------------------------
    -- 16-colour PICO-8 palette
    ---------------------------------------------------------------------------
    constant C_16_COLOUR_PICO_8_BLACK               : t_hdmi_vga_pix := (RxD => x"02", GxD => x"04", BxD => x"08");
    constant C_16_COLOUR_PICO_8_DARK_BLUE           : t_hdmi_vga_pix := (RxD => x"1d", GxD => x"2b", BxD => x"53");
    constant C_16_COLOUR_PICO_8_DARK_PURPLE         : t_hdmi_vga_pix := (RxD => x"7e", GxD => x"25", BxD => x"53");
    constant C_16_COLOUR_PICO_8_DARK_GREEN          : t_hdmi_vga_pix := (RxD => x"00", GxD => x"87", BxD => x"51");
    constant C_16_COLOUR_PICO_8_BROWN               : t_hdmi_vga_pix := (RxD => x"ab", GxD => x"52", BxD => x"36");
    constant C_16_COLOUR_PICO_8_DARK_GRAY           : t_hdmi_vga_pix := (RxD => x"5f", GxD => x"57", BxD => x"4f");
    constant C_16_COLOUR_PICO_8_LIGHT_GRAY          : t_hdmi_vga_pix := (RxD => x"c2", GxD => x"c3", BxD => x"c7");
    constant C_16_COLOUR_PICO_8_WHITE               : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"f1", BxD => x"e8");
    constant C_16_COLOUR_PICO_8_RED                 : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"00", BxD => x"4d");
    constant C_16_COLOUR_PICO_8_ORANGE              : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"a3", BxD => x"00");
    constant C_16_COLOUR_PICO_8_YELLOW              : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"ec", BxD => x"27");
    constant C_16_COLOUR_PICO_8_GREEN               : t_hdmi_vga_pix := (RxD => x"00", GxD => x"e4", BxD => x"36");
    constant C_16_COLOUR_PICO_8_BLUE                : t_hdmi_vga_pix := (RxD => x"29", GxD => x"ad", BxD => x"ff");
    constant C_16_COLOUR_PICO_8_INDIGO              : t_hdmi_vga_pix := (RxD => x"83", GxD => x"76", BxD => x"9c");
    constant C_16_COLOUR_PICO_8_PINK                : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"77", BxD => x"a8");
    constant C_16_COLOUR_PICO_8_PEACH               : t_hdmi_vga_pix := (RxD => x"ff", GxD => x"cc", BxD => x"aa");

    type t_colour_palette is array (natural range <>) of t_hdmi_vga_pix;

    constant C_64_COLOUR_EGA_PALETTE : t_colour_palette((C_64_COLOUR_PALETTE_SIZE - 1) downto 0)
        := (0  => C_64_COLOUR_EGA_BLACK,
            1  => C_64_COLOUR_EGA_OXFORD_BLUE,
            2  => C_64_COLOUR_EGA_DUKE_BLUE,
            3  => C_64_COLOUR_EGA_BLUE,
            4  => C_64_COLOUR_EGA_DARK_GREEN,
            5  => C_64_COLOUR_EGA_MIDNIGHT_GREEN,
            6  => C_64_COLOUR_EGA_COBALT_BLUE,
            7  => C_64_COLOUR_EGA_BLUE_MOON,
            8  => C_64_COLOUR_EGA_ISLAMIC_GREEN,
            9  => C_64_COLOUR_EGA_JAEGER_GREEN,
            10 => C_64_COLOUR_EGA_TIFFANY_BLUE,
            11 => C_64_COLOUR_EGA_VIVID_CERULEAN,
            12 => C_64_COLOUR_EGA_GREEN,
            13 => C_64_COLOUR_EGA_MALACHISTE,
            14 => C_64_COLOUR_EGA_MEDIUM_SPRING_GREEN,
            15 => C_64_COLOUR_EGA_CYAN,
            16 => C_64_COLOUR_EGA_BULGARIAN_ROSE,
            17 => C_64_COLOUR_EGA_IMPERIAL_PURPLE,
            18 => C_64_COLOUR_EGA_INDIGO,
            19 => C_64_COLOUR_EGA_ELECTRIC_ULTRAMARINE,
            20 => C_64_COLOUR_EGA_ARMY_GREEN,
            21 => C_64_COLOUR_EGA_DARK_GRAY,
            22 => C_64_COLOUR_EGA_LIBERTY,
            23 => C_64_COLOUR_EGA_VERY_LIGHT_BLUE,
            24 => C_64_COLOUR_EGA_KELLY_GREEN,
            25 => C_64_COLOUR_EGA_MAY_GREEN,
            26 => C_64_COLOUR_EGA_CADET_BLUE,
            27 => C_64_COLOUR_EGA_PICTON_BLUE,
            28 => C_64_COLOUR_EGA_BRIGHT_GREEN,
            29 => C_64_COLOUR_EGA_SCREAMIN_GREEN,
            30 => C_64_COLOUR_EGA_MEDIUM_AQUAMARINE,
            31 => C_64_COLOUR_EGA_ELECTRIC_BLUE,
            32 => C_64_COLOUR_EGA_DARK_CANDY_APPLE_RED,
            33 => C_64_COLOUR_EGA_JAZZBERRY_JAM,
            34 => C_64_COLOUR_EGA_PURPLE,
            35 => C_64_COLOUR_EGA_VIVID_VIOLET,
            36 => C_64_COLOUR_EGA_WINDSOR_TAN,
            37 => C_64_COLOUR_EGA_ROSE_VALE,
            38 => C_64_COLOUR_EGA_PURPUREUS,
            39 => C_64_COLOUR_EGA_LAVENDER_INDIGO,
            40 => C_64_COLOUR_EGA_LIMERICK,
            41 => C_64_COLOUR_EGA_BRASS,
            42 => C_64_COLOUR_EGA_LIGHT_GRAY,
            43 => C_64_COLOUR_EGA_BABY_BLUE_EYES,
            44 => C_64_COLOUR_EGA_SPRING_BUD,
            45 => C_64_COLOUR_EGA_INCHWORM,
            46 => C_64_COLOUR_EGA_MINT_GREEN,
            47 => C_64_COLOUR_EGA_CELESTE,
            48 => C_64_COLOUR_EGA_RED,
            49 => C_64_COLOUR_EGA_FOLLY,
            50 => C_64_COLOUR_EGA_FASHION_MAGENTA,
            51 => C_64_COLOUR_EGA_MAGENTA,
            52 => C_64_COLOUR_EGA_ORANGE,
            53 => C_64_COLOUR_EGA_SUNSET_ORANGE,
            54 => C_64_COLOUR_EGA_BRILLIANT_ROSE,
            55 => C_64_COLOUR_EGA_SHOCKING_PINK,
            56 => C_64_COLOUR_EGA_CHROME_YELLOW,
            57 => C_64_COLOUR_EGA_RAJAH,
            58 => C_64_COLOUR_EGA_MELON,
            59 => C_64_COLOUR_EGA_RICH_BRILLANT_LAVENDER,
            60 => C_64_COLOUR_EGA_YELLOW,
            61 => C_64_COLOUR_EGA_ICTERINE,
            62 => C_64_COLOUR_EGA_PASTEL_YELLOW,
            63 => C_64_COLOUR_EGA_WHITE);

    constant C_16_COLOUR_CGA_PALETTE : t_colour_palette((C_16_COLOUR_PALETTE_SIZE - 1) downto 0)
        := (0  => C_16_COLOUR_CGA_BLACK,
            1  => C_16_COLOUR_CGA_LOW_BLUE,
            2  => C_16_COLOUR_CGA_LOW_GREEN,
            3  => C_16_COLOUR_CGA_LOW_CYAN,
            4  => C_16_COLOUR_CGA_LOW_RED,
            5  => C_16_COLOUR_CGA_LOW_MAGENTA,
            6  => C_16_COLOUR_CGA_BROWN,
            7  => C_16_COLOUR_CGA_LIGHT_GRAY,
            8  => C_16_COLOUR_CGA_DARK_GRAY,
            9  => C_16_COLOUR_CGA_HIGH_BLUE,
            10 => C_16_COLOUR_CGA_HIGH_GREEN,
            11 => C_16_COLOUR_CGA_HIGH_CYAN,
            12 => C_16_COLOUR_CGA_HIGH_RED,
            13 => C_16_COLOUR_CGA_HIGH_MAGENTA,
            14 => C_16_COLOUR_CGA_YELLOW,
            15 => C_16_COLOUR_CGA_WHITE);

    constant C_16_COLOUR_C64_PALETTE : t_colour_palette((C_16_COLOUR_PALETTE_SIZE - 1) downto 0)
        := (0  => C_16_COLOUR_C64_BLACK,
            1  => C_16_COLOUR_C64_WHITE,
            2  => C_16_COLOUR_C64_RED,
            3  => C_16_COLOUR_C64_CYAN,
            4  => C_16_COLOUR_C64_PURPLE,
            5  => C_16_COLOUR_C64_GREEN,
            6  => C_16_COLOUR_C64_BLUE,
            7  => C_16_COLOUR_C64_YELLOW,
            8  => C_16_COLOUR_C64_ORANGE,
            9  => C_16_COLOUR_C64_BROWN,
            10 => C_16_COLOUR_C64_LIGHT_RED,
            11 => C_16_COLOUR_C64_DARK_GRAY,
            12 => C_16_COLOUR_C64_GRAY,
            13 => C_16_COLOUR_C64_LIGHT_GREEN,
            14 => C_16_COLOUR_C64_LIGHT_BLUE,
            15 => C_16_COLOUR_C64_LIGHT_GRAY);

    constant C_16_COLOUR_APPLE_II_PALETTE : t_colour_palette((C_16_COLOUR_PALETTE_SIZE - 1) downto 0)
        := (0  => C_16_COLOUR_APPLE_II_BLACK,
            1  => C_16_COLOUR_APPLE_II_MAGENTA,
            2  => C_16_COLOUR_APPLE_II_DARK_BLUE,
            3  => C_16_COLOUR_APPLE_II_PURPLE,
            4  => C_16_COLOUR_APPLE_II_DARK_GREEN,
            5  => C_16_COLOUR_APPLE_II_GRAY_1,
            6  => C_16_COLOUR_APPLE_II_MEDIUM_BLUE,
            7  => C_16_COLOUR_APPLE_II_LIGHT_BLUE,
            8  => C_16_COLOUR_APPLE_II_BROWN,
            9  => C_16_COLOUR_APPLE_II_ORANGE,
            10 => C_16_COLOUR_APPLE_II_GRAY_2,
            11 => C_16_COLOUR_APPLE_II_PINK,
            12 => C_16_COLOUR_APPLE_II_GREEN,
            13 => C_16_COLOUR_APPLE_II_YELLOW,
            14 => C_16_COLOUR_APPLE_II_AQUA,
            15 => C_16_COLOUR_APPLE_II_WHITE);

    constant C_16_COLOUR_ZX_SPECTRUM_PALETTE : t_colour_palette((C_16_COLOUR_PALETTE_SIZE - 1) downto 0)
        := (0  => C_16_COLOUR_ZX_SPECTRUM_BLACK_1,
            1  => C_16_COLOUR_ZX_SPECTRUM_BASIC_BLUE,
            2  => C_16_COLOUR_ZX_SPECTRUM_BASIC_RED,
            3  => C_16_COLOUR_ZX_SPECTRUM_BASIC_MAGENTA,
            4  => C_16_COLOUR_ZX_SPECTRUM_BASIC_GREEN,
            5  => C_16_COLOUR_ZX_SPECTRUM_BASIC_CYAN,
            6  => C_16_COLOUR_ZX_SPECTRUM_BASIC_YELLOW,
            7  => C_16_COLOUR_ZX_SPECTRUM_BASIC_WHITE,
            8  => C_16_COLOUR_ZX_SPECTRUM_BLACK_2,
            9  => C_16_COLOUR_ZX_SPECTRUM_BRIGHT_BLUE,
            10 => C_16_COLOUR_ZX_SPECTRUM_BRIGHT_RED,
            11 => C_16_COLOUR_ZX_SPECTRUM_BRIGHT_MAGENTA,
            12 => C_16_COLOUR_ZX_SPECTRUM_BRIGHT_GREEN,
            13 => C_16_COLOUR_ZX_SPECTRUM_BRIGHT_CYAN,
            14 => C_16_COLOUR_ZX_SPECTRUM_BRIGHT_YELLOW,
            15 => C_16_COLOUR_ZX_SPECTRUM_BRIGHT_WHITE);

    constant C_16_COLOUR_PICO_8_PALETTE : t_colour_palette((C_16_COLOUR_PALETTE_SIZE - 1) downto 0)
        := (0  => C_16_COLOUR_PICO_8_BLACK,
            1  => C_16_COLOUR_PICO_8_DARK_BLUE,
            2  => C_16_COLOUR_PICO_8_DARK_PURPLE,
            3  => C_16_COLOUR_PICO_8_DARK_GREEN,
            4  => C_16_COLOUR_PICO_8_BROWN,
            5  => C_16_COLOUR_PICO_8_DARK_GRAY,
            6  => C_16_COLOUR_PICO_8_LIGHT_GRAY,
            7  => C_16_COLOUR_PICO_8_WHITE,
            8  => C_16_COLOUR_PICO_8_RED,
            9  => C_16_COLOUR_PICO_8_ORANGE,
            10 => C_16_COLOUR_PICO_8_YELLOW,
            11 => C_16_COLOUR_PICO_8_GREEN,
            12 => C_16_COLOUR_PICO_8_BLUE,
            13 => C_16_COLOUR_PICO_8_INDIGO,
            14 => C_16_COLOUR_PICO_8_PINK,
            15 => C_16_COLOUR_PICO_8_PEACH);

end scalp_color_pkg;

package body scalp_color_pkg is

end scalp_color_pkg;
