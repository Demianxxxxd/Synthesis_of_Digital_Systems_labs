# SW: EDAduino Target Software

This projects builds static libraries, `csp` and `rtos`, including startup code for the EDAduino SoC.
After installation the libraries can be used through the generated CMake scripts to build custom applications.

## Dependencies:

  - cmake (>=v3.15)
  - riscv-gcc (tested with >8.3; 32-bit or 64-bit+multilib with arch=rv32g + abi=ilp32d)

## Build

1.  Generate (G-)Makefiles with CMake:

    `cmake -S . -B build -DRISCV_ELF_GCC_PREFIX=<path-to-riscv64-gnu-toolchain> [-DCMAKE_INSTALL_PREFIX=<path/to/install/dir>]`    

2.  Build `csp`+`rtos` static libraries, as well as standalone "helloworld" binaries:

    `cmake --build build`

