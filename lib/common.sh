#!/bin/bash

# Odd ends
SILENT="2>&1 >/dev/null"
TOSTDERR="1>&2"

# Check a command exists silently 
check() { command -v $1 $SILENT; }

# Time functions
ts_now(){ echo $(date +%s); }                                                   
ts_diff(){ echo $(( $(date +%s)-$1 )); } 

# Trace functions
start_trace(){ set +x; }
stop_trace(){ set -x; }
