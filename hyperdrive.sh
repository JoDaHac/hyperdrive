#! /usr/bin/env bash

FORMAT1_ON="\e[7m"
FORMAT1_OFF="\e[27m"

#colors and formatting
ZBOLD="\e[1m" #bold
ZNOBOLD="\e[22m" #turn bold off, also turns dim off
ZUNDER="\e[4m" #turn underline on
ZNOUNDER="\e[24m" #turn underline off
ZREV="\e[7m" #turn inverted on
ZNOREV="\e[27m" #turn inverted off

ZFDEF="\e[39m" #default 
ZFBLA="\e[30m" #black
ZFRED="\e[31m" #red
ZFGRE="\e[32m" #green
ZFYEL="\e[33m" #yellow
ZFBLU="\e[34m" #blue
ZFMAG="\e[35m" #magenta
ZFCYA="\e[36m" #cyan
ZFLGRA="\e[37m" #light gray
ZFDGRA="\e[90m" #dark gray
ZFLRED="\e[91m" #light red
ZFLGRE="\e[92m" #light green
ZFLYEL="\e[93m" #light yellow
ZFLBLU="\e[94m" #light blue
ZFLMAG="\e[95m" #light magenta
ZFLCYA="\e[96m" #light cyan
ZFWHI="\e[97m" #white
ZBDEF="\e[49m" #default background
ZBBLA="\e[40m" #black background
ZBRED="\e[41m" #red background
ZBGRE="\e[42m" #green background
ZBYEL="\e[43m" #yellow background
ZBBLU="\e[44m" #blue background
ZBMAG="\e[45m" #magenta background
ZBCYA="\e[46m" #cyan background
ZBLGRA="\e[47m" #light gray background
ZBDGRA="\e[100m" #dark gray background
ZBLRED="\e[101m" #light red background
ZBLGRE="\e[102m" #light green background
ZBLYEL="\e[103m" #light yellow background
ZBLBLU="\e[104m" #light blue background
ZBLMAG="\e[105m" #light magenta background
ZBLCYA="\e[106m" #light cyan background
ZBWHI="\e[107m" #white background

function PRINT_WELCOME { #prints welcome message
printf "%b%b%b\n" $FORMAT1_ON "Initiating Hyperdrive..." $FORMAT1_OFF 
} 

function PRINT_MAINMENU { #prints main menu
printf "%b%b%b\n	%b\n	%b\n	%b\n" $FORMAT1_ON "Please make a selection:" $FORMAT1_OFF "1) - Scripts" "2) - [PLACEHOLDER OPTION]" "3) - EXIT" 
}

PRINT_WELCOME
PRINT_MAINMENU
read -p "[ MAKE A SELECTION: ]" selection
case $selection in
	
	1)
		echo "DEBUG: 1 Selected"
		;;
	
	2)	
		echo "DEBUG: 2 Selected"
		;;

	3)	
		echo "DEBUG: 3 Selected"
		;;

esac
