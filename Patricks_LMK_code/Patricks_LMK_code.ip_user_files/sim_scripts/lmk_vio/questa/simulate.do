onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib lmk_vio_opt

do {wave.do}

view wave
view structure
view signals

do {lmk_vio.udo}

run -all

quit -force
