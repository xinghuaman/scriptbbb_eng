#!/bin/bash
################# Import #######################################################
. /gentooplayer/script/colors.sh
. /gentooplayer/script/function.sh
. /gentooplayer/script/function1.sh
. /gentooplayer/script/function2.sh
. /gentooplayer/script/function3.sh  #Ramdisk
################################################################################

################################################################################
################## Start comandi players #######################################
################################################################################

################### Squeezelite ################################################
squeeze(){
  clear
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e ""
  echo -e "        $color1"GentooPlayer"$color_off - $BBlue"Squeezelite"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e " [1]  $BGreen"Open the configuration file"$Color_Off"
  echo -e " [2]  $BGreen"Restart and Stop other players"$Color_Off"
  echo -e " [3]  $BGreen"Restart"$Color_Off"
  echo -e " [4]  $BRed"Stop"$Color_Off"
  echo -e " [5]  $BGreen"Add to the system boot"$Color_Off"
  echo -e " [6]  $BRed"Remove from starting the system"$Color_Off"
  echo -e " [7]  $BGreen"Update Squeezelite"$Color_Off"
  echo -e " [8]  $BRed"Remove Squeezelite from the system"$Color_Off"
  echo -e " [9]  $BRed"Read log"$Color_Off"
  echo -e " [10] $BRed"Send log"$Color_Off"
  echo -e " [11] $BBlue"Players Menu"$Color_Off"
  echo -e " [12] $BBlue"Main Menu"$Color_Off"
  echo -e " [0]  $BBlue"Exit"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e ""
echo -e "$Green"Choose your operation:"$Color_Off"
echo ""
read -p  " [0 - 12]:" oper
echo -e ""
case $oper in

1) sqc ; squeeze ;;
2) sqr ; squeeze ;;
3) sqrestart ; squeeze ;;
4) sqstop ; squeeze ;;
5) sqadd ; squeeze ;;
6) sqremove ; squeeze ;;
7)
  echo -e "$Green Update Squeezelite? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  echo "Wait..."
  /etc/init.d/ntp-client restart
  echo "Wait.."
  sleep 5
  gp-update
  emerge --ask squeezelite ;
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; squeeze ;;
8)
  echo -e "$Red Remove Squeezelite from the system? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  echo "Wait..."
  emerge -C squeezelite
  emerge --depclean
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; squeeze ;;
9)
  echo -e "$Green View the squeezelite log? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  cat /var/log/squeezelite.log ;
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; squeeze ;;
10)
  echo -e "$Green Create the log sharing link? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  echo " Wait..."
  wgetpaste /var/log/squeezelite.log ;
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; squeeze ;;
11) players ;;
12) menu ;;
0) esci ;;
*) echo -e "$Red Invalid choice...$Color_Off" && sleep 2 ; squeeze ;;
esac
}

###################squeezelite-R2###############################################
squeezer(){
  clear
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e ""
  echo -e "        $color1"GentooPlayer"$color_off - $BBlue"Squeezelite-R2"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e " [1]  $BGreen"Open the configuration file"$Color_Off"
  echo -e " [2]  $BGreen"Restart and stop other players"$Color_Off"
  echo -e " [3]  $BGreen"Restart"$Color_Off"
  echo -e " [4]  $BRed"Stop"$Color_Off"
  echo -e " [5]  $BGreen"Add to the system boot"$Color_Off"
  echo -e " [6]  $BRed"Remove from starting the system"$Color_Off"
  echo -e " [7]  $BGreen"Update Squeezelite-R2"$Color_Off"
  echo -e " [8]  $BRed"Remove Squeezelite-R2 from the system"$Color_Off"
  echo -e " [9]  $BRed"Read log"$Color_Off"
  echo -e " [10] $BRed"Send log"$Color_Off"
  echo -e " [11] $BBlue"Players Menu"$Color_Off"
  echo -e " [12] $BBlue"Main Menu"$Color_Off"
  echo -e " [0]  $BBlue"Exit"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e ""
echo -e "$Green"Choose your operation:"$Color_Off"
echo ""
read -p  " [0 - 12]:" oper
echo -e ""
case $oper in

1) sqc2 ; squeezer ;;
2) sqr2 ; squeezer ;;
3) sqrestart2 ; squeezer ;;
4) sqstop2 ; squeezer ;;
5) sqadd2 ; squeezer ;;
6) sqremove2 ; squeezer ;;
7)
  echo -e "$Green Update Squeezelite-R2? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  echo "Wait..."
  /etc/init.d/ntp-client restart
  echo "Wait.."
  sleep 5
  gp-update
  emerge --ask squeezelite-R2 ;
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; squeezer ;;
8)
  echo -e "$Red Remove Squeezelite-R2 from the system? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  echo "Wait..."
  emerge -C squeezelite-R2
  emerge --depclean
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; squeezer ;;
9)
  echo -e "$Green View the squeezelite-R2 log? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  cat /var/log/squeezelite-R2.log ;
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; squeezer ;;
10)
  echo -e "$Green Create the log sharing link? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  echo " Wait..."
  wgetpaste /var/log/squeezelite-R2.log ;
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; squeezer ;;
11) players ;;
12) menu ;;
0) esci ;;
*) echo -e "$Red Invalid choice...$Color_Off" && sleep 2 ; squeezer ;;
esac
}

