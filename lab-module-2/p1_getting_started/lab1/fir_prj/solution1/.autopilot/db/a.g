#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /nas/ei/share/TUEIEDA/LabSDS/ST23/ge86qud/lab-module-2/p1_getting_started/lab1/fir_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
