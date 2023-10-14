library ieee;
use ieee.std_logic_1164.all;

entity logicGates is
  port(
    x           :       in      std_logic_vector(3 downto 0);
    f           :       out     std_logic
  );
end entity logicGates;

architecture gateLevel of logicGates is
  signal partialProducts        :       std_logic_vector(1 downto 0);
begin
  partialProducts(0) <= x(0) xnor x(1);
  partialProducts(1) <= x(2) xnor x(3);

  f <= partialProducts(0) xnor partialProducts(1);
end architecture gateLevel;

    
