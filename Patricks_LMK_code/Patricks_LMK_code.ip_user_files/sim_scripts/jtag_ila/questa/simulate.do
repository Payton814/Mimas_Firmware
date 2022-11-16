onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib jtag_ila_opt

do {wave.do}

view wave
view structure
view signals

do {jtag_ila.udo}

run -all

quit -force
