onerror {quit -f}
vlib work
vlog -work work DECOCUATROADIECISEIS.vo
vlog -work work DECOCUATROADIECISEIS.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DECOCUATROADIECISEIS_vlg_vec_tst
vcd file -direction DECOCUATROADIECISEIS.msim.vcd
vcd add -internal DECOCUATROADIECISEIS_vlg_vec_tst/*
vcd add -internal DECOCUATROADIECISEIS_vlg_vec_tst/i1/*
add wave /*
run -all
