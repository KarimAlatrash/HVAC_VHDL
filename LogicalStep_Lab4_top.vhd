
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab4_top IS
   PORT
	(
   Clk			: in	std_logic;
	rst_n			: in	std_logic;
	pb				: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); 
   leds			: out std_logic_vector(15 downto 0)	
	);
END LogicalStep_Lab4_top;

ARCHITECTURE Circuit OF LogicalStep_Lab4_top IS


component Bidir_shift_reg is
	port (
		CLK				: in std_logic := '0';
		RESET_n			: in std_logic := '0';
		CLK_EN			: in std_logic := '0';
		LEFT0_RIGHT1	: in std_logic := '0';
		REG_BITS			: out std_logic_vector(3 downto 0)

	);
end component;

component U_D_Bin_Counter8bit is 
	port (
		CLK				: in std_logic := '0';
		RESET_n			: in std_logic := '0';
		CLK_EN			: in std_logic := '0';
		UP1_DOWN0		: in std_logic := '0';
		COUNTER_BITS	: out std_logic_vector(3 downto 0)
	);
end component;

component Extender is
port
(
	extender_toggle, xmotion_in, ymotion_in 						: in std_logic;
	current_extension											: in std_logic_vector(3 downto 0);
	clk_en, down0_up1, grappler_enable 	: out std_logic;
	extender_out: out std_logic;
	clk_in, reset_n	: in std_logic
);
end component;


component directional_motion port 
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
end component;

component Grappler is 
port
(
	clk_in, reset_n							: in std_logic;
	grappler_enable, grappler_toggle		: in std_logic;
	grappler_on									: out std_logic
);
end component;


signal ymotion, xmotion : std_logic;

signal current_extension_sig : std_logic_vector(3 downto 0);
signal extending1_retract0, move_enable : std_logic;
signal grappler_enable_sig : std_logic;
signal extender_status : std_logic;
signal SYSTEM_FAULT_ERROR : std_logic;
signal grapple_en_temp : std_logic;

BEGIN


xdir : directional_motion port map (
		clk,
		rst_n,
		pb(2),
		extender_status,
		sw(7 downto 4),
		leds(15 downto 12),
		xmotion,
		leds(0)
		);
		
ydir : directional_motion port map (
		clk,
		rst_n,
		pb(2),
		extender_status,
		sw(3 downto 0),
		leds(11 downto 8),
		ymotion,
		SYSTEM_FAULT_ERROR
		);
		
ShiftReg : Bidir_shift_reg port map(
	CLK => Clk,
	RESET_n => rst_n,
	CLK_EN => move_enable,
	LEFT0_RIGHT1 => extending1_retract0,
	REG_BITS => current_extension_sig
);

leds(7 downto 4) <= current_extension_sig;
grapple_en_temp <= grappler_enable_sig;

leds(2) <= xmotion;

leds(1) <= ymotion;

Extendo : Extender port map(
	clk_in => Clk,
	reset_n => rst_n,
	down0_up1 => extending1_retract0,
	clk_en => move_enable,
	extender_toggle => pb(1),
	ymotion_in => ymotion,
	xmotion_in => xmotion,
	current_extension => current_extension_sig,
	extender_out => extender_status,
	grappler_enable => grappler_enable_sig
	
);

Grap : Grappler port map(
	clk_in => Clk,
	reset_n => rst_n,
	grappler_toggle => pb(0),
	grappler_enable => grappler_enable_sig,
	grappler_on => leds(3)
);
		
--QUESTIONS
--WHAT IS GRAPPLER ON FOR VS GRAPPLER_ENABLE
--WHAT IS EXTENDER OUT FOR
--WHERE IS THE SYSTEM FAULT ERROR SIGNAL
		

END Circuit;
