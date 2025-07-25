# gf180mcu_as_sc_mcu7t3v3

## WiP

### Custom Standard Cell Library

gf180mcu_as_sc_mcu7t3v3 is a custom standard cell library for the GF180MCU PDK that is compatible with the default OpenLane flow in caravel and openframe wrappers.

The goal is it to build a high-speed library that operates natively at a 3.3V voltage level. Contrast this with the fab-provided 7-track and 9-track SCL for GF180MCU, which are designed around 5V MOSFET devices.

This project makes use of [lctime](https://codeberg.org/TholinVali/lctime) (custom fork) for characterization.

## Usage

After cloning this repo and setting up your user project (caravel or openframe), copy the contents of the `pdk/` directory (`libs.ref/` and `libs.tech/`) from here to `your_user_project/dependencies/pdks/gf180mcuD/`, merging with the existing directory structure and overwriting existing files if prompted.

Edit the openlane config file for the macro you wish to use this library, and add/edit the following lines:

`"STD_CELL_LIBRARY": "gf180mcu_as_sc_mcu7t3v3"`
and
`"STD_CELL_LIBRARY_OPT": "gf180mcu_as_sc_mcu7t3v3"`
to switch to the library.

Then, `"RUN_CVC": 0` as the Circuit Validity Check is not supported.

The klayout XOR check will fail if the GDSII of the standard cells is not linked to explicitly, so either add this list/copy the entry to an existing one:
```json
"EXTRA_GDS_FILES": [
	"dir::../../dependencies/pdks/gf180mcuD/libs.ref/gf180mcu_as_sc_mcu7t3v3/gf180mcu_as_sc_mcu7t3v3__merged.gds"
]
```
or disable the XOR check:
`"RUN_KLAYOUT_XOR": 0`

Ensure you are using the latest OpenLane (OPENLANE_TAG=latest), or else you will encounter problems.

From there, the makefile actions to run the OpenLane flow should work as normal.
