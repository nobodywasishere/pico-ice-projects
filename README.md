# pico-ice-projects

Various projects for the [pico-ice](https://github.com/tinyvision-ai-inc/pico-ice).

## Build

To build a project, ensure you have a proper toolchains installed for building for the [RP2040](https://github.com/raspberrypi/pico-sdk#quick-start-your-own-project) and the [ICE40UP5K](https://github.com/YosysHQ/oss-cad-suite-build). Then, simply `cd` into its folder and run `make`:

```shell
$ make install_deps # will clone pico-ice-sdk and its deps
$ cd 00-example
$ make clean # cleans build artifacts
$ make # runs `build_fpga` and `build_mcu` targets in subfolders
```

## Layout

Here is the layout for each project:

```py
00-example/ # title of the project with a number indicating creation order
    ice/        # files for the FPGA
        build/      # hidden, build artifacts
        cfg/        # config files (pcf, etc)
        rtl/        # VHDL/Verilog source
        tb/         # VHDL/Verilog testbenches
        Makefile    # has `build_fpga` target for building source
    pico/       # files for the MCU
        build/      # hidden, build artifacts
        include/    # header files
        src/        # C/C++ source code
        CMakeLists.txt # shouldn't need to modify, will glob src/ files
        Makefile    # has `build_mcu` target for building source
    Makefile
    README.md
```

## Useful Links

- pico-ice repo: https://github.com/tinyvision-ai-inc/pico-ice
- pico-ice-sdk repo: https://github.com/tinyvision-ai-inc/pico-ice-sdk
- pico-ice documentation: https://pico-ice.tinyvision.ai/
- https://github.com/smittytone/RP2040-FreeRTOS/
- https://github.com/YosysHQ/oss-cad-suite-build
