onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib sys_clk_generator_opt

do {wave.do}

view wave
view structure
view signals

do {sys_clk_generator.udo}

run -all

quit -force
