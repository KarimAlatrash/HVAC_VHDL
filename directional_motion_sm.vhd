library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

------------------------------------------------------------------------------
--TODO
--1. fix S0 and s3 so position changes only(or primarily) occur in decoder block
--2. Create simulation to test your garbage code
--3. make sure there are no abrupt changes in position (ie current_position should be shown to increment)
------------------------------------------------------------------------------

Entity directional_motion_sm is port 
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
end Entity;
	
 Architecture SM of directional_motion_sm is
 
 ------------------------------------------------------------------------------
 --Components Section
 ------------------------------------------------------------------------------
 component U_D_Bin_Countrer4bit

 	port (
			CLK		: in std_logic := '0';
			RESET_n		: in std_logic := '0';
			IN_MOTION		: in std_logic := '0'; --ESEENTIALY THE ENABLE BIT
			EQUALTO		: in std_logic := '0';
			UP1_DOWN0		: in std_logic := '0';
			COUNTER_BITS		: out std_logic_vector(3 downto 0)
			);
end component;

 
 ------------------------------------------------------------------------------
 -- Defining types and signals
 --------------------------------
  
 TYPE STATE_NAMES IS (S0, S1, S2);   -- list all the STATE_NAMES values
 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES
 
 SIGNAL target_position, next_target_position, position_plus, position_minus : std_logic_vector(3 downto 0);
 

 ------------------------------------------------------------------------------
 ------------------------------------------------------------------------------
 BEGIN
 
 count : U_D_Bin_Countrer4bit port map (
		clk,
		reset_n,
		in_motion, --will not count if this is 0
		equal, -- will not count if this is 1
		less, --counts up when this is 1
		new_position
		);
		
 
Register_Section: PROCESS (clk, reset_n, equal)  -- this process synchronizes the activity to a clock

BEGIN	
	IF (reset_n = '0') THEN
		current_state <= S0;
	
	ELSIF(rising_edge(clk) ) THEN
		current_state <= next_State;
				
	END IF;
	

END PROCESS;

-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (current_state, equal) 

BEGIN
	
	
     CASE current_state IS
          WHEN S0 =>		
				IF(less='1') THEN
					next_state <= S1;
				ELSIF(greater='1') THEN
					next_state <= S2;
				ELSE
					next_state <= S0;
				END IF;
			
			WHEN S1 =>		
				IF(less='1') THEN
					next_state <= S1;
				ELSE
					next_state <= S0;
				END IF;
			
			WHEN S2 =>		
				IF(greater='1') THEN
					next_state <= S2;
				ELSE
					next_state <= S0;
				END IF;
			
	END CASE;

 END PROCESS;

-- DECODER SECTION PROCESS (Moore Form)

Decoder_Section: PROCESS (current_state) 

BEGIN
		
		--YOU MAY RUN INTO ISSUE WHERE COUNTING COMPONENT IS NOT BEING TRIGGERED ??? IDK BRO IVE NEVER TOUCHED A CIRCUIT
		
     CASE current_state IS
	      WHEN S0 =>		
			OUT_MOTION <= '0';
			
         WHEN S1 =>
			OUT_MOTION <= '1';

         WHEN S2 =>	
			OUT_MOTION <= '1';
			
         
  END CASE;
 END PROCESS;

 END ARCHITECTURE SM;