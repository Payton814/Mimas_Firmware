onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib lmk_ila_opt

do {wave.do}

view wave
view structure
view signals

do {lmk_ila.udo}

run -all

quit -force
