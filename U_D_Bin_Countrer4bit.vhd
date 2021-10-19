library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity U_D_Bin_Countrer4bit is port 
	(
		CLK		: in std_logic := '0';
		RESET_n		: in std_logic := '0';
		IN_MOTION		: in std_logic := '0'; --ESEENTIALY THE ENABLE BIT
		EQUALTO		: in std_logic := '0'; --another enable bit just in case
		UP1_DOWN0		: in std_logic := '0';
		COUNTER_BITS		: out std_logic_vector(3 downto 0)
	);
	end Entity;
	
	ARCHITECTURE one OF U_D_Bin_Countrer4bit IS
	
	Signal ud_bin_counter		: UNSIGNED(3 downto 0);
	
BEGIN

process (CLK, RESET_n, EQUALTO, IN_MOTION) is
begin
	
	
	if (RESET_n = '0') then
			ud_bin_counter <= "0000";
			
	elsif (falling_edge(CLK)) then 
			
			if ((UP1_DOWN0 = '1') AND (IN_MOTION= '1') AND (EQUALTO= '0')) then --
			
				ud_bin_counter <= (ud_bin_counter+1); --
				
			elsif ((UP1_DOWN0 = '0') AND (IN_MOTION= '1') AND (EQUALTO= '0')) then
			
				ud_bin_counter <= (ud_bin_counter-1); -- 
				
			end if;
			
	end if;
	
end process;

COUNTER_BITS <= std_logic_vector(ud_bin_counter);

END one;
	