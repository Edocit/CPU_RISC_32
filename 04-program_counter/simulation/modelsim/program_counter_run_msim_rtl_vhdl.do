transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/edocit/Documenti/AUGC/CPU_RISC_32/02-program_counter/program_counter_32_bit.vhdl}

