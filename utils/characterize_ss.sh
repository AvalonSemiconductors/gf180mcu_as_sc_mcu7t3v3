#!/bin/bash

set -e -pipefail

slew_times="0.01, 0.023, 0.053, 0.122, 0.28, 0.65, 1.5"
corner=ss

cp template.lib merged.lib

echo inv_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__inv_2 "0.0005, 0.0019, 0.008, 0.027, 0.069, 0.25, 0.493" "$slew_times" $corner

echo inv_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__inv_4 "0.0005, 0.0025, 0.012, 0.046, 0.08, 0.45, 0.986" "$slew_times" $corner

echo inv_6
./characterize.sh gf180mcu_as_sc_mcu7t3v3__inv_6 "0.0005, 0.0028, 0.016, 0.048, 0.125, 0.67, 1.48" "$slew_times" $corner

echo invz_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__invz_2 "0.0005, 0.0019, 0.008, 0.027, 0.069, 0.25, 0.492" "$slew_times" $corner

echo nand2_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nand2_2 "0.0005, 0.0019, 0.008, 0.026, 0.065, 0.24, 0.486" "$slew_times" $corner

echo nand2_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nand2_4 "0.0005, 0.0025, 0.012, 0.045, 0.078, 0.43, 0.97" "$slew_times" $corner

echo nand2b_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nand2b_2 "0.0005, 0.0019, 0.008, 0.026, 0.065, 0.24, 0.485" "$slew_times" $corner

echo nand2b_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nand2b_4 "0.0005, 0.0025, 0.012, 0.045, 0.078, 0.43, 0.967" "$slew_times" $corner

echo nand3_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nand3_2 "0.0005, 0.0019, 0.00799, 0.0258, 0.064, 0.233, 0.477" "$slew_times" $corner

echo nand4_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nand4_2 "0.0005, 0.0019, 0.00798, 0.0255, 0.063, 0.231, 0.468" "$slew_times" $corner

echo nor2_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nor2_2 "0.0005, 0.0014, 0.0038, 0.009, 0.028, 0.082, 0.252" "$slew_times" $corner

echo nor2_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nor2_4 "0.0005, 0.00177, 0.0051, 0.0147, 0.056, 0.17, 0.504" "$slew_times" $corner

echo nor2b_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nor2b_2 "0.0005, 0.0014, 0.0038, 0.009, 0.028, 0.082, 0.252" "$slew_times" $corner

echo nor2b_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nor2b_4 "0.0005, 0.00177, 0.0051, 0.0147, 0.056, 0.17, 0.504" "$slew_times" $corner

echo nor3_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__nor3_2 "0.0005, 0.0011, 0.00304, 0.008, 0.023, 0.06, 0.164" "$slew_times" $corner

echo and2_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__and2_2 "0.0005, 0.0019, 0.008, 0.027, 0.069, 0.25, 0.493" "$slew_times" $corner

echo and2_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__and2_4 "0.0005, 0.0025, 0.012, 0.046, 0.08, 0.45, 0.986" "$slew_times" $corner

echo or2_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__or2_2 "0.0005, 0.0019, 0.008, 0.027, 0.069, 0.25, 0.493" "$slew_times" $corner

echo or2_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__or2_4 "0.0005, 0.0025, 0.012, 0.046, 0.08, 0.45, 0.986" "$slew_times" $corner

echo xnor2_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__xnor2_2 "0.0005, 0.0019, 0.008, 0.027, 0.069, 0.25, 0.493" "$slew_times" $corner

echo xnor2_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__xnor2_4 "0.0005, 0.0025, 0.012, 0.046, 0.08, 0.45, 0.981" "$slew_times" $corner

echo xor2_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__xor2_2 "0.0005, 0.0019, 0.008, 0.027, 0.069, 0.25, 0.493" "$slew_times" $corner

echo xor2_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__xor2_4 "0.0005, 0.0025, 0.012, 0.046, 0.08, 0.45, 0.981" "$slew_times" $corner

echo mux2_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__mux2_2 "0.0005, 0.0019, 0.008, 0.027, 0.069, 0.25, 0.493" "$slew_times" $corner

echo mux2_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__mux2_4 "0.0005, 0.0025, 0.012, 0.046, 0.08, 0.45, 0.984" "$slew_times" $corner

echo maj3_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__maj3_2 "0.0005, 0.0019, 0.008, 0.027, 0.069, 0.25, 0.493" "$slew_times" $corner

echo maj3_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__maj3_4 "0.0005, 0.0025, 0.012, 0.046, 0.08, 0.45, 0.984" "$slew_times" $corner

echo aoi21_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi21_2 "0.0005, 0.0014, 0.0038, 0.009, 0.027, 0.08, 0.247" "$slew_times" $corner

echo aoi21_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi21_4 "0.0005, 0.0019, 0.008, 0.027, 0.069, 0.25, 0.491" "$slew_times" $corner

echo aoi21b_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi21b_2 "0.0005, 0.0014, 0.0038, 0.009, 0.027, 0.08, 0.2465" "$slew_times" $corner

echo aoi21b_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi21b_4 "0.0005, 0.0019, 0.008, 0.027, 0.069, 0.25, 0.491" "$slew_times" $corner

echo ao21_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao21_2 "0.0005, 0.0019, 0.008, 0.027, 0.069, 0.25, 0.493" "$slew_times" $corner

echo ao21_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao21_4 "0.0005, 0.0025, 0.012, 0.046, 0.08, 0.45, 0.986" "$slew_times" $corner

echo ao21b_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao21b_2 "0.0005, 0.0019, 0.008, 0.027, 0.069, 0.25, 0.493" "$slew_times" $corner

