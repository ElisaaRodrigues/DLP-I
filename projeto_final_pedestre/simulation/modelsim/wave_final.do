onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Clocks e RST}
add wave -noupdate -color {Medium Slate Blue} /pedestre_final/clk_50MHz
add wave -noupdate -color {Dark Orchid} /pedestre_final/rst_in
add wave -noupdate -color Orange /pedestre_final/clk_semaforo
add wave -noupdate -divider ENTRADAS
add wave -noupdate -color Magenta /pedestre_final/botao_in
add wave -noupdate -color Magenta /pedestre_final/sensor_escuro_in
add wave -noupdate /pedestre_final/entrada_tempo_carro_aux
add wave -noupdate /pedestre_final/conta_tempo_min_carro/l1/count
add wave -noupdate /pedestre_final/comp_semaforo/pr_state
add wave -noupdate -divider {SAIDAS LEDS}
add wave -noupdate -divider VEICULOS
add wave -noupdate /pedestre_final/vd_c_out
add wave -noupdate -color Yellow /pedestre_final/am_c_out
add wave -noupdate -color Red /pedestre_final/vm_c_out
add wave -noupdate -divider PEDESTRES
add wave -noupdate /pedestre_final/vd_p_out
add wave -noupdate -color Red /pedestre_final/vm_p_out
add wave -noupdate -divider ILUMINACAO
add wave -noupdate -color Blue /pedestre_final/iluminacao_out
add wave -noupdate -divider {SAIDA DISPLAY}
add wave -noupdate /pedestre_final/ssd_unidade
add wave -noupdate /pedestre_final/ssd_dezena
add wave -noupdate -divider {ENTRADA DISPLAY}
add wave -noupdate /pedestre_final/tipo_s
add wave -noupdate /pedestre_final/display_unidade
add wave -noupdate /pedestre_final/display_dezena
add wave -noupdate -divider {SAIDA SEMAFORO}
add wave -noupdate /pedestre_final/controle_de_leds
add wave -noupdate /pedestre_final/saida_semaforo_pedestre
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {119022801302932 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 184
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
WaveRestoreZoom {0 ps} {210 sec}
