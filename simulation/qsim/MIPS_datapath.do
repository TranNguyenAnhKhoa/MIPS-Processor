onerror {quit -f}
vlib work
vlog -work work MIPS_datapath.vo
vlog -work work MIPS_datapath.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Register_vlg_vec_tst
vcd file -direction MIPS_datapath.msim.vcd
vcd add -internal Register_vlg_vec_tst/*
vcd add -internal Register_vlg_vec_tst/i1/*
add wave /*
run -all
