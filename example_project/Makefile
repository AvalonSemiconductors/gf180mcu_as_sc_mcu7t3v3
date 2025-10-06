PDK?=gf180mcuD

project:
	librelane --pdk $(PDK) --run-tag latest --overwrite --manual-pdk config.yaml

gui:
	librelane --pdk $(PDK) --manual-pdk --last-run config.yaml --flow OpenInOpenROAD

klayout:
	echo "Choose 'yes' on the window that pops up and do File > Load Layer Properties and choose 'gf180mcu.lyp'"
	# You may also have to restart klayout after first run for everything to load correctly
	klayout runs/latest/final/gds/user_project_example.gds
magic:
	cp magicrc_base ~/.magicrc
	echo "Run 'select top cell; expand' in the console for a full view"
	# Magic also lags until DRC is complete. Or you can click the "DRC" checkbox on the top bar to turn it off.
	magic -d OGL runs/latest/final/mag/user_project_example.mag

.PHONY: project
