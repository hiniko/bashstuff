#!/bin/bash

# 
# Odd ends
#

SILENT="2>&1 >/dev/null"
STDERR="1>&2"

# Check a command exists silently 
check() { command -v $1 $SLIENT; }

# Time functions

ts_now(){ echo $(date +%s); }                                                   
ts_diff(){ echo $(( $(date +%s)-$1 )); } 
