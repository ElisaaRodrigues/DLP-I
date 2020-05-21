vcom -93 -work work {../../semaforo_pedestre.vhd}

vsim work.semaforo_pedestre

do wave.do

force -freeze sim:/semaforo_pedestre/rst 1 0, 0 1
force -freeze sim:/semaforo_pedestre/clk 1 0, 0 {0.5sec} -r 1sec
run 100
force -freeze sim:/semaforo_pedestre/sensor_escuro 0 0, 1 10 sec, 0 70sec
force -freeze sim:/semaforo_pedestre/botao 1 0, 0 60sec, 1 80sec, 0 90sec
run 100sec