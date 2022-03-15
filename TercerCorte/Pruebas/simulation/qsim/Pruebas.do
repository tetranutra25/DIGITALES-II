onerror {quit -f}
vlib work
vlog -work work Pruebas.vo
vlog -work work Pruebas.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Pruebas_vlg_vec_tst
vcd file -direction Pruebas.msim.vcd
vcd add -internal Pruebas_vlg_vec_tst/*
vcd add -internal Pruebas_vlg_vec_tst/i1/*
add wave /*
run -all
