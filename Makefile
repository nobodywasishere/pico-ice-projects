
install_deps:
	git submodule update --init --recursive
	cd pico-ice-sdk/tools && \
		mkdir -p build && \
		cd build && \
		cmake .. && \
		make
	mkdir -p tools
	cp pico-ice-sdk/tools/build/bin2uf2 tools/
