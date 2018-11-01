#!/bin/bash
. /gentooplayer/script/colors.sh

function pausa() {
  echo -e "$Yellow"
  read -s -p 'Press "Enter" to continue... CTRL+C to end'
  echo -e "$Color_Off"
  clear
}

echo ""
echo ""
echo -e "Local overlay and gentooplayer scripts will be updated"

pausa

if
rm -rf /usr/local/portage/antonellocaroli; then
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
else
echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
fi

if
git clone https://github.com/antonellocaroli/gentoo_overlaybbb.git; then
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
rm -rf /gentooplayer; then
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
else
echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
fi

if
git clone https://github.com/antonellocaroli/scriptbbb_eng.git; then
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
