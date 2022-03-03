onerror {quit -f}
vlib work
vlog -work work CODDOSACUATRO.vo
vlog -work work CODDOSACUATRO.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CODDOSACUATRO_vlg_vec_tst
vcd file -direction CODDOSACUATRO.msim.vcd
vcd add -internal CODDOSACUATRO_vlg_vec_tst/*
vcd add -internal CODDOSACUATRO_vlg_vec_tst/i1/*
add wave /*
run -all
