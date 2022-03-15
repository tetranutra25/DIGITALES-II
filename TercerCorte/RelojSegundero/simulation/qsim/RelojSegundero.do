onerror {quit -f}
vlib work
vlog -work work RelojSegundero.vo
vlog -work work RelojSegundero.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.RelojSegundero_vlg_vec_tst
vcd file -direction RelojSegundero.msim.vcd
vcd add -internal RelojSegundero_vlg_vec_tst/*
vcd add -internal RelojSegundero_vlg_vec_tst/i1/*
add wave /*
run -all
