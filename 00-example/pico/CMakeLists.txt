cmake_minimum_required(VERSION 3.13)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# CMake configuration of pico-sdk
set(PICO_SDK_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../../pico-ice-sdk/pico-sdk)
set(PICO_ICE_SDK_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../../pico-ice-sdk)
set(PICO_BOARD pico_ice)
set(PICO_BOARD_HEADER_DIRS ${PICO_ICE_SDK_PATH}/include/boards)
include(${PICO_SDK_PATH}/pico_sdk_init.cmake)

project(00-example C CXX ASM)

pico_sdk_init()

# CMake configuration of the application
add_subdirectory(${PICO_ICE_SDK_PATH} pico-ice-sdk)
include_directories(${CMAKE_CURRENT_SOURCE_DIR})
file(GLOB SRC_FILES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.c) # change to .cpp or other ext
add_executable(firmware ${SRC_FILES})
target_link_libraries(firmware pico_ice_sdk pico_stdio_usb)
pico_add_extra_outputs(firmware)
