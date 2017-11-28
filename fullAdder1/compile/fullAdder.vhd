-------------------------------------------------------------------------------
--
-- Title       : fullAdder
-- Design      : fullAdder1
-- Author      : Computer Science
-- Company     : Rowan University
--
-------------------------------------------------------------------------------
--
-- File        : c:\my_design\MahoneyFall2017\fullAdder1\compile\fullAdder.vhd
-- Generated   : Tue Sep 12 19:46:06 2017
-- From        : c:\my_design\MahoneyFall2017\fullAdder1\src\fullAdder.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;


-- other libraries declarations
-- synthesis translate_off 
library ARTIX7;
library IEEE;
use IEEE.vital_timing.all;
-- synthesis translate_on 

entity fullAdder is
  port(
       c_in : in std_ulogic;
       in1 : in std_ulogic;
       in2 : in std_ulogic;
       c_out : out std_ulogic;
       sum : out std_ulogic
  );
end fullAdder;

architecture fullAdder of fullAdder is

---- Component declarations -----

component AND2
  port (
       I0 : in std_ulogic;
       I1 : in std_ulogic;
       O : out std_ulogic
  );
end component;
component OR2
  port (
       I0 : in std_ulogic;
       I1 : in std_ulogic;
       O : out std_ulogic
  );
end component;
component XOR2
  port (
       I0 : in std_ulogic;
       I1 : in std_ulogic;
       O : out std_ulogic
  );
end component;

---- Signal declarations used on the diagram ----

signal S1 : std_ulogic;
signal S2 : std_ulogic;
signal S3 : std_ulogic;

begin

----  Component instantiations  ----

U1 : XOR2
  port map(
       I0 => in2,
       I1 => in1,
       O => S1
  );

U2 : XOR2
  port map(
       I0 => c_in,
       I1 => S1,
       O => sum
  );

U3 : AND2
  port map(
       I0 => in2,
       I1 => in1,
       O => S3
  );

U4 : AND2
  port map(
       I0 => c_in,
       I1 => S1,
       O => S2
  );

U5 : OR2
  port map(
       I0 => S3,
       I1 => S2,
       O => c_out
  );


end fullAdder;
