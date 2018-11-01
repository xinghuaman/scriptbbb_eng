################# Select Kernel ################################################
selectk(){
  clear
  mount /boot 2>/dev/null
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e ""
  echo -e "        $color1"GentooPlayer"$color_off - $BBlue"Select Kernel"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo ""
  echo -e " [1] Kernel 1"
  echo -e " [2] Kernel 2"
  echo -e " [3] Kernel 3"
  echo -e " [4] Kernel 4"
  echo -e " [5] Kernel 5"
  echo -e " [6] Kernel 6"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo ""
  echo -e " [7] $BBlue"Main Menu"$Color_Off"
  echo -e " [0]  $BBlue"Exit"$Color_Off"
  echo ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e ""
echo -e "$Green"Choose your operation:"$Color_Off"
echo ""
read -p  " [0 - 7]:" oper
echo -e ""
case $oper in

1)
  cp -vf uImage_rcunocg uImage
  echo -e "the system will restart with the new kernel"
  echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
2)
  cp -vf uImage_rcucg uImage
  echo -e "the system will restart with the new kernel"
  echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
3)
  cp -vf uImage_1 uImage
  echo -e "the system will restart with the new kernel"
  echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
4)
  cp -vf uImage_2 uImage
  echo -e "the system will restart with the new kernel"
  echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
5)
  cp -vf uImage_standard uImage
  echo -e "the system will restart with the new kernel"
  echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
6)
  cp -vf uImage_rcunocgnopatch uImage
  echo -e "the system will restart with the new kernel"
  echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
7) menu ;;
0) esci ;;
*) echo -e "$Red Invalid choice...$Color_Off" && sleep 2 ; selectk ;;
esac
}
################# Ende Select Kernel ###########################################