echo ao21b_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao21b_4 "0.0005, 0.0025, 0.012, 0.046, 0.08, 0.45, 0.981" "$slew_times" $corner

echo aoi22_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi22_2 "0.0005, 0.001401, 0.00383, 0.0092, 0.0285, 0.083, 0.26" "$slew_times" $corner

echo aoi22_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi22_4 "0.0005, 0.00178, 0.00518, 0.0148, 0.058, 0.18, 0.52" "$slew_times" $corner

echo ao22_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao22_2 "0.0005, 0.0019, 0.008, 0.027, 0.069, 0.25, 0.493" "$slew_times" $corner

echo ao22_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao22_4 "0.0005, 0.0025, 0.012, 0.046, 0.08, 0.45, 0.985" "$slew_times" $corner

echo aoi31_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi31_2 "0.0005, 0.0014, 0.0035, 0.0086, 0.024, 0.07, 0.238" "$slew_times" $corner

echo aoi31_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi31_4 "0.0005, 0.00188, 0.0079, 0.023, 0.059, 0.23, 0.475" "$slew_times" $corner

echo ao31_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao31_2 "0.0005, 0.0019, 0.008, 0.027, 0.069, 0.25, 0.493" "$slew_times" $corner

echo ao31_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao31_4 "0.0005, 0.0025, 0.012, 0.046, 0.08, 0.45, 0.983" "$slew_times" $corner

echo aoi211_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi211_2 "0.0005, 0.001, 0.0029, 0.0069, 0.019, 0.059, 0.1575" "$slew_times" $corner

echo aoi211_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__aoi211_4 "0.0005, 0.00165, 0.0071, 0.017, 0.041, 0.22, 0.314" "$slew_times" $corner

echo ao211_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao211_2 "0.0005, 0.0019, 0.008, 0.027, 0.069, 0.25, 0.493" "$slew_times" $corner

echo ao211_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__ao211_4 "0.0005, 0.0025, 0.012, 0.046, 0.08, 0.45, 0.983" "$slew_times" $corner

echo oai211_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__oai211_2 "0.0005, 0.0012, 0.0038, 0.0087, 0.027, 0.07, 0.235" "$slew_times" $corner

echo buff_2
./characterize.sh gf180mcu_as_sc_mcu7t3v3__buff_2 "0.0005, 0.0019, 0.008, 0.027, 0.069, 0.25, 0.493" "$slew_times" $corner

echo buff_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__buff_4 "0.0005, 0.0025, 0.012, 0.046, 0.08, 0.45, 0.983" "$slew_times" $corner

echo buff_8
./characterize.sh gf180mcu_as_sc_mcu7t3v3__buff_8 "0.0005, 0.0023, 0.011, 0.05, 0.23, 1.1, 5.0" "0.01, 0.029, 0.08, 0.22, 0.621, 1.77, 5.0" $corner

echo buff_12
./characterize.sh gf180mcu_as_sc_mcu7t3v3__buff_12 "0.0005, 0.0023, 0.011, 0.05, 0.23, 1.1, 5.0" "0.01, 0.029, 0.08, 0.22, 0.621, 1.77, 5.0" $corner

echo buff_16
./characterize.sh gf180mcu_as_sc_mcu7t3v3__buff_16 "0.0005, 0.0023, 0.011, 0.05, 0.23, 1.1, 5.0" "0.01, 0.029, 0.08, 0.22, 0.621, 1.77, 5.0" $corner

echo clkbuff_4
./characterize.sh gf180mcu_as_sc_mcu7t3v3__clkbuff_4 "0.0005, 0.0025, 0.012, 0.046, 0.08, 0.45, 0.983" "$slew_times" $corner

echo clkbuff_8
./characterize.sh gf180mcu_as_sc_mcu7t3v3__clkbuff_8 "0.0005, 0.003, 0.015, 0.052, 0.148, 0.707, 1.54" "$slew_times" $corner

echo clkbuff_12
./characterize.sh gf180mcu_as_sc_mcu7t3v3__clkbuff_12 "0.0005, 0.0023, 0.011, 0.05, 0.23, 1.1, 5.0" "0.01, 0.029, 0.08, 0.22, 0.621, 1.77, 5.0" $corner

echo dfxtp_2
./characterize_flop.sh gf180mcu_as_sc_mcu7t3v3__dfxtp_2 "0.0005, 0.001601, 0.0049, 0.015, 0.042, 0.139, 0.494" "0.01, 0.02, 0.04, 0.09, 0.2, 0.45, 1.0" "0.01, 0.5, 1.0" $corner

echo dfxtp_4
./characterize_flop.sh gf180mcu_as_sc_mcu7t3v3__dfxtp_4 "0.0005, 0.0018, 0.007, 0.021, 0.076, 0.26, 0.98" "0.01, 0.02, 0.04, 0.09, 0.2, 0.45, 1.0" "0.01, 0.5, 1.0" $corner

echo dfxtn_2
./characterize_flop.sh gf180mcu_as_sc_mcu7t3v3__dfxtn_2 "0.0005, 0.001601, 0.0049, 0.015, 0.042, 0.139, 0.494" "0.01, 0.02, 0.04, 0.09, 0.2, 0.45, 1.0" "0.01, 0.5, 1.0" $corner

echo dfsrtp_2
./characterize_flop.sh gf180mcu_as_sc_mcu7t3v3__dfsrtp_2 "0.0005, 0.001601, 0.0049, 0.015, 0.042, 0.138, 0.492" "0.01, 0.02, 0.04, 0.09, 0.2, 0.45, 1.0" "0.01, 0.5, 1.0" $corner
