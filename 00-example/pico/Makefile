
all:
	${MAKE} clean
	${MAKE} build_mcu

clean:
	-rm -rf build

build_mcu:
	if ! [ -d build ]; then \
		mkdir -p build; \
		cd build; \
		cmake ..; \
		make; \
	else \
		cd build; \
		make; \
	fi
	cp build/firmware.uf2 ../pico_firmware.uf2

.PHONY: all clean build_mcu