###################Networkaudiod################################################
nad(){
  clear
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e ""
  echo -e "        $color1"GentooPlayer"$color_off - $BBlue"Networkaudiod"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e " [1]  $BGreen"Restart and stop other players"$Color_Off"
  echo -e " [2]  $BGreen"Restart"$Color_Off"
  echo -e " [3]  $BRed"Stop"$Color_Off"
  echo -e " [4]  $BGreen"Add to the system boot"$Color_Off"
  echo -e " [5]  $BRed"Remove from starting the system"$Color_Off"
  echo -e " [6]  $BGreen"Update Networkaudiod"$Color_Off"
  echo -e " [7]  $BRed"Remove Networkaudiod from the system"$Color_Off"
  echo -e " [8]  $BRed"Read log"$Color_Off"
  echo -e " [9]  $BRed"Submit log"$Color_Off"
  echo -e " [10] $BBlue"Players Menu"$Color_Off"
  echo -e " [11] $BBlue"Main Menu"$Color_Off"
  echo -e " [0]  $BBlue"Exit"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e ""
echo -e "$Green"Choose your operation:"$Color_Off"
echo ""
read -p  " [0 - 11]:" oper
echo -e ""
case $oper in

1) nadr ; nad ;;
2) nadrestart ; nad ;;
3) nadstop ; nad ;;
4) nadadd ; nad ;;
5) nadremove ; nad ;;
6)
  echo -e "$Green Update Networkaudiod? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  echo " Wait..."
  /etc/init.d/ntp-client restart
  echo "Wait.."
  sleep 5
  gp-update
  emerge --ask networkaudiod-bin ;
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; nad ;;
7)
  echo -e "$Red Remove Networkaudiod from the system? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  echo "Wait..."
  emerge -C networkaudiod-bin
  emerge --depclean
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; nad ;;
8)
  echo -e "$Green View the Networkaudiod log? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  cat /var/log/networkaudiod.log ;
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; nad ;;
9)
  echo -e "$Green Create the log sharing link? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  echo " Wait..."
  wgetpaste /var/log/networkaudiod.log ;
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; nad ;;
10) players ;;
11) menu ;;
0) esci ;;
*) echo -e "$Red Invalid choice...$Color_Off" && sleep 2 ; nad ;;
esac
}


################### Mpd ########################################################
mp(){
  clear
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e ""
  echo -e "        $color1"GentooPlayer"$color_off - $BBlue"Mpd"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e " [1]  $BGreen"Open the configuration file"$Color_Off"
  echo -e " [2]  $BGreen"Restart and stop other players"$Color_Off"
  echo -e " [3]  $BGreen"Restart"$Color_Off"
  echo -e " [4]  $BRed"Stop"$Color_Off"
  echo -e " [5]  $BGreen"Add to the system boot"$Color_Off"
  echo -e " [6]  $BRed"Remove from starting the system"$Color_Off"
  echo -e " [7]  $BGreen"Update Mpd"$Color_Off"
  echo -e " [8]  $BRed"Remove Mpd from the system"$Color_Off"
  echo -e " [9]  $BRed"Read log"$Color_Off"
  echo -e " [10] $BRed"Send log"$Color_Off"
  echo -e " [11] $BBlue"Players Menu"$Color_Off"
  echo -e " [12] $BBlue"Main Menu"$Color_Off"
  echo -e " [0]  $BBlue"Exit"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e ""
echo -e "$Green"Choose your operation:"$Color_Off"
echo ""
read -p  " [0 - 12]:" oper
echo -e ""
case $oper in

1) mpdc ; mp ;;
2) mpdr ; mp ;;
3) mpdrestart ; mp ;;
4) mpdstop ; mp ;;
5) mpdadd ; mp ;;
6) mpdremove ; mp ;;
7)
  echo -e "$Green Update Mpd? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  echo "Wait..."
  /etc/init.d/ntp-client restart
  echo "Wait.."
  sleep 5
  gp-update
  emerge --ask mpd ;
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; mp ;;
8)
  echo -e "$Red Remove Mpd from the system? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  echo "Wait..."
  emerge -C mpd
  emerge --depclean
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; mp ;;
9)
  echo -e "$Green View the Mpd log? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  cat /var/log/mpd.log ;
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; mp ;;
10)
  echo -e "$Green Create the log sharing link? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  echo " Wait..."
  wgetpaste /var/log/mpd.log ;
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; mp ;;
11) players ;;
12) menu ;;
0) esci ;;
*) echo -e "$Red Invalid choice...$Color_Off" && sleep 2 ; mp ;;
esac
}



