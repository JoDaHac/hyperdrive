#! /usr/bin/env bash

function z_print_info {

	cat <<'EOS'
 
#################################################################
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - #
#################################################################
#		  ___   _  _   ___    ___  								#
#		 |_ _| | \| | | __|  / _ \ 								#
#		  | |  | .` | | _|  | (_) |								#
#		 |___| |_|\_| |_|    \___/ 								#
#																#
#################################################################
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - #
#################################################################
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - #
#################################################################
#																#
# PURPOSE:														#
# 	This script is designed to assist and expedite				#
#	troubleshooting, appraisal, repair and optimization			#
#	of Linux servers											#
#																#
#	This script was written with for compatibility with			#
#	CentOS systems and may not function as expected				#
#	on all distributions										#
#################################################################
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - #
#################################################################
#																#
# REQUIREMENTS:													#
#																#
#	* BASH														#
#																#
#################################################################			
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - #
#################################################################
#																#
# ATTRIBUTIONS:													#
#																#
#	- This script is written by Justin Heil						#
#	- Please direct all feedback and bug reports to				#
#	  justin.h@hostdime.com										#
#																#
#################################################################
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - #
#################################################################
#																#
# LEGAL:														#
#																#
#	- This script is for HOSTDIME internal use ONLY				#
	  all other use is unauthorized								#
#	- All rights are reserverd									#
#	- This script may not be distributed for any reason			#
#																#
#################################################################
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - #
#################################################################
#		    __  ___   _  _   ___    ___  						#
# 		   / / |_ _| | \| | | __|  / _ \ 						#
#		  / /   | |  | .` | | _|  | (_) |						#
#		 /_/   |___| |_|\_| |_|    \___/ 						#
#																#
#################################################################

EOS

}

FORMAT1_ON="\e[107m\e[30m"	# Default format
FORMAT1_OFF="\e[0m\e[97m"	# Clears default format
F_SAFE="\e[96m"			# Marks a safe option or entry, shows good status
F_CAUTION="\e[33m"		# Marks a caution option or entry, shows poor status
F_DANGER="\e[31m"		# Marks a dangerous option or entry, shows error status
F_DEF="\e[0m\e[97m"		# Sets all formatting back to default

CHECKED="[X]"
NOCHECK="[ ]"


function z_disengage {
	printf "\n%s\n" "Hyperdrive disengaged"
      	exit 0
}

function z_printDelimit {

# prints delimiter
printf '%b%*s%b\n' "\e[107m" "${COLUMNS:-$(tput cols)}" '' "\e[49m"
printf '%b%*s%b\n' "\e[107m" "${COLUMNS:-$(tput cols)}" '' "\e[49m" | tr ' ' -
printf '%b%*s%b\n\n' "\e[107m" "${COLUMNS:-$(tput cols)}" '' "\e[49m"

}


# prints a simple message
# designed to greet the user
# & confirm what is about to run
function z_printGreeting {

printf "%b%b%b\n\n" $FORMAT1_ON "Hyperdrive Engaged..." $FORMAT1_OFF

}

# prints the main menu from which all other options are accessed
# first shows available options
# second lets user make choice
# third processes user choice  
function z_mainMenu {

        # printing options
	printf "%b" "\e[97m"
        printf "%s\n" "What would you like to do?"
        printf "%s\n" "0) - Exit Hyperdrive"
        printf "%s\n" "1) - Scripts"
	printf "%s\n" "2) - One-Liners"
	printf "%s\n" "3) - About"
	printf "\n"	# prints a delimiting line

        # prompting for input
        read -p $'\e[7m[ MAKE A SELECTION ]:\e[27m ' selection
        case $selection in

                0)
                        z_disengage
                        ;;
                1)
                        z_showScripts
                        ;;
		2)
			z_show_oneliners
			;;
		3)
			z_print_info
			;;
                *)
                        z_disengage
                        ;;

        esac

}

