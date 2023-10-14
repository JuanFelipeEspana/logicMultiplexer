library ieee;
use ieee.std_logic_1164.all;

entity logicMultiplexer is
  port(
    x           :       in      std_logic_vector(3 downto 0);
    f           :       out     std_logic
  );
end entity logicMultiplexer;

architecture rtl of logicMultiplexer is
begin
  f <= '1' when (x(0)=x(1))and(x(2)=x(3))='1' else
       '0';
end architecture rtl;
    
