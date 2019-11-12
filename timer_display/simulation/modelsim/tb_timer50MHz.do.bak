 vcom -93 -work work {../../timerOto9.vhd}

vsim work.timeroto9(ifsc1)

add wave -position end  sim:/timeroto9/rst
add wave -position end  sim:/timeroto9/clk
add wave -position end  sim:/timeroto9/clk_out
add wave -position end  sim:/timeroto9/q
add wave -position end  sim:/timeroto9/ssd_out
force -freeze sim:/timeroto9/rst 1 0 
run 10 ps
force -freeze sim:/timeroto9/rst 0 0
force -freeze sim:/timeroto9/clk 1 0, 0 {0.5 sec} -r {1sec}
run 20 sec


