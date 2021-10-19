library ieee;
use ieee.std_logic_1164.all;

entity compx4 is
 	port (
			four_bit_a_in, four_bit_b_in 	: in std_logic_vector(3 downto 0);
			a_equal_b, a_lesser_b, a_great_b		: out std_logic
		   
			);
end compx4;

architecture Circuit of compx4 is

component compx1
 	port (
			a_in, b_in 	: in std_logic;
			a_equals_b, a_less_b, a_greater_b 	: out std_logic
			);
end component;

signal bit4_a_less_b : std_logic_vector(3 downto 0);
signal bit4_a_equals_b : std_logic_vector(3 downto 0);
signal bit4_a_greater_b : std_logic_vector(3 downto 0);

signal less_term_1 : std_logic;
signal less_term_2 : std_logic;
signal less_term_3 : std_logic;
signal less_term_4 : std_logic;

signal greater_term_1 : std_logic;
signal greater_term_2 : std_logic;
signal greater_term_3 : std_logic;
signal greater_term_4 : std_logic;


begin



comp0: compx1 port map (four_bit_a_in(0), four_bit_b_in(0), bit4_a_equals_b(0), bit4_a_less_b(0), bit4_a_greater_b(0));

comp1: compx1 port map (four_bit_a_in(1), four_bit_b_in(1), bit4_a_equals_b(1), bit4_a_less_b(1), bit4_a_greater_b(1));

comp2: compx1 port map (four_bit_a_in(2), four_bit_b_in(2), bit4_a_equals_b(2), bit4_a_less_b(2), bit4_a_greater_b(2));

comp3: compx1 port map (four_bit_a_in(3), four_bit_b_in(3), bit4_a_equals_b(3), bit4_a_less_b(3), bit4_a_greater_b(3));

--Each term in the greater than logic function to save space
greater_term_1 <= bit4_a_greater_b(3);
greater_term_2 <= bit4_a_equals_b(3) AND bit4_a_greater_b(2);
greater_term_3 <= bit4_a_equals_b(3) AND bit4_a_equals_b(2) AND bit4_a_greater_b(1);
greater_term_4 <= bit4_a_equals_b(3) AND bit4_a_equals_b(2) AND bit4_a_equals_b(1) AND bit4_a_greater_b(0);

--Each term in the less than logic function to save space
less_term_1 <= bit4_a_less_b(3);
less_term_2 <= bit4_a_equals_b(3) AND bit4_a_less_b(2);
less_term_3 <= bit4_a_equals_b(3) AND bit4_a_equals_b(2) AND bit4_a_less_b(1);
less_term_4 <= bit4_a_equals_b(3) AND bit4_a_equals_b(2) AND bit4_a_equals_b(1) AND bit4_a_less_b(0);

------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------

--is true when all bits are equal
a_equal_b <=  bit4_a_equals_b(3) AND bit4_a_equals_b(2) AND bit4_a_equals_b(1) AND bit4_a_equals_b(0);

-- form of less3 + equal3*less2 + equal3*equal2*less1 + equal3*equal2*equal1*less0
a_lesser_b <= less_term_1 OR less_term_2 OR less_term_3 OR less_term_4;

-- form of greater3 + equal3*greater2 + equal3*equal2*greater1 + equal3*equal2*equal1*greater0
a_great_b <= greater_term_1 OR greater_term_2 OR greater_term_3 OR greater_term_4;


end;