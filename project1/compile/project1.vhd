-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : project1
-- Author      : Computer Science
-- Company     : Rowan University
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\MahoneyFall2017\project1\compile\project1.vhd
-- Generated   : Tue Sep 26 19:08:59 2017
-- From        : C:\My_Designs\MahoneyFall2017\project1\src\project1.bde
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

entity project1 is
  port(
       A : in std_ulogic;
       B : in std_ulogic;
       C : in std_ulogic;
       D : in std_ulogic;
       f_out : out std_ulogic
  );
end project1;

architecture project1 of project1 is

---- Component declarations -----

component AND3
  port (
       I0 : in std_ulogic;
       I1 : in std_ulogic;
       I2 : in std_ulogic;
       O : out std_ulogic
  );
end component;
component AND4
  port (
       I0 : in std_ulogic;
       I1 : in std_ulogic;
       I2 : in std_ulogic;
       I3 : in std_ulogic;
       O : out std_ulogic
  );
end component;
component INV
  port (
       I : in std_ulogic;
       O : out std_ulogic
  );
end component;
component OR4
  port (
       I0 : in std_ulogic;
       I1 : in std_ulogic;
       I2 : in std_ulogic;
       I3 : in std_ulogic;
       O : out std_ulogic
  );
end component;

---- Signal declarations used on the diagram ----

signal NET168 : std_ulogic;
signal NET212 : std_ulogic;
signal NET228 : std_ulogic;
signal NET237 : std_ulogic;
signal NET63 : std_ulogic;
signal NET72 : std_ulogic;
signal NET81 : std_ulogic;
signal NET90 : std_ulogic;

begin

----  Component instantiations  ----

U1 : AND3
  port map(
       I0 => D,
       I1 => B,
       I2 => NET168,
       O => NET63
  );

U2 : INV
  port map(
       I => A,
       O => NET168
  );

U3 : INV
  port map(
       I => B,
       O => NET212
  );

U4 : INV
  port map(
       I => C,
       O => NET237
  );

U5 : INV
  port map(
       I => D,
       O => NET228
  );

U6 : AND3
  port map(
       I0 => D,
       I1 => NET237,
       I2 => B,
       O => NET72
  );

U7 : AND3
  port map(
       I0 => D,
       I1 => NET212,
       I2 => A,
       O => NET81
  );

U8 : AND4
  port map(
       I0 => NET228,
       I1 => C,
       I2 => NET212,
       I3 => NET168,
       O => NET90
  );

U9 : OR4
  port map(
       I0 => NET90,
       I1 => NET81,
       I2 => NET72,
       I3 => NET63,
       O => f_out
  );


end project1;
