cmake_minimum_required(VERSION 3.15 FATAL_ERROR)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "RelWithDebInfo" CACHE STRING "Default build type to RelWithDebInfo.")
endif()

#add_compile_definitions(DEBUG_BUILD)

if(DEFINED ENV{SDK_DIR})
    set(SDK_DIR $ENV{SDK_DIR})
else()
    message(FATAL_ERROR "ENVIRONMENT not correctly sourced!")
endif()

include(${SDK_DIR}/build/installed/cmake/edaduino_sdk.cmake)

get_property(CSP_DIR TARGET edaduino_sdk::csp PROPERTY CSP_DIR)
get_property(START_ASM_FILE TARGET edaduino_sdk::csp PROPERTY START_ASM_FILE)

set(CMAKE_TOOLCHAIN_FILE ${SDK_DIR}/build/installed/cmake/toolchain.cmake)
project(lab3 LANGUAGES C CXX ASM)

add_executable(sw.elf
    ${START_ASM_FILE}
    main_sw.c
    aes/aes.c
)

target_link_libraries(sw.elf
    edaduino_sdk::csp
)

add_executable(hw.elf
    ${START_ASM_FILE}
    main_hw.c
    aes/aes.c
    aes/aes_ha_drv.c
    xil/basic/xaes_ha.c
    xil/xil_assert.c
)

target_include_directories(hw.elf PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/xil
    ${CMAKE_CURRENT_SOURCE_DIR}/xil/basic
    ${CMAKE_CURRENT_SOURCE_DIR}/aes
)

target_link_libraries(hw.elf
    edaduino_sdk::csp
)

add_executable(hw_dma.elf
    ${START_ASM_FILE}
    main_hw_dma.c
    aes/aes.c
    aes/aes_ha_drv.c
    xil/dma/xaes_ha.c
    xil/xil_assert.c
)

target_compile_definitions(hw_dma.elf PUBLIC
    AES_DIRECT_MEMORY=1
)

target_include_directories(hw_dma.elf PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/xil
    ${CMAKE_CURRENT_SOURCE_DIR}/xil/dma
    ${CMAKE_CURRENT_SOURCE_DIR}/aes
)

target_link_libraries(hw_dma.elf
    edaduino_sdk::csp
)
