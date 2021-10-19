library ieee;
use ieee.std_logic_1164.all;

entity compx1 is
 	port (
			a_in, b_in 	: in std_logic;
			a_equals_b, a_less_b, a_greater_b		: out std_logic
		   
			);
end compx1;

architecture Circuit of compx1 is

signal not_a : std_logic;
signal not_b : std_logic;

begin

a_equals_b <= a_in XNOR b_in;

not_b <= NOT b_in;

a_greater_b <= a_in AND not_b;

not_a <= NOT a_in;

a_less_b <= not_a AND b_in;

end;