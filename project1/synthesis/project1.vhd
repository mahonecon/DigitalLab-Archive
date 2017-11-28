--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.28xd
--  \   \         Application: netgen
--  /   /         Filename: project1.vhd
-- /___/   /\     Timestamp: Tue Sep 26 19:41:19 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -ofmt vhdl -intstyle silent -w project1.ngc project1.vhd 
-- Device	: xc7a100tcsg324-3
-- Input file	: project1.ngc
-- Output file	: project1.vhd
-- # of Entities	: 1
-- Design Name	: project1
-- Xilinx	: C:\Xilinx\14.2\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity project1 is
  port (
    A : in STD_LOGIC := 'X'; 
    B : in STD_LOGIC := 'X'; 
    C : in STD_LOGIC := 'X'; 
    D : in STD_LOGIC := 'X'; 
    f_out : out STD_LOGIC 
  );
end project1;

architecture STRUCTURE of project1 is
  signal A_IBUF_0 : STD_LOGIC; 
  signal B_IBUF_1 : STD_LOGIC; 
  signal C_IBUF_2 : STD_LOGIC; 
  signal D_IBUF_3 : STD_LOGIC; 
  signal NET168 : STD_LOGIC; 
  signal NET81 : STD_LOGIC; 
  signal NET63 : STD_LOGIC; 
  signal NET212 : STD_LOGIC; 
  signal NET72 : STD_LOGIC; 
  signal NET237 : STD_LOGIC; 
  signal NET90 : STD_LOGIC; 
  signal NET228 : STD_LOGIC; 
  signal f_out_OBUF_12 : STD_LOGIC; 
begin
  U2 : INV
    port map (
      I => A_IBUF_0,
      O => NET168
    );
  U7 : AND3
    port map (
      I0 => D_IBUF_3,
      I1 => NET212,
      I2 => A_IBUF_0,
      O => NET81
    );
  U1 : AND3
    port map (
      I0 => D_IBUF_3,
      I1 => B_IBUF_1,
      I2 => NET168,
      O => NET63
    );
  U3 : INV
    port map (
      I => B_IBUF_1,
      O => NET212
    );
  U6 : AND3
    port map (
      I0 => D_IBUF_3,
      I1 => NET237,
      I2 => B_IBUF_1,
      O => NET72
    );
  U4 : INV
    port map (
      I => C_IBUF_2,
      O => NET237
    );
  U8 : AND4
    port map (
      I0 => NET228,
      I1 => C_IBUF_2,
      I2 => NET212,
      I3 => NET168,
      O => NET90
    );
  U5 : INV
    port map (
      I => D_IBUF_3,
      O => NET228
    );
  U9 : OR4
    port map (
      I0 => NET90,
      I1 => NET81,
      I2 => NET72,
      I3 => NET63,
      O => f_out_OBUF_12
    );
  A_IBUF : IBUF
    port map (
      I => A,
      O => A_IBUF_0
    );
  B_IBUF : IBUF
    port map (
      I => B,
      O => B_IBUF_1
    );
  C_IBUF : IBUF
    port map (
      I => C,
      O => C_IBUF_2
    );
  D_IBUF : IBUF
    port map (
      I => D,
      O => D_IBUF_3
    );
  f_out_OBUF : OBUF
    port map (
      I => f_out_OBUF_12,
      O => f_out
    );

end STRUCTURE;

