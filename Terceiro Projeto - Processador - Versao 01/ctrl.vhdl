-- controller
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
 
entity ctrl is
  port ( rst   : in STD_LOGIC;
         start : in STD_LOGIC;
         clk   : in STD_LOGIC; 
         imm   : out std_logic_vector(3 downto 0);
			estado_atual : out std_logic_vector(3 downto 0)
			-- you will need to add more ports here as design grows
       );
end ctrl;

architecture fsm of ctrl is
  type state_type is (s0,s1,s2,s3,s4,s5,done);
  signal state : state_type := s0; 
signal linha: integer;  

	-- constants declared for ease of reading code
	
	constant mova    : std_logic_vector(3 downto 0) := "0000";
	constant movr    : std_logic_vector(3 downto 0) := "0001";
	constant load    : std_logic_vector(3 downto 0) := "0010";
	constant add	   : std_logic_vector(3 downto 0) := "0011";
   constant sub	   : std_logic_vector(3 downto 0) := "0100";
	constant andr    : std_logic_vector(3 downto 0) := "0101";
   constant orr     : std_logic_vector(3 downto 0) := "0110";
   constant jmp	   : std_logic_vector(3 downto 0) := "0111";
	constant inv     : std_logic_vector(3 downto 0) := "1000";
	constant halt	   : std_logic_vector(3 downto 0) := "1001";


	-- as you add more code for your algorithms make sure to increase the
	-- array size. ie. 2 lines of code here, means array size of 0 to 1.
	type PM_BLOCK is array (0 to 9) of std_logic_vector(7 downto 0);
	constant PM : PM_BLOCK := (	

	-- This algorithm loads an immediate value of 3 and then stops
    "00100101",   -- load 5
	 "00010100",   -- salva em r01
	 "00100011",   -- load 3
	 "01100100",		-- OR (5 or 3 = 7)
	 "00100101",   -- load 5
	 "00010100",   -- salva em r01
	 "00100011",   -- load 3
	 "01010100",		-- AND (5 and 3 = 1)
	 "00110100",   -- soma acumulador com r01 (1+5=6)
 	 "00100011"   -- load 3

--	 "0100",   -- volta do r01
--	 "00001000",   -- volta de r02
--	"10011111"		-- halt
    );
  		 
begin
	process (clk,rst)
	-- these variables declared here don't change.
	-- these are the only data allowed inside
	-- our otherwise pure FSM
  
	variable IR : std_logic_vector(7 downto 0);
	variable OPCODE : std_logic_vector( 3 downto 0):="0000";
	variable ADDRESS : std_logic_vector (3 downto 0);
	variable PC : integer;
    
	begin
		-- don't forget to take care of rst
		if(rst= '1') then
			PC := 0;
			state <= s0;
					
		elsif (clk'event and clk = '0') then		      
      --
      -- steady state
      --    
				case state is				  
				  when s0 =>    -- steady state
					 PC := 0;
					 imm <= "0000";
					 if start = '1' then
						state <= s1;
					 else 
						state <= s0;
					 end if;					 
				  when s1 =>				-- fetch instruction
							IR := PM(PC);
							OPCODE := IR(7 downto 4);
							ADDRESS:= IR(3 downto 0);
							state <= s2;					 
									
					when s2 =>				-- increment PC
							case OPCODE is
							when halt =>
								state <= done;
							when jmp =>
								linha<=to_integer(unsigned(ADDRESS));
								--PC:= to_integer(ADDRESS);
							when others =>
								if PC=9 then
									PC:=0;
								else
								PC := PC + 1;
								end if;
								state <= s3;
							end case;
				  when s3 =>                              
						imm <= address;                   
						estado_atual <= OPCODE;										
						state <= s4;
				  when s4 =>  
						state <= s1;	 		 
					
				  when done =>                            -- stay here forever
					 estado_atual<="1001";
					 state <= done;
					 
				  when others =>
					 
				end case;
    end if;
  end process;				
end fsm;