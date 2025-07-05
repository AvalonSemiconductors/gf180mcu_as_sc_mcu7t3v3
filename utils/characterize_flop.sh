#!/bin/bash

set -e

echo "extract all;ext2sim labels on;ext2sim;extresist tolerance 10;extresist;ext2spice lvs;ext2spice cthresh 0;ext2spice extresist on;ext2spice;" | magic -dnull -noconsole $1.mag
lctime_tholin --liberty template.lib --include "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" --library "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical" --output-loads "$2" --slew-times "$3" --spice $1.spice --cell $1 --output ./test.lib --related-pin-transition "$4"
