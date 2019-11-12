onerror {quit -f}
vlib work
vlog -work work address_decoder.vo
vlog -work work address_decoder.vt
vsim -novopt -c -t 1ps -L cyclone_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.binTOgray_vlg_vec_tst
vcd file -direction address_decoder.msim.vcd
vcd add -internal binTOgray_vlg_vec_tst/*
vcd add -internal binTOgray_vlg_vec_tst/i1/*
add wave /*
run -all