################### RoonBridge #################################################
roonb(){
  clear
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e ""
  echo -e "        $color1"GentooPlayer"$color_off - $BBlue"RoonBridge"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e " [1]  $BGreen"Restart and stop other players"$Color_Off"
  echo -e " [2]  $BGreen"Restart"$Color_Off"
  echo -e " [3]  $BRed"Stop"$Color_Off"
  echo -e " [4]  $BGreen"Add to the system boot"$Color_Off"
  echo -e " [5]  $BRed"Remove from starting the system"$Color_Off"
  echo -e " [6]  $BGreen"Update RoonBridge"$Color_Off"
  echo -e " [7]  $BRed"Remove RoonBridge from the system"$Color_Off"
  echo -e " [8]  $BRed"Read log"$Color_Off"
  echo -e " [9]  $BRed"Send log"$Color_Off"
  echo -e " [10] $BBlue"Players Menu"$Color_Off"
  echo -e " [11] $BBlue"Main Menu"$Color_Off"
  echo -e " [0]  $BBlue"Exit"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e ""
echo -e "$Green"Choose your operation:"$Color_Off"
echo ""
read -p  " [0 - 11]:" oper
echo -e ""
case $oper in

1) roonr ; roonb ;;
2) roonrestart ; roonb ;;
3) roonstop ; roonb ;;
4) roonadd ; roonb ;;
5) roonremove ; roonb ;;
6)
  echo -e "$Green Update RoonBridge? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  echo "Wait..."
  /etc/init.d/ntp-client restart
  echo "Wait.."
  sleep 5
  gp-update
  emerge --ask roon-bridge ;
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; roonb ;;
7)
  echo -e "$Red Remove RoonBridge from the system? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  echo "Wait..."
  emerge -C roon-bridge
  emerge --depclean
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; roonb ;;
8)
  echo -e "$Green view the RoonBridge log? $Color_Off"
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  cat /var/log/roon.log ;
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; roonb ;;
9)
  echo -e "$Green Create the log sharing link? $Color_Off "
  echo ""
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
  echo " Wait..."
  wgetpaste /var/log/roon.log ;
  echo
  echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; roonb ;;
10) players ;;
11) menu ;;
0) esci ;;
*) echo -e "$Red Invalid choice...$Color_Off" && sleep 2 ; roonb ;;
esac
}


################################################################################

############## Players-Menu ####################################################
players(){
  clear
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e ""
  echo -e "        $color1"GentooPlayer"$color_off - $BBlue"PlayersMenu"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e " [1] Squeezelite"
  echo -e " [2] Squeezelite-R2"
  echo -e " [3] Networkaudiod"
  echo -e " [4] Mpd"
  echo -e " [5] RoonBridge"
  echo -e " [6] $BBlue"Main Menu"$Color_Off"
  echo -e " [0] $BBlue"Exit"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e ""
echo -e "$Green"Choose your operation:"$Color_Off"
echo ""
read -p  " [0 - 6]:" play
echo -e ""
case $play in

1) squeeze ;;
2) squeezer ;;
3) nad ;;
4) mp ;;
5) roonb ;;
6) menu ;;
0) esci ;;
*) echo -e "$Red Invalid choice...$Color_Off" && sleep 2 ; players ;;
esac
}
################################################################################
################ Ende Players ##################################################
################################################################################

################################################################################
############## Start Base-System ###############################################
################################################################################

