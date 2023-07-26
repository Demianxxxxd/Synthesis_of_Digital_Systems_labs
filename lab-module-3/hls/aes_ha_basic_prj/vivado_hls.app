<project xmlns="com.autoesl.autopilot.project" name="aes_ha_basic_prj" top="aes_ha">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../testbench/aes_test.c" sc="0" tb="1" cflags=" -I../../hls/basic  -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="c_src/aes.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="c_src/aes.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="hls/basic/aes_ha.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="hls/basic/aes_ha.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="sol1" status="inactive"/>
        <solution name="sol2" status="inactive"/>
        <solution name="sol3" status="active"/>
    </solutions>
</project>

