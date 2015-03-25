#!bin/bash

# Logging functions

log()  {
  if [[ $1 == "FATAL" || $1 == "ERROR" ]]; then
    echo -e "[$1] ${@:2}" 1>&2
  else
    echo -e "[$1] ${@:2}";
  fi
}

info() { log "${purple}INFO${white}" "$@" "${off}"; }
debug() { if [ ! -z $DEBUG ]; then log "${cyan}DEBUG${white}" "$@" "${off}"; fi; }
error() { log "${red}ERROR${white}" "$@" "${off}"; }
test() { log "${purple}TEST${white}" "$@" "${off}"; }
fatal() { log "${red}FATAL${white}" "$@" "${off}"; exit 1; }


# 
# Odd ends
#

SILENT="2>&1 >/dev/null"

# Check a command exists silently 
check() { command -v $1 $SLIENT; }

# Time functions

ts_now(){ echo $(date +%s); }
ts_diff(){ echo $( $(date +%s)-$1 ); }
