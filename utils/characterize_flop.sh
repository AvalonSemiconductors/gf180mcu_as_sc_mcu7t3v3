#!/bin/bash

set -e

echo "extract all;ext2sim labels on;ext2sim;extresist tolerance 10;extresist;ext2spice lvs;ext2spice cthresh 0;ext2spice extresist on;ext2spice;" | magic -rcfile ../automated.magicrc -dnull $1.mag
rm $1.ext
rm $1.res.ext
rm $1.nodes
rm $1.sim
lctime_tholin --liberty template.lib --include "$PDK_ROOT/$PDK/libs.tech/ngspice/design.ngspice" --library "$PDK_ROOT/$PDK/libs.tech/ngspice/sm141064.ngspice $5" --output-loads "$2" --slew-times "$3" --spice $1.spice --cell $1 --output ./test.lib --related-pin-transition "$4"
rm $1.spice
libertymerge_tholin -b merged.lib -o temp.lib -u test.lib && mv temp.lib merged.lib