####################### Configure System #######################################
confs(){
  clear
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e ""
  echo -e "        $color1"GentooPlayer"$color_off - $BBlue"ConfigureSystem"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m───────────────Extreme──────────────────────\e[0m"
  echo -e " [1] Disabel ssh"
  echo -e " [2] Turn off the linux console (tty) - useful if you do not use a monitor"
  echo -e " \e[38;5;154m───────────────Experimental──────────────────────\e[0m"
  echo -e " [3] Experimental settings (all changes)"
  echo -e " [4] Experimental settings such as testing unless changes are made on the network"
  echo -e " [5] Reset all changes to system files"
  echo -e " [6] Reset all changes except limit.conf"
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo
  echo -e " [7] $BBlue"System Menu"$Color_Off"
  echo -e " [8] $BBlue"Main Menu"$Color_Off"
  echo -e " [0] $BBlue"Exit"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e ""
echo -e "$Green"Choose your operation:"$Color_Off"
echo ""
read -p  " [0 - 8]:" play
echo -e ""
case $play in

1)
ssh-off
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; confs ;;
2)
console-off
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; confs ;;
3)
testsetting
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; confs ;;
4)
testsetting1
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; confs ;;
5)
normalsetting
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; confs ;;
6)
normalsetting1
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; confs ;;
7) systemm ;;
8) menu ;;
0) esci ;;
*) echo -e "$Red Invalid choice...$Color_Off" && sleep 2 ; confs ;;
esac
}

####################### RT System ##############################################
rts(){
  clear
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e ""
  echo -e "        $color1"GentooPlayer"$color_off - $BBlue"RTSystem"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e " [1] Opens the RTirq configuration wizard"
  echo -e " [2] Opens the RT-IRQ configuration file for system irq priorities"
  echo -e " [3] Add RTirq on startup"
  echo -e " [4] Remove RTirq from startup"
  echo -e " [5] RT Check - rtcheck will show some important information about your system"
  echo -e " [6] RT Monitor IRQ - For checking the realtime utilization you can start rtmonitorirq"
  echo -e " [7] RT Reset - reset all real time priority (irq and applications) to SCHED_OTHER"
  echo -e " [8] RT Status - show the status of irq and applications realtime priorities"
  echo -e " [9] RT Cards - It is very useful for checking if your audio card is sharing IRQ with another device"
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo
  echo -e " [10]  $BBlue"System Menu"$Color_Off"
  echo -e " [11] $BBlue"Main Menu"$Color_Off"
  echo -e " [0]  $BBlue"Exit"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e ""
echo -e "$Green"Choose your operation:"$Color_Off"
echo ""
read -p  " [0 - 11]:" play
echo -e ""
case $play in

1)
rtirqconf
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; rts ;;
2)
rtirqc
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; rts ;;
3)
rtirqadd
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; rts ;;
4)
rtirqremove
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; rts ;;
5)
rtcheck
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; rts ;;
6)
rtmonitorirq
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; rts ;;
7)
rtreset
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; rts ;;
8)
rtstatus
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; rts ;;
9)
rtcards
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; rts ;;
10) systemm ;;
11) menu ;;
0) esci ;;
*) echo -e "$Red Invalid choice...$Color_Off" && sleep 2 ; rts ;;
esac
}

####################### CPU and Process-Setting ################################
cpum(){
  clear
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e ""
  echo -e "        $color1"GentooPlayer"$color_off - $BBlue"CpuProcessSetting"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e " [1] Info Cpu"
  echo -e " \e[38;5;154m─────────────────Governor───────────────────\e[0m"
  echo -e " [2] Change Governor and CPU frequency"
  echo -e " [3] Make permanent changes"
  echo -e " [4] Remove changes, deafult manage the kernel"
  echo -e " \e[38;5;154m─────────────────Process────────────────────\e[0m"
  echo -e " [5] Change affinity-schedular-nice-priority for aplications"
  echo -e " [6] Make permanent changes"
  echo -e " [7] Remove changes"
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo
  echo -e " [8] $BBlue"System Menu"$Color_Off"
  echo -e " [9] $BBlue"Main Menu"$Color_Off"
  echo -e " [0] $BBlue"Exit"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e ""
echo -e "$Green"Choose your operation:"$Color_Off"
echo ""
read -p  " [0 - 8]:" play
echo -e ""
case $play in

1)
cpu-info
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; cpum ;;
2)
cpu-governor
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; cpum ;;
3)
cpu-governor-add
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; cpum ;;
4)
cpu-governor-remove
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; cpum ;;
5)
process-tool
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; cpum ;;
6)
process-tool-add
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; cpum ;;
7)
process-tool-remove
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; cpum ;;
8) systemm ;;
9) menu ;;
0) esci ;;
*) echo -e "$Red Invalid choice...$Color_Off" && sleep 2 ; cpum ;;
esac
}

