transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/edocit/Documenti/AUGC/CPU_RISC_32/09-VGA_Video_Card/framebuffer.vhdl}
vcom -93 -work work {/home/edocit/Documenti/AUGC/CPU_RISC_32/09-VGA_Video_Card/vga_controller.vhdl}
vcom -93 -work work {/home/edocit/Documenti/AUGC/CPU_RISC_32/09-VGA_Video_Card/vga_video_card.vhdl}
vcom -93 -work work {/home/edocit/Documenti/AUGC/CPU_RISC_32/09-VGA_Video_Card/clk_div.vhdl}

