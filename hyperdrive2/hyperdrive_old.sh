#! /usr/bin/env bash

# prints welcome message

FORMAT1_ON="\e[7m"
FORMAT1_OFF="\e[27m"
F_SAFE="\e[32m"
F_CAUTION="\e[33m"
F_DANGER="\e[31m"
F_DEF="\e[39m"

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

CHECKED="[X]"
NOCHECK="[ ]"

#printf "%b%b%b\n" $FORMAT1_ON "Please make a selection:" $FORMAT1_OFF
#printf "	%b%b%s%b%s%b%b%s%b\n" "\e[38;5;66m" $FORMAT1_ON "1)" $FORMAT1_OFF " - Drive Health              " "\e[39m" $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF
#printf "	%b%b%s%b%s%b%b%s%b\n" "\e[38;5;185m" $FORMAT1_ON "2)" $FORMAT1_OFF " - XIAAS                     " "\e[39m" $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF
#printf "	%b%b%s%b%s%b%b%s%b\n" "\e[38;5;81m" $FORMAT1_ON "3)" $FORMAT1_OFF " - Initial Server Check      " "\e[39m" $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF
#printf "	%b%b%s%b%s%b%b%s%b\n" "\e[38;5;176m" $FORMAT1_ON "4)" $FORMAT1_OFF " - Axon Firewall Fixer       " "\e[39m" $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF
#printf "	%b%b%s%b%s%b%b%s%b\n" "\e[38;5;70m" $FORMAT1_ON "5)" $FORMAT1_OFF " - Stale Backup Remover      " "\e[39m" $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF
#printf "	%b%b%s%b%s%b%b%s%b\n" "\e[38;5;200m" $FORMAT1_ON "6)" $FORMAT1_OFF " - Netstat Output            " "\e[39m" $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF

# prints delimiter
#printf "%b%b%b\n" $FORMAT1_ON
printf '%b%*s%b\n' "\e[41m" "${COLUMNS:-$(tput cols)}" '' "\e[49m"
printf '%b%*s%b\n' "\e[41m" "${COLUMNS:-$(tput cols)}" '' "\e[49m" | tr ' ' -
printf '%b%*s%b\n\n' "\e[41m" "${COLUMNS:-$(tput cols)}" '' "\e[49m"
#pringting initial message
printf "%b%b%b\n\n" $FORMAT1_ON "Hyperdrive Engaged..." $FORMAT1_OFF
#printing menu
printf "%s%s%s%s\n" "                                                                                             " "D"
printf "%s%s%s%s\n" "                                                                                       " "   " "W  " "E"
printf "%s%s%s%s\n" "                                                                                       " "R  " "R  " "L"
printf "%s%s%s%s\n" "                                                                                       " "E  " "I  " "E"
printf "%s%s%s%s\n" "                                                                                       " "A  " "T  " "T"
printf "	%b%s%b%s%s%s\n" $F_SAFE "0) - Exit Hyperdrive                                                           " $F_DEF "D  " "E  " "E"
printf "	%b%s%b%b%s%b%s%s%s\n" $F_SAFE "1) - Drive Health             (https://codex.dimenoc.com/scripts/62)  " $F_DEF $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF "$CHECKED" "$NOCHECK" "$NOCHECK"
printf "	%b%s%b%b%s%b%s%s%s\n" $F_SAFE "2) - XIAAS                    (https://codex.dimenoc.com/scripts/174) " $F_DEF $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF "$CHECKED" "$NOCHECK" "$NOCHECK"
printf "	%b%s%b%b%s%b%s%s%s\n" $F_SAFE "3) - Initial Server Check     (https://codex.dimenoc.com/scripts/180) " $F_DEF $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF "$CHECKED" "$NOCHECK" "$NOCHECK"
printf "	%b%s%b%b%s%b%s%s%s\n" $F_CAUTION "4) - Axon Firewall Fixer      (https://codex.dimenoc.com/scripts/156) " $F_DEF $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF "$CHECKED" "$CHECKED" "$NOCHECK"
printf "	%b%s%b%b%s%b%s%s%s\n" $F_DANGER "5) - Stale Backup Remover     (https://codex.dimenoc.com/scripts/530) " $F_DEF $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF "$CHECKED" "$CHECKED" "$CHECKED"
printf "	%b%s%b%b%s%b%s%s%s\n" $F_SAFE "6) - Netstat Output           (https://codex.dimenoc.com/scripts/37)  " $F_DEF $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF "$CHECKED" "$NOCHECK" "$NOCHECK"
printf "	%b%s%b%b%s%b%s%s%s\n" $F_SAFE "7) - Top 5 Domains            (https://codex.dimenoc.com/scripts/238) " $F_DEF $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF "$CHECKED" "$NOCHECK" "$NOCHECK"
printf "	%b%s%b%b%s%b%s%s%s\n" $F_SAFE "8) - Advanced Server Check    (https://codex.dimenoc.com/scripts/261) " $F_DEF $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF "$CHECKED" "$NOCHECK" "$NOCHECK"
printf "\n"
printf "%b%b%s%b%s%b%s%b%b\n" "\e[30m" "\e[42m" "LOOKS" "\e[43m" "MODIFIES" "\e[41m" "DELETES" "\e[39m" "\e[49m"
read -n 1 -p $'\e[7m[ MAKE A SELECTION: ]\e[27m' selection
case $selection in

        0)
                #echo "DEBUG: 0 Selected"
		printf "\n%b\n" "Exiting Hyperdrive..."
		exit 0	
                ;;
        1)
                #echo "DEBUG: 1 Selected"
		bash <(curl -ks https://codex.dimenoc.com/scripts/download/CheckDriveHealth)
                ;;
        2)
		python <(curl -ks https://codex.dimenoc.com/scripts/download/xiaas)
		;;
	3)
		bash <(curl -ks https://codex.dimenoc.com/scripts/download/initialservercheck)
		;;
	4)
                #echo "DEBUG: 2 Selected"
		bash <(curl -ks https://codex.dimenoc.com/scripts/download/AxonCheck)
                ;;
	5)	
		bash <(curl -ks https://codex.dimenoc.com/scripts/download/stalebackupremover)
		;;
	6)
		bash <(curl -ks https://codex.dimenoc.com/scripts/download/connections)
		;;
	7)
		bash <(curl -ks https://codex.dimenoc.com/scripts/download/topfivedomains)
		;;
	8)
		bash <(curl -ks https://codex.dimenoc.com/scripts/download/AdvancedServerCheck)
		;;
	*)
		#echo "DEBUG: 0 Selected"
                printf "\n%b\n" "Exiting Hyperdrive..."
                exit 0
                ;;

esac
