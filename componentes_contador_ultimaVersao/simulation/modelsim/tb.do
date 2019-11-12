vcom -93 -work work {../../bin2ssd.vhd}
vcom -93 -work work {../../count_up.vhd}
vcom -93 -work work {../../timer0_9H.vhd}
vsim work.timer0_9h 

do wave.do
#add wave -position end  sim:/timer0_9h/clk_50MHz
#add wave -position end  sim:/timer0_9h/ssd_centena
#add wave -position end  sim:/timer0_9h/ssd_dezena
#add wave -position end  sim:/timer0_9h/ssd_unidade
#
#add wave -position 1  sim:/timer0_9h/rst
#add wave -position end  sim:/timer0_9h/rst
#add wave -position end  sim:/timer0_9h/ssd_unidade
#add wave -position end  sim:/timer0_9h/ssd_dezena
#add wave -position end  sim:/timer0_9h/ssd_centena
#add wave -position end  sim:/timer0_9h/bin0_9
#add wave -position end  sim:/timer0_9h/bin20_9
#add wave -position end  sim:/timer0_9h/bin30_9
#add wave -position end  sim:/timer0_9h/tipo_s
#add wave -position end  sim:/timer0_9h/clk_1sec
#add wave -position end  sim:/timer0_9h/clk_out_unidade
#add wave -position end  sim:/timer0_9h/clk_out_dezena
force -freeze sim:/timer0_9h/clk_50MHz 1 0, 0 {10 ms} -r 20ms
force -freeze sim:/timer0_9h/rst 1 0
run 20ps
force -freeze sim:/timer0_9h/rst 0 0
run 1000 sec
