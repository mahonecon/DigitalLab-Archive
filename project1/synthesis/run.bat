set XILINX=C:\Xilinx\14.2\ISE_DS\ISE
call "C:\Xilinx\14.2\ISE_DS\ISE\bin\nt64\xst.exe" -ifn project1.xst >> synthesis.dfml
call "C:\Xilinx\14.2\ISE_DS\ISE\bin\nt64\netgen.exe" -ofmt vhdl -intstyle silent -w project1.ngc  project1.vhd >> synthesis.dfml
