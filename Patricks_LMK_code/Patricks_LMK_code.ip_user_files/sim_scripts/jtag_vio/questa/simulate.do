onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib jtag_vio_opt

do {wave.do}

view wave
view structure
view signals

do {jtag_vio.udo}

run -all

quit -force
