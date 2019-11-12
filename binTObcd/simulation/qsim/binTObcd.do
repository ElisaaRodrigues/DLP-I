onerror {quit -f}
vlib work
vlog -work work binTObcd.vo
vlog -work work binTObcd.vt
vsim -novopt -c -t 1ps -L cyclone_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.binTObcd_vlg_vec_tst
vcd file -direction binTObcd.msim.vcd
vcd add -internal binTObcd_vlg_vec_tst/*
vcd add -internal binTObcd_vlg_vec_tst/i1/*
add wave /*
run -all
