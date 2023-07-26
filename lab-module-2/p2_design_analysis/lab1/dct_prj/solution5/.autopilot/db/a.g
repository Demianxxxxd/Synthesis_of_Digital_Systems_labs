#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /nas/ei/share/TUEIEDA/LabSDS/ST23/ge86qud/lab-module-2/p2_design_analysis/lab1/dct_prj/solution5/.autopilot/db/a.g.bc ${1+"$@"}
