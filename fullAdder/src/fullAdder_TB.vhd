library IEEE;

use IEEE.Std_logic_1164.all;

entity fullAdder_TB is  -- testbench entity has no ports

end fullAdder_TB; 

architecture BENCH of fullAdder_TB is      

--  Stimulus signals - to connect testbench to UUT input ports
signal in1, in2, c_in : std_logic;
 

--  Observed signals - to connect testbench to UUT output ports
signal sum, c_out : std_logic;
begin

  process          

  begin 

--  Signal assignment statements generating stimulus values

--input 000
	in1 <= '0'; in2 <= '0'; c_in <= '0';

    wait for 10ns;

    assert(sum = '0' and c_out = '0')

    report "You done fucked up @ input 000" severity error;
	
--input 001	
	in1 <= '1'; in2 <= '0'; c_in <= '0';

    wait for 10ns;

    assert(sum = '1' and c_out = '0')

    report "You done fucked up @ input 001" severity error;

--input 010	
	in1 <= '0'; in2 <= '1'; c_in <= '0';

    wait for 10ns;

    assert(sum = '1' and c_out = '0')

    report "You done fucked up @ input 010" severity error;

--input 011	
	in1 <= '1'; in2 <= '1'; c_in <= '0';

    wait for 10ns;

    assert(sum = '0' and c_out = '1')

    report "You done fucked up @ input 011" severity error;
	
--input 100	
	in1 <= '0'; in2 <= '0'; c_in <= '1';

    wait for 10ns;

    assert(sum = '1' and c_out = '0')

    report "You done fucked up @ input 100" severity error;
	
--input 101	
	in1 <= '1'; in2 <= '0'; c_in <= '1';

    wait for 10ns;

    assert(sum = '0' and c_out = '1')

    report "You done fucked up @ input 101" severity error;
	
--input 110	
	in1 <= '0'; in2 <= '1'; c_in <= '1';

    wait for 10ns;

    assert(sum = '0' and c_out = '1')

    report "You done fucked up @ input 110" severity error;
	
--input 111	
	in1 <= '1'; in2 <= '1'; c_in <= '1';

    wait for 10ns;

    assert(sum = '1' and c_out = '1')

    report "You done fucked up @ input 111" severity error;	

    wait; -- Ensures testbench terminates

  end process; 

 --  Unit under test port map

    UUT: entity work.fullAdder(behavior)

  port map (

    in1  => in1, 
    in2  => in2,
	c_in => c_in,
	sum => sum,
	c_out => c_out
	);

end BENCH;