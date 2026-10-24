#!/usr/bin/sh

# Colors
RESET='\e[0m'
CYAN='\e[36m'
MAGENTA='\e[35m'
GREEN='\e[32m'
BLACK='\e[30m'

printf "${CYAN}%s${RESET}\n" "Cxxdroid SFML Library Installation:-"

printf "${MAGENTA}%s" "* Checking support: "
case `arch` in
	aarch64)
		printf "${GREEN}%s${RESET}\n" "Supported"
		archurl="arm64"
		;;
	arm*)
		printf "${GREEN}%s${RESET}\n" "Supported"
		archurl="arm"
		;;
	*)
		printf "${BLACK}%s${RESET}\n" "Unsupported"
		printf "${BLACK}%s${RESET}\n" "* SFML library installation failed )-:"
		exit 1
		;;
esac

printf "${MAGENTA}%s" "* Downloading Files: "

wget "https://raw.githubusercontent.com/theshoqanebi/cxxdroid-libraries-free/main/sfml-${archurl}.tar.xz" \
	-O "/data/user/0/ru.iiec.cxxdroid/app_HOME/sfml-${archurl}.tar.xz" \
	>/dev/null 2>&1

printf "${GREEN}%s${RESET}\n" "Done"

printf "${MAGENTA}%s" "* Installing Library: "

tar -xf "/data/user/0/ru.iiec.cxxdroid/app_HOME/sfml-${archurl}.tar.xz" \
	-C /data/user/0/ru.iiec.cxxdroid/files/sysroot \
	>/dev/null 2>&1

printf "${GREEN}%s${RESET}\n" "Done"

printf "${MAGENTA}%s" "* Removing Temp Files: "

rm "/data/user/0/ru.iiec.cxxdroid/app_HOME/sfml-${archurl}.tar.xz"

printf "${GREEN}%s${RESET}\n" "Done"

printf "${GREEN}%s${RESET}\n" "* SFML library installed successfully (-:"