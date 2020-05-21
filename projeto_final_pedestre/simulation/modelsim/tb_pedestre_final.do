vcom -93 -work work {../../semaforo_pedestre.vhd}
vcom -93 -work work {../../count_up.vhd}
vcom -93 -work work {../../pedestre_final.vhd}
vcom -93 -work work {../../bin2ssd.vhd}
vcom -93 -work work {../../tempo_min_carro.vhd}

vsim work.pedestre_final

do wave_final.do

force -freeze sim:/pedestre_final/rst_in 1 0, 0 100 ps
force -freeze sim:/pedestre_final/clk_50MHz 1 0, 0 {0.5sec} -r 1sec
force -freeze sim:/pedestre_final/botao_in 0 0, 1 10sec, 0 12 sec, 1 200sec, 0 202 sec
force -freeze sim:/pedestre_final/sensor_escuro_in 1 0
run 300 sec
force -freeze sim:/pedestre_final/botao_in 0 0, 1 10sec, 0 12 sec, 1 200sec, 0 202 sec
force -freeze sim:/pedestre_final/sensor_escuro_in 0 0
run 300 sec



