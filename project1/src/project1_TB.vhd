library IEEE;

use IEEE.Std_logic_1164.all;

entity project1_TB is  -- testbench entity has no ports

end project1_TB; 

architecture BENCH of project1_TB is      

--  Stimulus signals - to connect testbench to UUT input ports
signal A, B, C, D : std_logic;
 

--  Observed signals - to connect testbench to UUT output ports
signal f_out : std_logic;
begin

  process          

  begin 

--  Signal assignment statements generating stimulus values

--input 0000
	A <= '0'; B <= '0'; C <= '0'; D <= '0';

    wait for 10ns;

    assert(f_out <= '0')

    report "You done fucked up @ input 0000" severity error;
	
--input 0001
	A <= '0'; B <= '0'; C <= '0'; D <= '1';

    wait for 10ns;

    assert(f_out <= '0')

    report "You done fucked up @ input 0001" severity error;
	
--input 0010
	A <= '0'; B <= '0'; C <= '1'; D <= '0';

    wait for 10ns;

    assert(f_out <= '1')

    report "You done fucked up @ input 0010" severity error;	
	
--input 0011
	A <= '0'; B <= '0'; C <= '1'; D <= '1';

    wait for 10ns;

    assert(f_out <= '0')

    report "You done fucked up @ input 0011" severity error;
	
--input 0100
	A <= '0'; B <= '1'; C <= '0'; D <= '0';

    wait for 10ns;

    assert(f_out <= '0')

    report "You done fucked up @ input 0100" severity error;
	
--input 0101
	A <= '0'; B <= '1'; C <= '0'; D <= '1';

    wait for 10ns;

    assert(f_out <= '1')

    report "You done fucked up @ input 0101" severity error;  
	
--input 0110
	A <= '0'; B <= '1'; C <= '1'; D <= '0';

    wait for 10ns;

    assert(f_out <= '0')

    report "You done fucked up @ input 0110" severity error;
	
--input 0111
	A <= '0'; B <= '1'; C <= '1'; D <= '1';

    wait for 10ns;

    assert(f_out <= '1')

    report "You done fucked up @ input 0111" severity error;
	
--input 1000
	A <= '1'; B <= '0'; C <= '0'; D <= '0';

    wait for 10ns;

    assert(f_out <= '0')

    report "You done fucked up @ input 1000" severity error;
	
--input 1001
	A <= '1'; B <= '0'; C <= '0'; D <= '1';

    wait for 10ns;

    assert(f_out <= '1')

    report "You done fucked up @ input 1001" severity error;
	
--input 1010
	A <= '1'; B <= '0'; C <= '1'; D <= '0';

    wait for 10ns;

    assert(f_out <= '0')

    report "You done fucked up @ input 1010" severity error;
	
--input 1011
	A <= '1'; B <= '0'; C <= '1'; D <= '1';

    wait for 10ns;

    assert(f_out <= '1')

    report "You done fucked up @ input 1011" severity error;
	
--input 1100
	A <= '1'; B <= '1'; C <= '0'; D <= '0';

    wait for 10ns;

    assert(f_out <= '0')

    report "You done fucked up @ input 1100" severity error;
	
--input 1101
	A <= '1'; B <= '1'; C <= '0'; D <= '1';

    wait for 10ns;

    assert(f_out <= '1')

    report "You done fucked up @ input 1101" severity error;  	
	
--input 1110
	A <= '1'; B <= '1'; C <= '1'; D <= '0';

    wait for 10ns;

    assert(f_out <= '0')

    report "You done fucked up @ input 1110" severity error;
	
--input 1111
	A <= '1'; B <= '1'; C <= '1'; D <= '1';

    wait for 10ns;

    assert(f_out <= '0')

    report "You done fucked up @ input 1111" severity error; 	

    wait; -- Ensures testbench terminates

  end process; 

 --  Unit under test port map

    UUT: entity work.project1(project1)

  port map (

  A => A,
  B => B,
  C => C,
  D => D,
  f_out => f_out
	);

end BENCH;