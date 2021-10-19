library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity Grappler is port
(
	clk_in, reset_n							: in std_logic;
	grappler_enable, grappler_toggle		: in std_logic;
	grappler_on									: out std_logic
);
end Entity;

Architecture grapplesm of Grappler is

TYPE STATE_NAMES is (grap_off, grap_on);

signal current_state, next_state : STATE_NAMES;

BEGIN

-----------------------------------------
--STATE MACHINE GRAPPLER--
-----------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_in, reset_n)  -- this process synchronizes the activity to a clock
BEGIN
	IF (reset_n = '0') THEN
		current_state <= grap_off;
	ELSIF(rising_edge(clk_in)) THEN
		current_state <= next_State;
	END IF;
END PROCESS;

-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (grappler_enable, grappler_toggle, current_state) 

BEGIN
     CASE current_state IS
          WHEN grap_off =>		
				IF(grappler_enable='1' and grappler_toggle='1') THEN
					next_state <= grap_on;
				ELSE
					next_state <= grap_off;
				END IF;

         WHEN grap_on =>	
				IF(grappler_enable='1' and grappler_toggle='1') THEN
					next_state <= grap_off;
				ELSE
					next_state <= grap_on;
				END IF;
         

	WHEN OTHERS =>
               next_state <= grap_off;
 	END CASE;

 END PROCESS;
 
  -- DECODER SECTION PROCESS (Moore Form)

Decoder_Section: PROCESS (current_state)
 
 BEGIN
     CASE current_state IS
         WHEN grap_off =>	
			grappler_on				<= '0'; 
			
			
			WHEN grap_on =>	
			grappler_on				<= '1';
				
         WHEN others =>		
 			grappler_on				<= '0';
  END CASE;
 END PROCESS;

 END ARCHITECTURE grapplesm;