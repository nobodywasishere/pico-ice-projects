
all:
	${MAKE} clean
	${MAKE} build_fpga

clean:
	-rm -rf build

build_fpga:
	mkdir -p build

	@# ghdl analyze
	ghdl -a --workdir=build --std=08 rtl/*

	@# yosys synthesize
	yosys -m ghdl -p 'ghdl --std=08 --workdir=build top; synth_ice40 -json build/top.json'

	@# nextpnr route
	nextpnr-ice40 --up5k --package sg48 --pcf cfg/pinout.pcf --json build/top.json --asc build/top.asc

	@# icestorm generate bitstream
	icepack build/top.asc build/top.bin

	../../tools/bin2uf2 build/top.bin -o ../ice_firmware.uf2

.PHONY: all clean build_fpga
