#!/usr/bin/env bash

export MATLAB_PREFDIR=`pwd`/PREFDIR
/usr/local/MATLAB/R2019b/bin/matlab \
	-nosplash \
	-nosoftwareopengl \
	-r "run('build_esp32pio_from_templates')"  \
	-sd `pwd` \
	-logfile build_esp32pio_from_templates.log
