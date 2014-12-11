#!/bin/bash

####################################################################
#  _  _  ____  _____ _ _       ____ _               _              #
# | || ||___ \|  ___(_) | ___ / ___| |__   ___  ___| | _____ _ __  #
# | || |_ __) | |_  | | |/ _ \ |   | '_ \ / _ \/ __| |/ / _ \ '__| #
# |__   _/ __/|  _| | | |  __/ |___| | | |  __/ (__|   <  __/ |    #
#    |_||_____|_|   |_|_|\___|\____|_| |_|\___|\___|_|\_\___|_|    #
#    jgigault @ student.42.fr                    06 51 15 98 82    #
####################################################################

FILECHECKER_SH=1
source includes/utils.sh
source includes/libft.sh
source includes/get_next_line.sh
source includes/transition.sh
source includes/update.sh
source includes/credits.sh

RETURNPATH=$(pwd | sed 's/ /\ /g')
OPT_NO_UPDATE=0

i=1
while (( i <= $# ))
do
	if [ "${!i}" == "--no-update" ]
	then
		OPT_NO_UPDATE=1
	fi
	(( i += 1 ))
done

function main
{
	tput civis
	display_header
	display_righttitle ""
	display_menu\
		""\
		check_libft "libft"\
		check_gnl "get_next_line"\
		display_credits "CREDITS"\
		exit_checker "EXIT"
}

#display_header_transition
if [ "$OPT_NO_UPDATE" == "0" ]
then
	update
fi
main