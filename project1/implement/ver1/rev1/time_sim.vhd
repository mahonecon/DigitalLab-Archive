--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.28xd
--  \   \         Application: netgen
--  /   /         Filename: time_sim.vhd
-- /___/   /\     Timestamp: Tue Sep 26 19:42:59 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl -pcf project1.pcf -tpw 0 -rpw 100 -s 3 -ar Structure -insert_pp_buffers true project1.ncd time_sim.vhd 
-- Device	: 7a100tcsg324-3 (ADVANCED 1.04 2012-07-09)
-- Input file	: project1.ncd
-- Output file	: time_sim.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity project1 is
  port (
    A : in STD_LOGIC := 'X'; 
    B : in STD_LOGIC := 'X'; 
    C : in STD_LOGIC := 'X'; 
    D : in STD_LOGIC := 'X'; 
    f_out : out STD_LOGIC 
  );
end project1;

architecture Structure of project1 is
  signal f_out_OBUF_20 : STD_LOGIC; 
  signal A_IBUF_21 : STD_LOGIC; 
  signal B_IBUF_22 : STD_LOGIC; 
  signal C_IBUF_23 : STD_LOGIC; 
  signal D_IBUF_24 : STD_LOGIC; 
  signal NlwBufferSignal_f_out_OBUF_I : STD_LOGIC; 
begin
  f_out_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y51"
    )
    port map (
      I => NlwBufferSignal_f_out_OBUF_I,
      O => f_out
    );
  A_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y58",
      PATHPULSE => 50 ps
    )
    port map (
      O => A_IBUF_21,
      I => A
    );
  B_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y50",
      PATHPULSE => 50 ps
    )
    port map (
      O => B_IBUF_22,
      I => B
    );
  C_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y54",
      PATHPULSE => 50 ps
    )
    port map (
      O => C_IBUF_23,
      I => C
    );
  D_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y62",
      PATHPULSE => 50 ps
    )
    port map (
      O => D_IBUF_24,
      I => D
    );
  U9 : X_LUT6
    generic map(
      LOC => "SLICE_X89Y53",
      INIT => X"7A7A7A7A04040404"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => D_IBUF_24,
      ADR2 => B_IBUF_22,
      ADR0 => A_IBUF_21,
      ADR1 => C_IBUF_23,
      O => f_out_OBUF_20
    );
  NlwBufferBlock_f_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => f_out_OBUF_20,
      O => NlwBufferSignal_f_out_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

