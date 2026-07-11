PDK?=gf180mcuD
PDK_ROOT?=../gf180mcu_pdk/

project:
	librelane --pdk $(PDK) --pdk-root $(PDK_ROOT) --run-tag latest --overwrite --manual-pdk --hide-progress-bar config.yaml

gui:
	librelane --pdk $(PDK) --pdk-root $(PDK_ROOT) --manual-pdk --last-run config.yaml --flow OpenInOpenROAD

.PHONY: setup project
