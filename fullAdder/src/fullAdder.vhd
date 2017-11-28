library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

 

entity fullAdder is

    Port ( in1, in2, c_in : in std_logic;

           sum, c_out : out std_logic);

end fullAdder;

 

architecture behavior of fullAdder is

--declare internal signals
signal S1, S2, S3 : std_logic;
 
begin 

	
--CSAs for the fullAdder
S1 <= in1 xor in2;
S2 <= c_in and S1;
S3 <= in1 and in2;
sum <= S1 xor c_in;
c_out <= S2 or S3;

    
end behavior;
