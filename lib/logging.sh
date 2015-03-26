#!/bin/bash
 
# Logging functions

# Create log file if it doesn't exist
[[ ! -e "$BASHSTUFFLOG" ]] && touch "$BASHSTUFFLOG";

log()  {
  local DATE="$(date -R)"
  if [[ $1 == "FATAL" || $1 == "ERROR" ]]; then
  	echo -e "${white}[$DATE]${off} $1 ${@:2}" 1>&2
  else	
        echo -e "${white}[$DATE]${off} $1 ${@:2}"
  fi
  echo -e "${white}[$DATE]${off} $1 ${@:2}" >> "$BASHSTUFFLOG"
}

info() { log "${purple}INFO${white}" "$@" "${off}"; }
debug() { if [ ! -z $DEBUG ]; then log "${cyan}DEBUG${white}" "$@" "${off}"; fi; }
error() { log "${red}ERROR${white}" "$@" "${off}"; }
test() { log "${yellow}TEST${white}" "$@" "${off}"; }
fatal() { log "${red}FATAL${white}" "$@" "${off}"; exit 1; }

debug Will log to $BASHSTUFFLOG
