library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

------------------------------------------------------------------------------
--TODO
--1. USE THE COUNTER FILE BECAUSE FUCKING APPARENTLY YOU CANT ADD ONE TO A SIGNAL
--		do this by setting equal to enable the adding, less than to up1 and greater than to down1
--		youll need to figure out how calling the instance from the decoder block will work amigo
------------------------------------------------------------------------------

Entity directional_motion is port 
	(
		clk		: in std_logic;
		reset_n		: in std_logic;
		motion_button		: in std_logic := '0';
		extender_out		: in std_logic;
		position_feed		: in std_logic_vector(3 downto 0);
		current_position : out std_logic_vector(3 downto 0);
		in_motion : out std_logic;
		SYSTEM_FAULT_ERROR : out std_logic
	);
	end Entity;
	
 Architecture top of directional_motion is
 
 ------------------------------------------------------------------------------
 --Components Section
 ------------------------------------------------------------------------------
component directional_motion_sm port 
	(
		clk		: in std_logic := '0';
		reset_n		: in std_logic := '0';
		IN_MOTION		: in std_logic;

		less		: in std_logic;
		equal		: in std_logic;
		greater		: in std_logic;
		
		OUT_MOTION		: out std_logic;
		new_position : out std_logic_vector(3 downto 0)
	);
end component;
	
component compx4 is
 	port (
			four_bit_a_in, four_bit_b_in 	: in std_logic_vector(3 downto 0);
			a_equal_b, a_lesser_b, a_great_b		: out std_logic
		   
			);
end component; 
 
 ------------------------------------------------------------------------------
 -- Defining types and signals
 --------------------------------
  

 SIGNAL position, next_position, target_position, next_target_position : std_logic_vector(3 downto 0);
 
 SIGNAL greater, less, equal, motion_flag_in, motion_flag_out : std_logic;

 ------------------------------------------------------------------------------
 ------------------------------------------------------------------------------
BEGIN


	comp0: compx4 port map(
		position,
		target_position, 
		equal,
		less,
		greater
		);
		
	sm0: directional_motion_sm port map(
		clk,
		reset_n,
		motion_flag_in,
		less,
		equal,
		greater,
		motion_flag_out,
		next_position
	);
Button_Detection: PROCESS (clk, reset_n, extender_out)  -- this process synchronizes the activity to a clock

	BEGIN
		
	
	IF (reset_n ='0') THEN --ok this finally works
		current_position <= "0000";
	
	ELSIF(rising_edge(clk) ) THEN
	
		IF ((motion_button='1') AND (extender_out='1')) THEN
			SYSTEM_FAULT_ERROR <= '1';
		ELSIF (motion_button='1') THEN
			next_target_position <= position_feed;
			SYSTEM_FAULT_ERROR <= '0';
		END IF;

	--------------------------------------------------------------------------------------------
	--CONDITION ON FLAG_IN MIGHT BE AN ISSUE IDK IDK 
	--------------------------------------------------------------------------------------------
		IF ((motion_flag_in='0') AND NOT(next_target_position="0000")) THEN --when arm isnt moving and there is a next target 
			
			motion_flag_in <= '1'; -- internal signal to control the state machine
			
			IF(NOT(target_position = next_target_position)) THEN
				target_position <= next_target_position;
			END IF;
			
			next_target_position <= "0000";
			
			position <= next_position;
			
		ELSIF(motion_flag_in='1') THEN --when arm is moving
			
			
			position <= next_position;
			motion_flag_in <= motion_flag_out;
		
			
		
		END IF;
		
		current_position <=position;
		in_motion <= motion_flag_in;
		
	END IF;
	
	
	
	
END PROCESS;



 END ARCHITECTURE top;