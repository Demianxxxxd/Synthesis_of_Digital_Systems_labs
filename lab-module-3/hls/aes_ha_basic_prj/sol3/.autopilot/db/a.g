#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /nas/ei/share/TUEIEDA/LabSDS/ST23/ge42beg/lab-module-3/hls/aes_ha_basic_prj/sol3/.autopilot/db/a.g.bc ${1+"$@"}
