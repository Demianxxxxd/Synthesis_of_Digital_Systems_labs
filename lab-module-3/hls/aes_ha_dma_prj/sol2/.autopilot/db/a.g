#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /nas/ei/share/TUEIEDA/LabSDS/ST23/ge42beg/lab-module-3/hls/aes_ha_dma_prj/sol2/.autopilot/db/a.g.bc ${1+"$@"}