library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity add_16bits is
    Port (C_in:     in std_logic;
          Din1:     in std_logic_vector(15 downto 0);
          Din2:     in std_logic_vector(15 downto 0);
          Dout:     out std_logic_vector(15 downto 0)
         );
end add_16bits;

architecture Behavioral of add_16bits is

begin
    Dout <= std_logic_vector(unsigned(Din1) + unsigned(Din2) + C_in);
end Behavioral;
