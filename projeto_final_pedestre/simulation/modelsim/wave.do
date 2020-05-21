onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color {Medium Slate Blue} /semaforo_pedestre/rst
add wave -noupdate -color {Medium Slate Blue} /semaforo_pedestre/clk
add wave -noupdate /semaforo_pedestre/line__44/contador
add wave -noupdate -divider ENTRADAS
add wave -noupdate -color Cyan /semaforo_pedestre/botao
add wave -noupdate -color {Violet Red} /semaforo_pedestre/sensor_escuro
add wave -noupdate -divider SAIDAS
add wave -noupdate /semaforo_pedestre/saida_display
add wave -noupdate -divider carro
add wave -noupdate /semaforo_pedestre/vd_c
add wave -noupdate -color Yellow /semaforo_pedestre/am_c
add wave -noupdate -color Red /semaforo_pedestre/vm_c
add wave -noupdate -divider pessoa
add wave -noupdate /semaforo_pedestre/vd_p
add wave -noupdate -color Red /semaforo_pedestre/vm_p
add wave -noupdate -divider iluminacao
add wave -noupdate -color Magenta /semaforo_pedestre/iluminacao
add wave -noupdate -divider TIMER/ESTADOS
add wave -noupdate /semaforo_pedestre/timer
add wave -noupdate /semaforo_pedestre/pr_state
add wave -noupdate /semaforo_pedestre/nx_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {12759197324427 ps} 0}
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {75150501672316 ps}
