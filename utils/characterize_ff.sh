#!/bin/bash

set -e

slew_times="0.01, 0.023, 0.053, 0.122, 0.28, 0.65, 1.5"
corner=ff

cp template.lib merged.lib

echo inv_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__inv_2 "0.0005, 0.00222, 0.01, 0.037, 0.091, 0.36, 0.774" "$slew_times" $corner

echo inv_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__inv_4 "0.0005, 0.003, 0.016, 0.068, 0.14, 0.71, 1.55" "$slew_times" $corner

echo inv_6
./characterize.sh gf180mcu_as_sc_mcu7t3v3__inv_6 "0.0005, 0.0039, 0.021, 0.082, 0.19, 1.0, 2.33" "$slew_times" $corner

echo invz_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__invz_2 "0.0005, 0.00222, 0.01, 0.037, 0.091, 0.36, 0.774" "$slew_times" $corner

echo nand2_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nand2_2 "0.0005, 0.00205, 0.0092, 0.033, 0.086, 0.31, 0.766" "$slew_times" $corner

echo nand2_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nand2_4 "0.0005, 0.00271, 0.0166, 0.0621, 0.16, 0.72, 1.53" "$slew_times" $corner

echo nand2b_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nand2b_2 "0.0005, 0.00205, 0.0092, 0.033, 0.086, 0.31, 0.766" "$slew_times" $corner

echo nand2b_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nand2b_4 "0.0005, 0.00271, 0.0166, 0.0621, 0.16, 0.72, 1.53" "$slew_times" $corner

echo nand3_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nand3_2 "0.0005, 0.002, 0.00891, 0.031, 0.084, 0.3, 0.755" "$slew_times" $corner

echo nand4_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nand4_2 "0.0005, 0.002, 0.00891, 0.031, 0.084, 0.3, 0.751" "$slew_times" $corner

echo nor2_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nor2_2 "0.0005, 0.00162, 0.0047, 0.0131, 0.0383, 0.127, 0.412" "$slew_times" $corner

echo nor2_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nor2_4 "0.0005, 0.00192, 0.0066, 0.0192, 0.08, 0.26, 0.825" "$slew_times" $corner

echo nor2b_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nor2b_2 "0.0005, 0.00162, 0.0047, 0.0131, 0.0383, 0.127, 0.412" "$slew_times" $corner

echo nor2b_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nor2b_4 "0.0005, 0.00192, 0.0066, 0.0192, 0.08, 0.26, 0.825" "$slew_times" $corner

echo nor3_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nor3_2 "0.0005, 0.0013, 0.0038, 0.0098, 0.031, 0.08, 0.278" "$slew_times" $corner

echo and2_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__and2_2 "0.0005, 0.00222, 0.01, 0.037, 0.091, 0.36, 0.774" "$slew_times" $corner

echo and2_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__and2_4 "0.0005, 0.003, 0.016, 0.068, 0.14, 0.71, 1.55" "$slew_times" $corner

echo or2_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__or2_2 "0.0005, 0.00222, 0.01, 0.037, 0.091, 0.36, 0.774" "$slew_times" $corner

echo or2_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__or2_4 "0.0005, 0.003, 0.016, 0.068, 0.14, 0.71, 1.55" "$slew_times" $corner

echo xnor2_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__xnor2_2 "0.0005, 0.00222, 0.01, 0.037, 0.091, 0.36, 0.774" "$slew_times" $corner

echo xnor2_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__xnor2_4 "0.0005, 0.003, 0.016, 0.068, 0.14, 0.71, 1.55" "$slew_times" $corner

echo xor2_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__xor2_2 "0.0005, 0.00222, 0.01, 0.037, 0.091, 0.36, 0.774" "$slew_times" $corner

echo xor2_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__xor2_4 "0.0005, 0.003, 0.016, 0.068, 0.14, 0.71, 1.54" "$slew_times" $corner

echo mux2_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__mux2_2 "0.0005, 0.00222, 0.01, 0.037, 0.091, 0.36, 0.774" "$slew_times" $corner

echo mux2_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__mux2_4 "0.0005, 0.003, 0.016, 0.068, 0.14, 0.71, 1.55" "$slew_times" $corner

