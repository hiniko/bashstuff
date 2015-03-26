#!/bin/bash
#
# BashStuff 
# A collection of helpful BASH functions to make writing and using scripts fun
#
# Author: Paul Rose
# Email: projects@paulrose.me
# Repo: https://github.com/niko-niko/bashstuff

BASHSTUFF="$(dirname ${BASH_SOURCE[0]})"
BASHSTUFFVERSION='0.1'
BASHSTUFFLOG="./${SCRIPT_NAME:-BashStuff}.log"

source $BASHSTUFF/lib/colours.sh
source $BASHSTUFF/lib/common.sh
source $BASHSTUFF/lib/logging.sh

if [[ $DEBUG ]]; then
	set +e
	debug ${bi_yellow}BASH${bi_red}Stuff${off} included! 
	debug Running from ${cyan}$BASHSTUFF${off}
fi
