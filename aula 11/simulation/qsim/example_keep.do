onerror {quit -f}
vlib work
vlog -work work example_keep.vo
vlog -work work example_keep.vt
vsim -novopt -c -t 1ps -L cyclone_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.example_keep_vlg_vec_tst
vcd file -direction example_keep.msim.vcd
vcd add -internal example_keep_vlg_vec_tst/*
vcd add -internal example_keep_vlg_vec_tst/i1/*
add wave /*
run -all
