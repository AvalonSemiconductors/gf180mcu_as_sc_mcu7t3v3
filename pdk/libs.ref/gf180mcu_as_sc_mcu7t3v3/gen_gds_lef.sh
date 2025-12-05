#!/bin/bash

set -e

rm -rf temp/
mkdir temp/
cp mag/*.mag temp/

for filename in temp/*; do
sed -i '/string GDS_FILE.*/d' $filename;
done

for filename in temp/*; do
echo "calma;lef write;extract all;ext2spice lvs;ext2spice cthresh 100000;ext2spice extresist off;ext2spice;" | magic -dnull -noconsole $filename;
done
echo "calma;lef write -pinonly;" | magic -dnull -noconsole "temp/gf180mcu_as_sc_mcu7t3v3__xnor2_2.mag";
echo "calma;lef write -pinonly;" | magic -dnull -noconsole "temp/gf180mcu_as_sc_mcu7t3v3__xnor2_4.mag";
rm -rf temp/

rm -rf gds/
mkdir gds/
mv *.gds gds/

for filename in *.lef; do
sed -i 's/END LIBRARY//' $filename;
done
rm -rf lef/
mkdir lef/
touch lef/gf180mcu_as_sc_mcu7t3v3.lef
for filename in *.lef; do
cat $filename >> lef/gf180mcu_as_sc_mcu7t3v3.lef;
done
echo "END LIBRARY" >> lef/gf180mcu_as_sc_mcu7t3v3.lef;
rm -f *.lef
mkdir cdl/
touch cdl/gf180mcu_as_sc_mcu7t3v3.cdl
for filename in *.spice; do
cat $filename >> cdl/gf180mcu_as_sc_mcu7t3v3.cdl;
done
sed -i 's/^X/M/' cdl/gf180mcu_as_sc_mcu7t3v3.cdl
cp -r cdl/ spice/
mv spice/gf180mcu_as_sc_mcu7t3v3.cdl spice/gf180mcu_as_sc_mcu7t3v3.spice
sed -i '/^M/s/^/M_/' cdl/gf180mcu_as_sc_mcu7t3v3.cdl
sed -i '/^M/s/^/X_/' spice/gf180mcu_as_sc_mcu7t3v3.spice
rm -f *.ext
rm -f *.spice

python3 gen_merged_gds.py gds/*
