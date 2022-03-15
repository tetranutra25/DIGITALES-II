onerror {quit -f}
vlib work
vlog -work work ModOchoTruncadoSeis.vo
vlog -work work ModOchoTruncadoSeis.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ModOchoTruncadoSeis_vlg_vec_tst
vcd file -direction ModOchoTruncadoSeis.msim.vcd
vcd add -internal ModOchoTruncadoSeis_vlg_vec_tst/*
vcd add -internal ModOchoTruncadoSeis_vlg_vec_tst/i1/*
add wave /*
run -all