function z_showScripts {

        # printing menu
        printf "%s%s%s%s\n" "                                                                                             " "D"
        printf "%s%s%s%s\n" "                                                                                       " "   " "W  " "E"
        printf "%s%s%s%s\n" "                                                                                       " "R  " "R  " "L"
        printf "%s%s%s%s\n" "                                                                                       " "E  " "I  " "E"
        printf "%s%s%s%s\n" "                                                                                       " "A  " "T  " "T"
        printf "        %s%b%s%s%s\n" "0) - Exit Hyperdrive                                                           " $F_DEF "D  " "E  " "E"
        printf "        %s%b%s%b%s\n" "1) - Drive Health             (https://codex.dimenoc.com/scripts/62)  " $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF "[X][ ][ ]"
        printf "        %s%b%s%b%s\n" "2) - XIAAS                    (https://codex.dimenoc.com/scripts/174) " $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF "[X][ ][ ]"
        printf "        %s%b%s%b%s\n" "3) - Reboot Follow-Up         (https://codex.dimenoc.com/scripts/654) " $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF "[X][-][ ]"
        printf "        %s%b%s%b%s\n" "4) - Initial Server Check     (https://codex.dimenoc.com/scripts/180) " $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF "[X][ ][ ]"
        printf "        %s%b%s%b%s\n" "5) - Axon Firewall Fixer      (https://codex.dimenoc.com/scripts/156) " $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF "[X][X][ ]"
        printf "        %s%b%s%b%s\n" "6) - Stale Backup Remover     (https://codex.dimenoc.com/scripts/530) " $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF "[X][ ][X]"
        printf "        %s%b%s%b%s\n" "7) - Netstat Output           (https://codex.dimenoc.com/scripts/37)  " $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF "[X][ ][ ]"
        printf "        %s%b%s%b%s\n" "8) - Top 5 Domains            (https://codex.dimenoc.com/scripts/238) " $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF "[X][ ][ ]"
        printf "        %s%b%s%b%s\n" "9) - Advanced Server Check    (https://codex.dimenoc.com/scripts/261) " $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF "[X][ ][ ]"
        printf "        %s%b%s%b%s\n" "10) - Mandarax                (http://hexbeam.org/mandarax.sh)        " $FORMAT1_ON "[SCRIPT]" $FORMAT1_OFF "[ BETA! ]"
        printf "\n"
        #printf "%b%b%s%b%s%b%s%b%b\n" "\e[30m" "\e[42m" "LOOKS" "\e[43m" "MODIFIES" "\e[41m" "DELETES" "\e[39m" "\e[49m"
        read -p $'\e[7m[ MAKE A SELECTION ]:\e[27m ' selection
	printf "%b\n" '\e[0m'
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
                        bash <(curl -ks https://codex.dimenoc.com/scripts/download/rbtfollowup)
                        ;;
				4)
                        bash <(curl -ks https://codex.dimenoc.com/scripts/download/initialservercheck)
                        ;;
                5)
                        #echo "DEBUG: 2 Selected"
                        bash <(curl -ks https://codex.dimenoc.com/scripts/download/AxonCheck)
                        ;;
                6)
                        bash <(curl -ks https://codex.dimenoc.com/scripts/download/stalebackupremover)
                        ;;
                7)
                        bash <(curl -ks https://codex.dimenoc.com/scripts/download/connections)
                        ;;
                8)
                        bash <(curl -ks https://codex.dimenoc.com/scripts/download/topfivedomains)
                        ;;
                9)
                        bash <(curl -ks https://codex.dimenoc.com/scripts/download/AdvancedServerCheck)
                        ;;
				10)
						bash <(curl -ks http://hexbeam.org/mandarax.sh)
						;;
                *)
                        #echo "DEBUG: 0 Selected"
                        printf "\n%b\n" "Exiting Hyperdrive..."
                        exit 0
                        ;;

        esac
}

function z_show_oneliners {

	# printing menu
        printf "%s%s%s%s\n" "                                                                                             " "D"
        printf "%s%s%s%s\n" "                                                                                       " "   " "W  " "E"
        printf "%s%s%s%s\n" "                                                                                       " "R  " "R  " "L"
        printf "%s%s%s%s\n" "                                                                                       " "E  " "I  " "E"
        printf "%s%s%s%s\n" "                                                                                       " "A  " "T  " "T"
        printf "        %s%b%s%s%s\n" "0) - Exit Hyperdrive                                                           " $F_DEF "D  " "E  " "E"
	printf "\n"
	printf "        %s%b%s%b%s\n" "1) - Filtered Recent /var/log/messages                             " $FORMAT1_ON "[ONE-LINER]" $FORMAT1_OFF "[X][ ][ ]"
	printf "                %b%s%b\n" '\e[95m' "(  tail -n 100 /var/log/messages | egrep -vi 'firewall|named|ftd'  )" $F_DEF
	printf "        %s%b%s%b%s\n" "2) - \"Abuse One Liner\"                                             " $FORMAT1_ON "[ONE-LINER]" $FORMAT1_OFF "[X][ ][ ]"
	printf "                %b%s%b" '\e[95m' "(  OUT=\$(/usr/local/cpanel/bin/dcpumonview | grep -v Top ... ...  )" $F_DEF
	printf "\n"
	printf "\n"
	read -p $'\e[7m[ MAKE A SELECTION ]:\e[27m ' _selection
        printf "%b\n" '\e[0m'
        case $_selection in

		0)
			printf "\n%b\n" "Exiting Hyperdrive..."
			exit 0
			;;
		1)
			tail -n 100 /var/log/messages | egrep -vi 'firewall|named|ftd'
			;;
		2)
			OUT=$(/usr/local/cpanel/bin/dcpumonview | grep -v Top | sed -e 's#<[^>]*># #g' | while read i ; do NF=`echo $i | awk {'print NF'}` ; if [[ "$NF" == "5" ]] ; then USER=`echo $i | awk {'print $1'}`; OWNER=`grep -e "^OWNER=" /var/cpanel/users/$USER | cut -d= -f2` ; echo "$OWNER $i"; fi ; done) ; (echo "USER CPU" ; echo "$OUT" | sort -nrk4 | awk '{printf "%s %s%\n",$2,$4}' | head -5) | column -t ;echo;(echo -e "USER MEMORY" ; echo "$OUT" | sort -nrk5 | awk '{printf "%s %s%\n",$2,$5}' | head -5) | column -t ;echo;(echo -e "USER MYSQL" ; echo "$OUT" | sort -nrk6 | awk '{printf "%s %s%\n",$2,$6}' | head -5) | column -t; 
			;;
		*)
			exit 0
	
	esac

}	



z_printDelimit

z_printGreeting

z_mainMenu