####################### Base System ############################################
systemb(){
  clear
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e ""
  echo -e "        $color1"GentooPlayer"$color_off - $BBlue"BaseSystem"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e " [1] Process Viewer"
  echo -e " [2] View the network cards and the current IP"
  echo -e " [3] Change the root password"
  echo -e " [4] View the current status of the Sound Card"
  echo -e " [5] Opens the static IP configuration wizard"
  echo -e " [6] Mount HD and LAN or NAS shares"
  echo -e " [7] $BBlue"System Menu"$Color_Off"
  echo -e " [8] $BBlue"Main Menu"$Color_Off"
  echo -e " [0] $BBlue"Exit"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e ""
echo -e "$Green"Choose your operation:"$Color_Off"
echo ""
read -p  " [0 - 8]:" play
echo -e ""
case $play in

1) htop ; systemb ;;
2)
ifconfig
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; systemb ;;
3) passwd ; systemb ;;
4)
audio
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; systemb ;;
5)
ipstatic
echo
echo -e "$Yellow the system will restart $Color_Off" && sleep 5 ; reboot ;;
6)
mountf
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; systemb ;;
7) systemm ;;
8) menu ;;
0) esci ;;
*) echo -e "$Red Invalid choice...$Color_Off" && sleep 2 ; systemb ;;
esac
}

####################### System Menu ############################################
systemm(){
  clear
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e ""
  echo -e "        $color1"GentooPlayer"$color_off - $BBlue"SystemMenu"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e " [1] Base System"
  echo -e " [2] CPU and Process-Setting"
  echo -e " [3] RT System"
  echo -e " [4] Configure System"
  echo -e " [5] $BBlue"Main Menu"$Color_Off"
  echo -e " [0] $BBlue"Exit"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e ""
echo -e "$Green"Choose your operation:"$Color_Off"
echo ""
read -p  " [0 - 5]:" play
echo -e ""
case $play in

1) systemb ;;
2) cpum ;;
3) rts ;;
4) confs ;;
5) menu ;;
0) esci ;;
*) echo -e "$Red Invalid choice...$Color_Off" && sleep 2 ; players ;;
esac
}

################################################################################
#################### Ende system ###############################################
################################################################################

#############  ESCI ############################################################
esci(){
clear
echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo
echo -e "$color1 GentooPlayer$color_off: use the $color1"home"$color_off command to return to the main screen "
echo
echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
exit
}

################# Menu Principale ##############################################
menu(){
clear
echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e ""
echo -e "        $color1"GentooPlayer"$color_off - $BBlue"MainMenu"$Color_Off"
echo -e ""
echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e " [1] Players"
echo -e " [2] System"
echo -e " [3] Allows the choice between various Kernel configurations"
echo -e " [4] Synchronize date and time"
echo -e " [5] Update Overlay and Script"
echo -e " [6] $Cyan"Update system"$Color_Off"
echo -e " [7] Wizard configurations, Mpd, squeezelite, squeezelite-R2"
echo -e " [8] Ramdisk - System in ram"
echo -e " [9] $BRed"Turn off the system"$Color_Off"
echo -e " [0] $BBlue"Exit"$Color_Off"
echo -e ""
echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
}


################# opzioni menu principale ######################################
opzioni(){
echo -e "$Green"Choose your operation:"$Color_Off"
echo -e ""
local choice
read -p " [0 - 9] " choice
case $choice in
1) players ;;
2) systemm ;;
3) selectk ;;
4)
/etc/init.d/ntp-client restart 2>/dev/null
echo "Wait.."
sleep 5
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ;;
5)
echo -e "$Green Update Script and Overlay? $Color_Off"
echo ""
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
echo "Wait..."
/etc/init.d/ntp-client restart 2>/dev/null
echo "Wait.."
sleep 5
gp-update ;
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ;;
6)
echo -e "$Green Update System? $Color_Off"
echo ""
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1
echo "Wait..."
/etc/init.d/ntp-client restart
echo "Wait.."
sleep 5
gp-update
emerge-webrsync
emerge --ask --update --deep --with-bdeps=y --newuse @world
emerge --resume --skipfirst
emerge --depclean
revdep-rebuild ;
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ;;
7) sqconfig ;;
8) ramdisk ;;
9) shutd ;;
0) esci ;;
*) echo -e "$Red Invalid choice...$Color_Off" && sleep 2 ;;
esac
}

######### script0 ##############################################################
while true
do

	menu
	opzioni
done
################################################################################
