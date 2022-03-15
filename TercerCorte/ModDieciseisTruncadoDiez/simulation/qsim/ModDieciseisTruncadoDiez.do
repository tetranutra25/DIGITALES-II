onerror {quit -f}
vlib work
vlog -work work ModDieciseisTruncadoDiez.vo
vlog -work work ModDieciseisTruncadoDiez.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ModDieciseisTruncadoDiez_vlg_vec_tst
vcd file -direction ModDieciseisTruncadoDiez.msim.vcd
vcd add -internal ModDieciseisTruncadoDiez_vlg_vec_tst/*
vcd add -internal ModDieciseisTruncadoDiez_vlg_vec_tst/i1/*
add wave /*
run -all
