#!/bin/bash
. /gentooplayer/script/colors.sh

function pausa() {
  echo -e "$Yellow"
  read -s -p 'Press "Enter" to continue... CTRL+C to end'
  echo -e "$Color_Off"
  clear
}

echo
echo
echo -e "\n \e[38;5;197mthis version is no longer updated ....\e[0m\n"
echo -e "\n \e[38;5;197mit is recommended to download a new image of the system\e[0m\n"
echo -e "\n \e[38;5;88mhttps://www.nexthardware.com/forum/pc-top-software/90075-gentooplayer-easy-install-30.html#post990055\e[0m"
echo ""
echo ""
echo -e "Local overlay and gentooplayer scripts will be updated"

pausa

cd /tmp

if
mount -l | grep "none on /gentooplayer type tmpfs" 1>/dev/null && echo -e "\e[38;5;82mRamSystem you can not use gp-update\e[0m"; then
echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
exit 0
else
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
fi


if
git clone https://github.com/antonellocaroli/gentoo_overlaybbb.git; then
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
else
echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
exit 0
fi

if
rm -rf /usr/local/portage/antonellocaroli; then
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
else
echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
fi

if
mv gentoo_overlaybbb/ /usr/local/portage/antonellocaroli; then
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
else
echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
fi



if
git clone https://github.com/antonellocaroli/scriptbbb_eng.git; then
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
else
echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
exit 0
fi

if
rm -rf /gentooplayer; then
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
else
echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
fi

if
mv scriptbbb_eng/gentooplayer/bashrc /etc/bash/bashrc; then
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
else
echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
fi

if
mv scriptbbb_eng/gentooplayer/ /; then
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
else
echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
fi

if
rm -rf scriptbbb_eng; then
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
else
echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
fi

if
chmod -R +x /gentooplayer/*; then
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
else
echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
fi

if
source /etc/profile; then
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
else
echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
fi
