onerror {quit -f}
vlib work
vlog -work work ModOcho.vo
vlog -work work ModOcho.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ModOcho_vlg_vec_tst
vcd file -direction ModOcho.msim.vcd
vcd add -internal ModOcho_vlg_vec_tst/*
vcd add -internal ModOcho_vlg_vec_tst/i1/*
add wave /*
run -all
