onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /timer0_9h/rst
add wave -noupdate /timer0_9h/clk_50MHz
add wave -noupdate /timer0_9h/clk_1sec
add wave -noupdate /timer0_9h/clk_out_unidade
add wave -noupdate /timer0_9h/clk_out_dezena
add wave -noupdate -radix unsigned /timer0_9h/bin0_9
add wave -noupdate -radix unsigned /timer0_9h/bin20_9
add wave -noupdate -radix unsigned /timer0_9h/bin30_9
add wave -noupdate -radix hexadecimal /timer0_9h/ssd_unidade
add wave -noupdate -radix hexadecimal /timer0_9h/ssd_dezena
add wave -noupdate -radix hexadecimal /timer0_9h/ssd_centena
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {999999999999277 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits sec
update
WaveRestoreZoom {0 ps} {1050000000000021 ps}
