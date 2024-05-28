transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+pll_mandel  -L xilinx_vip -L xpm -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.pll_mandel xil_defaultlib.glbl

do {pll_mandel.udo}

run 1000ns

endsim

quit -force
