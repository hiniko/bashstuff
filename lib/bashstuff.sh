#!/bin/bash
#
# BashStuff 
# A collection of helpful BASH functions to make writing and using scripts fun
#
# This file contains a bunch of helpful options for writing scripts 
#
# Author: Paul Rose
# Email: projects@paulrose.me
# Repo: https://github.com/niko-niko/bashstuff

# Debugging options for Bash
set -o errexit      # exit on command error
set -o nounset      # exit when undeclared var is used  
set -o pipefail     # exit when a pipe fails

DEBUG=false
BASHSTUFF="$(dirname ${BASH_SOURCE[0]})"
BASHSTUFFVERSION='0.1'
BASHSTUFFLOG="./${SCRIPT_NAME:-BashStuff}.log"
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__root="$(cd "$(dirname "${__dir}")" && pwd)" # <-- change this
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"
__base="$(basename ${__file} .sh)"
args="${1:-}"

source $BASHSTUFF/common.sh
source $BASHSTUFF/colours.sh
source $BASHSTUFF/logging.sh

if [[ $DEBUG = true ]]; then
    debug ${white}Debugging Enabled\!
	debug ${bi_yellow}BASH${bi_red}Stuff${off} included\! Running from ${cyan}$BASHSTUFF${off}
fi
