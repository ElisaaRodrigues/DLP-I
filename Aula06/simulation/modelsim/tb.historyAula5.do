
# vcom -93 -work work {/home/elisa.r/DLP/Aula06/n_flip_flop.vhd}

vsim work.n_flip_flop
# vsim work.n_flip_flop 
# //  ModelSim ALTERA 10.1d Nov  2 2012 Linux 4.15.18-19-pve
# //
# //  Copyright 1991-2012 Mentor Graphics Corporation
# //  All Rights Reserved.
# //
# //  THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION
# //  WHICH IS THE PROPERTY OF MENTOR GRAPHICS CORPORATION OR ITS
# //  LICENSORS AND IS SUBJECT TO LICENSE TERMS.
# //
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.n_flip_flop(ifsc_v1)
add wave -position insertpoint  \
sim:/n_flip_flop/N
add wave -position end  sim:/n_flip_flop/clk
add wave -position end  sim:/n_flip_flop/rst
add wave -position end  sim:/n_flip_flop/d
add wave -position end  sim:/n_flip_flop/rst
add wave -position insertpoint sim:/n_flip_flop/*
wave create -pattern none -portmode in -language vhdl -range N 1 /n_flip_flop/d
# n_flip_flop
wave create -pattern none -portmode in -language vhdl /n_flip_flop/clk
# n_flip_flop
wave create -pattern none -portmode in -language vhdl /n_flip_flop/rst
# n_flip_flop
wave create -pattern none -portmode out -language vhdl -range N 1 /n_flip_flop/q
# n_flip_flop
add wave -position 1 -format Logic -height 16 -editable 2 Edit:/n_flip_flop/rst
add wave -position end -autoscale 1 -format Literal -height 16 -editable 2 Edit:/n_flip_flop/d
wave modify -driver freeze -pattern constant -value 1 -starttime 20ps -endtime 30ps Edit:/n_flip_flop/rst
# n_flip_flop
wave modify -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps Edit:/n_flip_flop/rst
# n_flip_flop
wave modify -driver freeze -pattern constant -value 1 -starttime 20ps -endtime 30ps Edit:/n_flip_flop/rst
# n_flip_flop
wave modify -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 10 -starttime 0ps -endtime 1000ps Edit:/n_flip_flop/clk
# n_flip_flop
wave modify -driver freeze -pattern counter -startvalue 00000000 -endvalue 11111111 -type Range -direction Up -period 120ps -step 1 -repeat forever -range 7 0 -starttime 0ps -endtime 1000ps Edit:/n_flip_flop/d
# n_flip_flop
add wave -position end  sim:/n_flip_flop/q
run
run
run


