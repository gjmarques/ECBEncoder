----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.07.2020 17:13:01
-- Design Name: 
-- Module Name: ECB_tb2 - Behavioral
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

entity ECB_tb2 is
--  Port ( );
end ECB_tb2;

architecture Behavioral of ECB_tb2 is
signal s_key : std_logic_vector(15 downto 0); 
signal s_texto , s_plain_text , s_ciphered_text : std_logic_vector(31 downto 0);


begin
    
  
   ecb : entity work.ECBEncoder(Behavioral)
           port map( key =>s_key, 
                     texto => s_texto,
                     plain_text => s_plain_text,
                     ciphered_text => s_ciphered_text
                    );
                    
   process
   begin
    s_texto <= x"BD01427E";
    s_key <= x"BAAB";
    wait for 250 ns;
    s_texto <= x"BA13EA56";
    s_key <= x"BAAB";
    wait for 250 ns;
   end process;

end Behavioral;