echo mux4_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__mux4_2 "0.0005, 0.00222, 0.01, 0.037, 0.091, 0.36, 0.777" "$slew_times" $corner

echo maj3_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__maj3_2 "0.0005, 0.00222, 0.01, 0.037, 0.091, 0.36, 0.774" "$slew_times" $corner

echo maj3_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__maj3_4 "0.0005, 0.003, 0.016, 0.068, 0.14, 0.71, 1.55" "$slew_times" $corner

echo aoi21_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi21_2 "0.0005, 0.0016, 0.005, 0.0127, 0.04, 0.1387, 0.407" "$slew_times" $corner

echo aoi21_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi21_4 "0.0005, 0.0023, 0.0106, 0.0333, 0.097, 0.41, 0.814" "$slew_times" $corner

echo aoi21b_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi21b_2 "0.0005, 0.00149, 0.0044, 0.0128, 0.04, 0.131, 0.406" "$slew_times" $corner

echo aoi21b_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi21b_4 "0.0005, 0.0023, 0.0106, 0.0333, 0.097, 0.41, 0.811" "$slew_times" $corner

echo ao21_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao21_2 "0.0005, 0.00222, 0.01, 0.037, 0.091, 0.36, 0.774" "$slew_times" $corner

echo ao21_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao21_4 "0.0005, 0.003, 0.016, 0.068, 0.14, 0.71, 1.55" "$slew_times" $corner

echo ao21b_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao21b_2 "0.0005, 0.00222, 0.01, 0.037, 0.091, 0.36, 0.774" "$slew_times" $corner

echo ao21b_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao21b_4 "0.0005, 0.003, 0.016, 0.068, 0.14, 0.71, 1.54" "$slew_times" $corner

echo aoi22_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi22_2 "0.0005, 0.0015, 0.0042, 0.0122, 0.039, 0.121, 0.435" "$slew_times" $corner

echo aoi22_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi22_4 "0.0005, 0.00211, 0.0108, 0.0347, 0.092, 0.43, 0.87" "$slew_times" $corner

echo ao22_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao22_2 "0.0005, 0.00222, 0.01, 0.037, 0.091, 0.36, 0.774" "$slew_times" $corner

echo ao22_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao22_4 "0.0005, 0.003, 0.016, 0.068, 0.14, 0.71, 1.544" "$slew_times" $corner

echo aoi31_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi31_2 "0.0005, 0.0015, 0.00488, 0.0122, 0.038, 0.14, 0.399" "$slew_times" $corner

echo aoi31_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi31_4 "0.0005, 0.00201, 0.0091, 0.032, 0.083, 0.39, 0.795" "$slew_times" $corner

echo ao31_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao31_2 "0.0005, 0.00222, 0.01, 0.037, 0.091, 0.36, 0.774" "$slew_times" $corner

echo ao31_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao31_4 "0.0005, 0.003, 0.016, 0.068, 0.14, 0.71, 1.544" "$slew_times" $corner

echo aoi211_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi211_2 "0.0005, 0.0013, 0.0035, 0.0086, 0.027, 0.08, 0.2711" "$slew_times" $corner

echo aoi211_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi211_4 "0.0005, 0.00181, 0.008, 0.026, 0.069, 0.31, 0.54" "$slew_times" $corner

echo ao211_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao211_2 "0.0005, 0.00222, 0.01, 0.037, 0.091, 0.36, 0.774" "$slew_times" $corner

echo ao211_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao211_4 "0.0005, 0.003, 0.016, 0.068, 0.14, 0.71, 1.544" "$slew_times" $corner

echo oai21_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__oai21_2 "0.0005, 0.001502, 0.00489, 0.0125, 0.039, 0.146, 0.405" "$slew_times" $corner

echo oai21_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__oai21_4 "0.0005, 0.00201, 0.0091, 0.03203, 0.0833, 0.398, 0.81" "$slew_times" $corner

echo oa21_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__oa21_2 "0.0005, 0.00222, 0.01, 0.037, 0.091, 0.36, 0.78" "$slew_times" $corner

echo oa21_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__oa21_4 "0.0005, 0.003, 0.016, 0.068, 0.14, 0.71, 1.551" "$slew_times" $corner

