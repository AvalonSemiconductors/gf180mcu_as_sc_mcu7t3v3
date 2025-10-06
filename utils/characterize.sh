#!/bin/bash

set -e

export PYTHONPATH=/headless/.local/lib/python3.10/site-packages:/headless/.local/lib/python3.10/site-packages:/usr/lib/python312.zip:/usr/lib/python3.12:/usr/lib/python3.12/lib-dynload:/usr/lib/python3/dist-packages:/foss/tools/ngspyce/local/lib/python3.12/dist-packages:/foss/tools/openems/local/lib/python3.12/dist-packages:/foss/tools/yosys/share/yosys/python3:/foss/tools/klayout/pymod
echo "extract all;ext2sim labels on;ext2sim;extresist tolerance 10;extresist;ext2spice lvs;ext2spice cthresh 0;ext2spice extresist on;ext2spice;" | magic -dnull -noconsole $1.mag
lctime_tholin --liberty template.lib --include "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" --library "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical" --output-loads "$2" --slew-times "$3" --spice $1.spice --cell $1 --output ./test.lib
