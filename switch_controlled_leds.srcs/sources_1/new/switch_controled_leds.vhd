----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/03/2026 10:52:15 AM
-- Design Name: 
-- Module Name: switch_controled_leds - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity switch_controled_leds is
    Port ( sw0 : in STD_LOGIC;
           sw1 : in STD_LOGIC;
           led0 : out STD_LOGIC;
           led1 : out STD_LOGIC;
           led2 : out STD_LOGIC;
           led3 : out STD_LOGIC);
end switch_controled_leds;

architecture Behavioral of switch_controled_leds is
    signal led0_and : std_logic ;
    signal led1_or : std_logic ;
    signal led2_xor : std_logic ;
    signal led3_nor : std_logic ;
begin
    led0_and <= sw0 and sw1;
    led1_or <= sw0 or sw1;
    led2_xor <= sw0 xor sw1;
    led3_nor <= sw0 nor sw1;
    led0<=led0_and;
    led1<=led1_or;
    led2<=led2_xor;
    led3<=led3_nor;
end Behavioral;
