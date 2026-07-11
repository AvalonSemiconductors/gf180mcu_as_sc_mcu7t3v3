#!/bin/bash

set -e

rm -rf temp/
mkdir temp/
cp mag/*.mag temp/

for filename in temp/*; do
sed -i '/string GDS_FILE.*/d' $filename;
done

for filename in temp/*; do
echo "calma;lef write;extract all;ext2spice lvs;ext2spice cthresh 100000;ext2spice extresist off;ext2spice;" | magic -rcfile automated.magicrc -dnull -noconsole $filename;
done
echo "calma;lef write -pinonly;" | magic -rcfile automated.magicrc -dnull -noconsole "temp/gf180mcu_as_sc_mcu7t3v3__xnor2_2.mag";
echo "calma;lef write -pinonly;" | magic -rcfile automated.magicrc -dnull -noconsole "temp/gf180mcu_as_sc_mcu7t3v3__xnor2_4.mag";
echo "calma;lef write -pinonly;" | magic -rcfile automated.magicrc -dnull -noconsole "temp/gf180mcu_as_sc_mcu7t3v3__xor2_2.mag";
echo "calma;lef write -pinonly;" | magic -rcfile automated.magicrc -dnull -noconsole "temp/gf180mcu_as_sc_mcu7t3v3__xor2_4.mag";
echo "calma;lef write -pinonly;" | magic -rcfile automated.magicrc -dnull -noconsole "temp/gf180mcu_as_sc_mcu7t3v3__mux2_4.mag";

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

#cd temp/
#rm -f *.spice
#for filename in *.mag; do
#echo "extract all;ext2sim labels on;ext2sim;extresist tolerance 10;extresist;ext2spice lvs;ext2spice cthresh 0;ext2spice extresist on;ext2spice;" | magic -rcfile ../automated.magicrc -dnull -noconsole $filename;
#done
#for filename in *.spice; do
#cat $filename >> ../spice/gf180mcu_as_sc_mcu7t3v3_parasitics.spice;
#done
#cd ..
rm -f *.ext
rm -f *.spice
rm -f *.nodes
rm -f *.sim
rm -rf temp/

python3 gen_merged_gds.py gds/*
