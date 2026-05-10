views:
	rm -rf cdl gds lef spice gf180mcu_as_sc_mcu7t3v3__merged.gds
	java GenMaskhints.java mag/*.mag
	sh gen_gds_lef.sh

lctime:
	mkdir lctime
	cd lctime && wget https://files.tholin.dev/Public/Utilities/lctime.tar.gz
	cd lctime && tar -xzf lctime.tar.gz
	python3 -m venv ./venv
	source venv/bin/activate && cd lctime && pip3 install .

cleanup:
	rm -rf lctime
	rm -rf venv
	rm -rf characterize

characterize_tt: lctime
	mkdir characterize
	cp mag/*.mag characterize/
	cp ../../../utils/*.sh characterize/
	cp lib/lctime_templates/template_tt.lib characterize/template.lib
	source venv/bin/activate && cd characterize && sh characterize_tt.sh
	cp characterize/merged.lib lib/gf180mcu_as_sc_mcu7t3v3__tt_025C_3v30.lib
	make cleanup
