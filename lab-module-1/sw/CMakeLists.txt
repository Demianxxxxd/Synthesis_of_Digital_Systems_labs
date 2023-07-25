cmake_minimum_required(VERSION 3.15 FATAL_ERROR)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "RelWithDebInfo" CACHE STRING "Default build type to RelWithDebInfo.")
endif()

if(DEFINED ENV{SDK_DIR})
    set(SDK_DIR $ENV{SDK_DIR})
else()
    message(FATAL_ERROR "ENVIRONMENT not correctly sourced!")
endif()

include(${SDK_DIR}/build/installed/cmake/edaduino_sdk.cmake)

set(CMAKE_TOOLCHAIN_FILE ${SDK_DIR}/build/installed/cmake/toolchain.cmake)
project(lab1 LANGUAGES C CXX ASM)


get_target_property(START_ASM_FILE edaduino_sdk::csp START_ASM_FILE)


add_executable(bm.elf
    ${START_ASM_FILE}
    main_bm.c
)

target_link_libraries(bm.elf
    edaduino_sdk::csp
)

add_executable(os.elf
    ${START_ASM_FILE}
    main_os.c
)

target_link_libraries(os.elf
    edaduino_sdk::csp
    edaduino_sdk::freertos
)
