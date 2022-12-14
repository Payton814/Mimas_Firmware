onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+lmk_ila -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.lmk_ila xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {lmk_ila.udo}

run -all

endsim

quit -force
