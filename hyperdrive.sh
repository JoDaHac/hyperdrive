#! /usr/bin/env bash

# prints welcome message

FORMAT1_ON="\e[7m"
FORMAT1_OFF="\e[27m"

printf "%b%b%b\n" $FORMAT1_ON "Initiating Hyperdrive..." $FORMAT1_OFF

# prints delimiter
#printf "%b%b%b\n" $FORMAT1_ON
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
#pringting initial message
printf "%b%b%b\n" $FORMAT1_ON "Initiating Hyperdrive..." $FORMAT1_OFF
#printing menu
printf "%b%b%b\n	%b\n	%b\n	%b\n	%b\n	%b\n	%b\n	%b\n	%b\n" $FORMAT1_ON "Please make a selection:" $FORMAT1_OFF "0) - Disengage Hyperdrive (Exit)" "1) - Drive Health [SCRIPT]" "2) - XIAAS [SCRIPT]" "3) - Initial Server Check [SCRIPT]" "4) - Axon Firewall Fixer [SCRIPT]" "5) - Stale Backup Remover [SCRIPT]" "6) - Netstat output processor [SCRIPT]" "7) - Top Five Domains [SCRIPT]"
read -n 1 -p "[ MAKE A SELECTION: ]" selection
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

esac
