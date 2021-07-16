transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/edocit/Documenti/AUGC/CPU_RISC_32/05-Register/register32.vhd}
vcom -93 -work work {/home/edocit/Documenti/AUGC/CPU_RISC_32/04-program_counter/program_counter_32_bit.vhdl}
vcom -93 -work work {/home/edocit/Documenti/AUGC/CPU_RISC_32/03-RAM/RAM.vhdl}
vcom -93 -work work {/home/edocit/Documenti/AUGC/CPU_RISC_32/06-instruction_fetch_unit/instruction_fetch_unit.vhd}

