library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
entity comparator is
Port ( A, B : in STD_LOGIC_VECTOR (3 downto 0);
    EQ, GT, LT : out STD_LOGIC);
end lab_10;

architecture behavioral of comparator is
begin
    GT <= '1' when (A > B)
    else '0';
    EQ <= '1' when (A = B)
    else '0';
    LT<= '1' when (A < B)
    else '0';
end behavioral;
