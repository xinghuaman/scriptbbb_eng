#!/bin/bash
. /gentooplayer/script/colors.sh

ramdisk(){
  clear
  mount /dev/mmcblk0p1 2>/dev/null
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e ""
  echo -e "        $color1"GentooPlayer"$color_off - $BBlue"Ramdisk"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo ""
  echo -e " [1] Ramdisk Reset - to use when you need to change the ramdisk mode or changing the kernel"
  echo -e " [2] Ramdisk mode 1 - Squeezelite, Squeezelite-R2, Mpd, Networkaudiod"
  echo -e " [3] Ramdisk mode 2 - Squeezelite, Squeezelite-R2, Mpd, Networkaudiod, RoonBridge"
  echo -e " [4] Add the ramdisk at system startup"
  echo -e " [5] Remove the ramdisk at system startup"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo ""
  echo -e " [6] $BBlue"Reboot System"$Color_Off"
  echo -e " [7] $BBlue"Main Menu"$Color_Off"
  echo -e " [0] $BBlue"Exit"$Color_Off"
  echo ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e ""
echo -e "$Green"Choose your operation:"$Color_Off"
echo ""
read -p  " [0 - 7]:" oper
echo -e ""
case $oper in

1)
/gentooplayer/script/ramdiskreset.sh ;
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; ramdisk ;;
2)
cp /gentooplayer/script/ramdisk1.sh /gentooplayer/script/ramdisk.sh ;
echo -e "$Yellow do you want to start the ramdisk? y/n $Color_Off"
read want
	if [ "$want" = "y" ]; then
    /gentooplayer/script/ramdisk.sh
    fi ;
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; ramdisk ;;
3)
cp /gentooplayer/script/ramdisk2.sh /gentooplayer/script/ramdisk.sh ;
echo -e "$Yellow do you want to start the ramdisk? y/n $Color_Off"
read want
	if [ "$want" = "y" ]; then
    /gentooplayer/script/ramdisk.sh
    fi ;
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; ramdisk ;;
4)
/gentooplayer/script/ramdiskadd.sh ;
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; ramdisk ;;
5)
/gentooplayer/script/ramdiskremove.sh ;
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; ramdisk ;;
6)
reboot ;;
7) menu ;;
0) esci ;;
*) echo -e "$Red Invalid choice...$Color_Off" && sleep 2 ; ramdisk ;;
esac
}
