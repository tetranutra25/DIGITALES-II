onerror {quit -f}
vlib work
vlog -work work COMPRIMIDO.vo
vlog -work work COMPRIMIDO.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.COMPRIMIDO_vlg_vec_tst
vcd file -direction COMPRIMIDO.msim.vcd
vcd add -internal COMPRIMIDO_vlg_vec_tst/*
vcd add -internal COMPRIMIDO_vlg_vec_tst/i1/*
add wave /*
run -all
