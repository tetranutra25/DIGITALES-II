onerror {quit -f}
vlib work
vlog -work work ImplementacionRelojDigital.vo
vlog -work work ImplementacionRelojDigital.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ImplementacionRelojDigital_vlg_vec_tst
vcd file -direction ImplementacionRelojDigital.msim.vcd
vcd add -internal ImplementacionRelojDigital_vlg_vec_tst/*
vcd add -internal ImplementacionRelojDigital_vlg_vec_tst/i1/*
add wave /*
run -all
