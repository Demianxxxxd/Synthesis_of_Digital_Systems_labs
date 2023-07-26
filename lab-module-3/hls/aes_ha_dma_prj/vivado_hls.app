<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="com.autoesl.autopilot.project" name="aes_ha_dma_prj" top="aes_ha">
  <files>
    <file name="../../testbench/aes_test.c" sc="0" tb="1" cflags=" -I../../hls/dma  -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="hls/dma/aes_ha.h" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
    <file name="hls/dma/aes_ha.c" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
    <file name="c_src/aes.h" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
    <file name="c_src/aes.c" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
  </files>
  <solutions>
    <solution name="sol1" status="inactive"/>
    <solution name="sol2" status="inactive"/>
    <solution name="sol3" status="active"/>
  </solutions>
  <includePaths/>
  <libraryPaths/>
  <Simulation>
    <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
  </Simulation>
</project>
