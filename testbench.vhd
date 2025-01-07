library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity comparator is
end comparator;
architecture behavior of comparator is
-- component declaration for unit under test

component comparator is
  port (
    A, B : in std_logic_vector(3 downto 0);
    LT, EQ , GT : out std_logic);
end component;

-- signals declared for use in the testbench
signal A_s,B_s : std_logic_vector(3 downto 0);
signal LT_s,EQ_s,GT_s : std_logic;

begin
  -- instantiate the unit under test (uut)
  uut : comparator port map (
  A => A_s,
  B => B_s,
  LT => LT_s,
  EQ => EQ_s,
  GT => GT_s);
  stimuli : process
  begin
  -- Specify the different test condtions here.
  A_s<="1111";
  B_s<="0000";
  wait for 100 ns;
  A_s<="1010";
  B_s<="1100";
  wait for 100 ns;
  A_s<="1001";
  B_s<="0011";
  wait for 100 ns;
  A_s<="1000";
  B_s<="1000";
  wait for 100 ns;
  A_s<="0011";
  B_s<="0001";
  wait for 100 ns;
  end process stimuli;
end behavior;
