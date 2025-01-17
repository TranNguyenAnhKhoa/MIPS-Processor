transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/ComputerEngineer(70)/HK5(2023)/CE213-HDL(4)/PRACTICE/Lab45 {D:/ComputerEngineer(70)/HK5(2023)/CE213-HDL(4)/PRACTICE/Lab45/MIPS_datapath.v}
vlog -vlog01compat -work work +incdir+D:/ComputerEngineer(70)/HK5(2023)/CE213-HDL(4)/PRACTICE/Lab45 {D:/ComputerEngineer(70)/HK5(2023)/CE213-HDL(4)/PRACTICE/Lab45/ALU.v}
vlog -vlog01compat -work work +incdir+D:/ComputerEngineer(70)/HK5(2023)/CE213-HDL(4)/PRACTICE/Lab45 {D:/ComputerEngineer(70)/HK5(2023)/CE213-HDL(4)/PRACTICE/Lab45/Sign_extend.v}
vlog -vlog01compat -work work +incdir+D:/ComputerEngineer(70)/HK5(2023)/CE213-HDL(4)/PRACTICE/Lab45 {D:/ComputerEngineer(70)/HK5(2023)/CE213-HDL(4)/PRACTICE/Lab45/Register.v}
vlog -vlog01compat -work work +incdir+D:/ComputerEngineer(70)/HK5(2023)/CE213-HDL(4)/PRACTICE/Lab45 {D:/ComputerEngineer(70)/HK5(2023)/CE213-HDL(4)/PRACTICE/Lab45/DataMemory.v}

vlog -vlog01compat -work work +incdir+D:/ComputerEngineer(70)/HK5(2023)/CE213-HDL(4)/PRACTICE/Lab45 {D:/ComputerEngineer(70)/HK5(2023)/CE213-HDL(4)/PRACTICE/Lab45/MIPSdatapath_testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  MIPSdatapath_testbench

add wave *
view structure
view signals
run -all
