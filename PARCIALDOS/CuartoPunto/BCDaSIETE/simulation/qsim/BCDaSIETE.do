onerror {quit -f}
vlib work
vlog -work work BCDaSIETE.vo
vlog -work work BCDaSIETE.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.BCDaSIETE_vlg_vec_tst
vcd file -direction BCDaSIETE.msim.vcd
vcd add -internal BCDaSIETE_vlg_vec_tst/*
vcd add -internal BCDaSIETE_vlg_vec_tst/i1/*
add wave /*
run -all
