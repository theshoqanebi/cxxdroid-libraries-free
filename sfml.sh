#!/usr/bin/sh
printf "\e[36m%s\e[0m\n" "Cxxdroid SFML Library Installation:-"
printf "\e[35m%s" "* Checking support: "
case `arch` in
	aarch64)
		printf "\e[32m%s\e[0m\n" "Supported";
		archurl="arm64" ;;
	arm*)
		printf "\e[32m%s\e[0m\n" "Supported";
		archurl="arm" ;;
	*)
		printf "\e[30m%s\e[0m\n" "Unsuppored";
		printf "\e[30m%s\e[0m\n" "* sfml library installation faild )-:"
		exit 1 ;;
	esac
printf "\e[35m%s" "* Downloading Files: "

wget "https://raw.githubusercontent.com/theshoqanebi/cxxdroid-libraries-free/main/sfml-${archurl}.tar.xz" -O "/data/user/0/ru.iiec.cxxdroid/app_HOME/sfml-${archurl}.tar.xz" >/dev/null 2>&1
printf "\e[32m%s\n" "Done"

printf "\e[35m%s" "* Installing Library: "
tar -xf "/data/user/0/ru.iiec.cxxdroid/app_HOME/sfml-${archurl}.tar.xz" -C /data/user/0/ru.iiec.cxxdroid/files/sysroot >/dev/null 2>&1
printf "\e[32m%s\n" "Done"

printf "\e[35m%s" "* Removing Temp Files: "
rm "/data/user/0/ru.iiec.cxxdroid/app_HOME/sfml-${archurl}.tar.xz"
printf "\e[32m%s\n" "Done"

printf "\e[32m%s\e[0m\n" "* SFML library installed successfully (-:"
