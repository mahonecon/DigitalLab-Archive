@set XILINX=C:\Xilinx\14.2\ISE_DS\ISE
@set PATH=C:\Xilinx\14.2\ISE_DS\ISE\bin\nt64
@"C:\Xilinx\14.2\ISE_DS\ISE\bin\nt64\netgen.exe" -w -sim -ofmt vhdl -pcf "project1.pcf"  -tpw 0  -rpw 100  -s  3  -ar  Structure  -insert_pp_buffers true "project1.ncd" "time_sim.vhd"
