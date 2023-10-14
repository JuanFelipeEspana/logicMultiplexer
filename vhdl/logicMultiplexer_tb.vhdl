library ieee;
use ieee.std_logic_1164.all;

entity logicMultiplexer_tb is
end entity logicMultiplexer_tb;

architecture testbench of logicMultiplexer_tb is
  signal   x_tb                 :       std_logic_vector(3 downto 0) := "0000";
  signal   fMultiplexer_tb      :       std_logic;
  signal   fGates_tb            :       std_logic;
begin
  x_tb  <= "0001" after 200ns,
           "0010" after 400ns,
           "0011" after 600ns,
           "0100" after 800ns,
           "0101" after 1000ns,
           "0110" after 1200ns,
           "0111" after 1400ns,
           "1000" after 1600ns,
           "1001" after 1800ns,
           "1010" after 2000ns,
           "1011" after 2200ns,
           "1100" after 2400ns,
           "1101" after 2600ns,
           "1110" after 2800ns,
           "1111" after 3000ns;
  DUT: entity work.logicMultiplexer
    port map(
      x         =>      x_tb,
      f         =>      fMultiplexer_tb
    );
  DUT2: entity work.logicGates
    port map(
      x         =>      x_tb,
      f         =>      fGates_tb
    );
end architecture testbench;
