#!/bin/bash
#
# BashStuff 
# A collection of helpful BASH functions to make writing and using scripts
#
# Author: Paul Rose
# Email: projects@paulrose.me
# Repo: https://github.com/niko-niko/bashstuff
#
# This is am edited list of colours and text styles from the Arch Linux wiki
# pulled from https://wiki.archlinux.org/index.php/color_bash_prompt

#
COLOURS=true

# reset
off='\e[0m'        #Text reset

# regular colors
black='\e[0;30m'         #black
red='\e[0;31m'           #red
green='\e[0;32m'         #green
yellow='\e[0;33m'        #yellow
blue='\e[0;34m'          #blue
purple='\e[0;35m'        #purple
cyan='\e[0;36m'          #cyan
white='\e[0;37m'         #white

# bold
b_black='\e[1;30m'        #black
b_red='\e[1;31m'          #red
b_green='\e[1;32m'        #green
b_yellow='\e[1;33m'       #yellow
b_blue='\e[1;34m'         #blue
b_purple='\e[1;35m'       #purple
b_cyan='\e[1;36m'         #cyan
b_white='\e[1;37m'        #white

# underline
u_black='\e[4;30m'        #black
u_red='\e[4;31m'          #red
u_green='\e[4;32m'        #green
u_yellow='\e[4;33m'       #yellow
u_blue='\e[4;34m'         #blue
u_purple='\e[4;35m'       #purple
u_cyan='\e[4;36m'         #cyan
u_white='\e[4;37m'        #white

# background
on_black='\e[40m'        #black
on_red='\e[41m'          #red
on_green='\e[42m'        #green
on_yellow='\e[43m'       #yellow
on_blue='\e[44m'         #blue
on_purple='\e[45m'       #purple
on_cyan='\e[46m'         #cyan
on_white='\e[47m'        #white

# High intensity
i_black='\e[0;90m'        #black
i_red='\e[0;91m'          #red
i_green='\e[0;92m'        #green
i_yellow='\e[0;93m'       #yellow
i_blue='\e[0;94m'         #blue
i_purple='\e[0;95m'       #purple
i_cyan='\e[0;96m'         #cyan
i_white='\e[0;97m'        #white

# bold High intensity
bi_black='\e[1;90m'       #black
bi_red='\e[1;91m'         #red
bi_green='\e[1;92m'       #green
bi_yellow='\e[1;93m'      #yellow
bi_blue='\e[1;94m'        #blue
bi_purple='\e[1;95m'      #purple
bi_cyan='\e[1;96m'        #cyan
bi_white='\e[1;97m'       #white

# High intensity backgrounds
oni_black='\e[0;100m'    #black
oni_red='\e[0;101m'      #red
oni_green='\e[0;102m'    #green
oni_yellow='\e[0;103m'   #yellow
oni_blue='\e[0;104m'     #blue
oni_purple='\e[0;105m'   #purple
oni_cyan='\e[0;106m'     #cyan
oni_white='\e[0;107m'    #white
