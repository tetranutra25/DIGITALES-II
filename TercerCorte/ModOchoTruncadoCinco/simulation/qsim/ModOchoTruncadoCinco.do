onerror {quit -f}
vlib work
vlog -work work ModOchoTruncadoCinco.vo
vlog -work work ModOchoTruncadoCinco.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ModOchoTruncadoCinco_vlg_vec_tst
vcd file -direction ModOchoTruncadoCinco.msim.vcd
vcd add -internal ModOchoTruncadoCinco_vlg_vec_tst/*
vcd add -internal ModOchoTruncadoCinco_vlg_vec_tst/i1/*
add wave /*
run -all
