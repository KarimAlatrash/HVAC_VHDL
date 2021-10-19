library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity Extender is port
(
	extender_toggle, xmotion_in, ymotion_in 					: in std_logic;
	current_extension											: in std_logic_vector(3 downto 0);
	clk_en, down0_up1, grappler_enable 	: out std_logic;
	extender_out	: out std_logic;
	clk_in, reset_n												: in std_logic
);
end Entity;

Architecture extendsm of Extender is

TYPE STATE_NAMES is (disabled, retracted, extending, retracting, extended);

signal current_state, next_state : STATE_NAMES;

BEGIN

-----------------------------------------

--STATE MACHINE EXTENDER--
-----------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_in, reset_n)  -- this process synchronizes the activity to a clock
BEGIN
	IF (reset_n = '0') THEN
		current_state <= disabled;
	ELSIF(rising_edge(clk_in)) THEN
		current_state <= next_State;
	END IF;
END PROCESS;

-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (extender_toggle, xmotion_in, ymotion_in, current_extension, current_state) 

BEGIN
     CASE current_state IS
          WHEN disabled =>		
				IF((xmotion_in OR ymotion_in)='0') THEN
					next_state <= retracted;
				ELSE
					next_state <= disabled;
				END IF;

         WHEN retracted =>	
				IF((xmotion_in OR ymotion_in)='1') THEN
					next_state <= disabled;
				ELSIF(extender_toggle='1') THEN
					next_state <= extending;
				ELSE
					next_state <= retracted;
				END IF;

         WHEN extending =>		
				IF(current_extension="1111") THEN
					next_state <= extended;
				ELSE
					next_state <= extending;
				END IF;
				
         WHEN retracting =>		
				IF(current_extension="0000") THEN
					next_state <= retracted;
				ELSE
					next_state <= retracting;
				END IF;

         WHEN extended =>	
				IF(extender_toggle='1') THEN
					next_state <= retracting;
				ELSE
					next_state <= extended;
				END IF;
         

	WHEN OTHERS =>
               next_state <= disabled;
 	END CASE;

 END PROCESS;
 
 -- DECODER SECTION PROCESS (Moore Form)

Decoder_Section: PROCESS (current_state) 

BEGIN
     CASE current_state IS
         WHEN disabled =>	
			clk_en				<= '0'; 
			down0_up1			<= '0'; 
			extender_out		<= '0'; 
			grappler_enable	<= '0';
			
         WHEN retracted =>		
			clk_en				<= '0'; 
			down0_up1			<= '0'; 
			extender_out		<= '0'; 
			grappler_enable	<= '0';

         WHEN extending =>		
			clk_en				<= '1'; 
			down0_up1			<= '1'; 
			extender_out		<= '1'; 
			grappler_enable	<= '0';
			
         WHEN retracting =>		
			clk_en				<= '1'; 
			down0_up1			<= '0'; 
			extender_out		<= '1'; 
			grappler_enable	<= '0';

         WHEN extended =>		
			clk_en				<= '0'; 
			down0_up1			<= '0'; 
			extender_out		<= '1'; 
			grappler_enable	<= '1';

				
         WHEN others =>		
 			clk_en				<= '0'; 
			down0_up1			<= '0'; 
			extender_out		<= '0'; 
			grappler_enable	<= '0';
  END CASE;
 END PROCESS;

 END ARCHITECTURE extendsm;
 