echo oai211_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__oai211_2 "0.0005, 0.001501, 0.0046, 0.0111, 0.037, 0.11, 0.395" "$slew_times" $corner

echo buff_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__buff_2 "0.0005, 0.00222, 0.01, 0.037, 0.091, 0.36, 0.774" "$slew_times" $corner

echo buff_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__buff_4 "0.0005, 0.003, 0.016, 0.068, 0.14, 0.71, 1.55" "$slew_times" $corner

echo buff_8
./characterize.sh gf180mcu_as_sc_mcu7t3v3__buff_8 "0.0005, 0.0023, 0.011, 0.05, 0.23, 1.1, 5.0" "0.01, 0.029, 0.08, 0.22, 0.621, 1.77, 5.0" $corner

echo buff_12
./characterize.sh gf180mcu_as_sc_mcu7t3v3__buff_12 "0.0005, 0.0023, 0.011, 0.05, 0.23, 1.1, 5.0" "0.01, 0.029, 0.08, 0.22, 0.621, 1.77, 5.0" $corner

echo buff_16
./characterize.sh gf180mcu_as_sc_mcu7t3v3__buff_16 "0.0005, 0.0023, 0.011, 0.05, 0.23, 1.1, 5.0" "0.01, 0.029, 0.08, 0.22, 0.621, 1.77, 5.0" $corner

echo clkbuff_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__clkbuff_4 "0.0005, 0.003, 0.016, 0.068, 0.14, 0.71, 1.55" "$slew_times" $corner

echo clkbuff_8
./characterize.sh gf180mcu_as_sc_mcu7t3v3__clkbuff_8 "0.0005, 0.0038, 0.025, 0.086, 0.267, 1.4, 3.111" "$slew_times" $corner

echo clkbuff_12
./characterize.sh gf180mcu_as_sc_mcu7t3v3__clkbuff_12 "0.0005, 0.0023, 0.011, 0.05, 0.23, 1.1, 5.0" "0.01, 0.029, 0.08, 0.22, 0.621, 1.77, 5.0" $corner

echo dlybuff_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__dlybuff_2 "0.0005, 0.00222, 0.01, 0.037, 0.091, 0.36, 0.774" "$slew_times" $corner

echo dlybuff_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__dlybuff_4 "0.0005, 0.003, 0.016, 0.068, 0.14, 0.71, 1.55" "$slew_times" $corner

echo dyn_dfxtp_2
./characterize_flop.sh gf180mcu_as_sc_mcu7t3v3__dyn_dfxtp_2 "0.0005, 0.00186, 0.006, 0.019, 0.0621, 0.2, 0.775" "0.01, 0.02, 0.04, 0.09, 0.2, 0.45, 1.0" "0.01, 0.5, 1.0" $corner

echo dfxtp_2
./characterize_flop.sh gf180mcu_as_sc_mcu7t3v3__dfxtp_2 "0.0005, 0.00186, 0.006, 0.019, 0.0621, 0.2, 0.775" "0.01, 0.02, 0.04, 0.09, 0.2, 0.45, 1.0" "0.01, 0.5, 1.0" $corner

echo dfxtp_4
./characterize_flop.sh gf180mcu_as_sc_mcu7t3v3__dfxtp_4 "0.0005, 0.0023456789, 0.009, 0.033, 0.11, 0.42, 1.54" "0.01, 0.02, 0.04, 0.09, 0.2, 0.45, 1.0" "0.01, 0.5, 1.0" $corner

echo dfxtn_2
./characterize_flop.sh gf180mcu_as_sc_mcu7t3v3__dfxtn_2 "0.0005, 0.00186, 0.006, 0.019, 0.0621, 0.2, 0.775" "0.01, 0.02, 0.04, 0.09, 0.2, 0.45, 1.0" "0.01, 0.5, 1.0" $corner

echo dfsrtp_2
./characterize_flop.sh gf180mcu_as_sc_mcu7t3v3__dfsrtp_2 "0.0005, 0.00186, 0.006, 0.019, 0.0621, 0.2, 0.775" "0.01, 0.02, 0.04, 0.09, 0.2, 0.45, 1.0" "0.01, 0.5, 1.0" $corner

sed -i 's/"(IQ)"/"IQ"/g' *.lib
sed -i 's/+/|/g' *.lib
