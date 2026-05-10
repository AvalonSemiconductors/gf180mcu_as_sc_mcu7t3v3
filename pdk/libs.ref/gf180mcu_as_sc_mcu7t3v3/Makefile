views:
	rm -rf cdl gds lef spice gf180mcu_as_sc_mcu7t3v3__merged.gds
	java GenMaskhints.java mag/*.mag
	sh gen_gds_lef.sh

characterize_tt:
	mkdir characterize
	cp mag/*.mag characterize/
	cp ../../../utils/*.sh characterize/
	cp lib/lctime_templates/template_tt.lib characterize/template.lib
	cd characterize && sh characterize_tt.sh
	cp characterize/merged.lib lib/gf180mcu_as_sc_mcu7t3v3__tt_025C_3v30.lib
	rm -rf characterize

characterize_ff:
	mkdir characterize
	cp mag/*.mag characterize/
	cp ../../../utils/*.sh characterize/
	cp lib/lctime_templates/template_ff.lib characterize/template.lib
	cd characterize && sh characterize_ff.sh
	cp characterize/merged.lib lib/gf180mcu_as_sc_mcu7t3v3__ff_n40C_3v60.lib
	rm -rf characterize

characterize_ss:
	mkdir characterize
	cp mag/*.mag characterize/
	cp ../../../utils/*.sh characterize/
	cp lib/lctime_templates/template_ss.lib characterize/template.lib
	cd characterize && sh characterize_ss.sh
	cp characterize/merged.lib lib/gf180mcu_as_sc_mcu7t3v3__ss_125C_3v00.lib
	rm -rf characterize
