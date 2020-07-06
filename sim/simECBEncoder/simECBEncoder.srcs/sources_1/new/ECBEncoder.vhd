----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.07.2020 16:42:44
-- Design Name: 
-- Module Name: ECBEncoder - Behavioral
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

entity ECBEncoder is
    port(key : in std_logic_vector(15 downto 0);
         texto : in std_logic_vector(31 downto 0);
         plain_text : out std_logic_vector(31 downto 0);
         ciphered_text : out std_logic_vector(31 downto 0)
    );
    
end ECBEncoder;

architecture Behavioral of ECBEncoder is
signal s_block0, s_block1 : std_logic_vector(15 downto 0);
signal s_ciphered_text  : std_logic_vector(31 downto 0);
begin

s_block0 <= texto(31 downto 16);
s_block1 <= texto(15 downto 0);

s_ciphered_text <= (s_block0 xor key) & (s_block1 xor key);

ciphered_text <= s_ciphered_text;
plain_text <= (s_ciphered_text(31 downto 16) xor key) & (s_ciphered_text(15 downto 0 )xor key);

end Behavioral;
