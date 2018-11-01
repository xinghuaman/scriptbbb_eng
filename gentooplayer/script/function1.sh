######################### ST Kernel ############################################
kernelbot(){
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e ""
  echo -e "        $color1"GentooPlayer"$color_off - $BBlue"Select Kernel Botic"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo ""
  echo -e " [1]  4.18.11-GentooPlayer-ST"
  echo -e " [2]  4.18.11-GentooPlayer-MIN-100"
  echo -e " [3]  4.18.11-GentooPlayer-MIN-250"
  echo -e " [4]  4.18.11-GentooPlayer-MIN-500"
  echo -e " [5]  4.18.11-GentooPlayer-MIN-1000"
  echo -e " [6]  4.18.11-GentooPlayer-MIN-1000M1"
  echo -e " [7]  4.18.11-GentooPlayer-MIN-1000RCU"
  echo -e " \e[38;5;154m─────────────────RealTime────────────────────\e[0m"
  echo -e " [8]  4.18.11-GentooPlayer-ST-RT"
  echo -e " [9]  4.18.11-GentooPlayer-MIN-100-RT"
  echo -e " [10]  4.18.11-GentooPlayer-MIN-250-RT"
  echo -e " [11]  4.18.11-GentooPlayer-MIN-500-RT"
  echo -e " [12]  4.18.11-GentooPlayer-MIN-1000-RT"
  echo -e " [13]  4.18.11-GentooPlayer-MIN-1000M1-RT"
  echo -e " [14]  4.18.11-GentooPlayer-MIN-1000RCU-RT"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo ""
  echo -e " [15] $BBlue"Select Kernel Menu"$Color_Off"
  echo -e " [16] $BBlue"Main Menu"$Color_Off"
  echo -e " [0]  $BBlue"Exit"$Color_Off"
  echo ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e ""
echo -e "$Green"Choose your operation:"$Color_Off"
echo ""
read -p  " [0 - 16]:" oper
echo -e ""
case $oper in

1)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.8.13-GentooPlayer-ST-botic7-rc3
fdtfile=am335x-boneblack-botic-4.8.13-GentooPlayer-ST-botic7-rc3.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
2)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.8.13-GentooPlayer-MIN_100-botic7-rc3
fdtfile=am335x-boneblack-botic-4.8.13-GentooPlayer-MIN_100-botic7-rc3.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
3)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.8.13-GentooPlayer-MIN_250-botic7-rc3
fdtfile=am335x-boneblack-botic-4.8.13-GentooPlayer-MIN_250-botic7-rc3.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
4)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.8.13-GentooPlayer-MIN_500-botic7-rc3
fdtfile=am335x-boneblack-botic-4.8.13-GentooPlayer-MIN_500-botic7-rc3.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
5)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.8.13-GentooPlayer-MIN_1000-botic7-rc3
fdtfile=am335x-boneblack-botic-4.8.13-GentooPlayer-MIN_1000-botic7-rc3.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
6)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.8.13-GentooPlayer-MIN-1000M1-botic7-rc3
fdtfile=am335x-boneblack-botic-4.8.13-GentooPlayer-MIN-1000M1-botic7-rc3.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
7)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.8.13-GentooPlayer-MIN_1000_rcu-botic7-rc3
fdtfile=am335x-boneblack-botic-4.8.13-GentooPlayer-MIN_1000_rcu-botic7-rc3.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
8)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.8.13-GentooPlayer-ST-rt8-botic7-rc3
fdtfile=am335x-boneblack-botic-4.8.13-GentooPlayer-ST-rt8-botic7-rc3.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
9)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.8.13-GentooPlayer-MIN_100-rt8-botic7-rc3
fdtfile=am335x-boneblack-botic-4.8.13-GentooPlayer-MIN_100-rt8-botic7-rc3.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
10)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.8.13-GentooPlayer-MIN_250-rt8-botic7-rc3
fdtfile=am335x-boneblack-botic-4.8.13-GentooPlayer-MIN_250-rt8-botic7-rc3.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
11)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.8.13-GentooPlayer-MIN_500-rt8-botic7-rc3
fdtfile=am335x-boneblack-botic-4.8.13-GentooPlayer-MIN_500-rt8-botic7-rc3.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
12)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.8.13-GentooPlayer-MIN_1000-rt8-botic7-rc3
fdtfile=am335x-boneblack-botic-4.8.13-GentooPlayer-MIN_1000-rt8-botic7-rc3.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
13)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.8.13-GentooPlayer-MIN-1000M1-rt8-botic7-rc3
fdtfile=am335x-boneblack-botic-4.8.13-GentooPlayer-MIN-1000M1-rt8-botic7-rc3.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
14)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.8.13-GentooPlayer-MIN_1000_rcu-rt8-botic7-rc3
fdtfile=am335x-boneblack-botic-4.8.13-GentooPlayer-MIN_1000_rcu-rt8-botic7-rc3.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
15) selectk ;;
16) menu ;;
0) esci ;;
*) echo -e "$Red Invalid choice...$Color_Off" && sleep 2 ; kernelbot ;;
esac
}
######################### ST Kernel ############################################
kernelst(){
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e ""
  echo -e "        $color1"GentooPlayer"$color_off - $BBlue"Select Kernel Standard"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo ""
  echo -e " [1]  4.18.11-GentooPlayer-ST"
  echo -e " [2]  4.18.11-GentooPlayer-MIN-500"
  echo -e " [3]  4.18.11-GentooPlayer-MIN-250"
  echo -e " [4]  4.18.11-GentooPlayer-MIN-100"
  echo -e " [5]  4.18.11-GentooPlayer-MIN-1000RCU"
  echo -e " [6]  4.18.11-GentooPlayer-MIN-1000"
  echo -e " \e[38;5;154m─────────────────RealTime────────────────────\e[0m"
  echo -e " [7]  4.14.71-GentooPlayer-ST-rt"
  echo -e " [8]  4.14.71-GentooPlayer-MIN-500-rt"
  echo -e " [9]  4.14.71-GentooPlayer-MIN-250-rt"
  echo -e " [10] 4.14.71-GentooPlayer-MIN-1000RCU-rt"
  echo -e " [11] 4.14.71-GentooPlayer-MIN-1000-rt"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo ""
  echo -e " [12] $BBlue"Select Kernel Menu"$Color_Off"
  echo -e " [13] $BBlue"Main Menu"$Color_Off"
  echo -e " [0]  $BBlue"Exit"$Color_Off"
  echo ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e ""
echo -e "$Green"Choose your operation:"$Color_Off"
echo ""
read -p  " [0 - 13]:" oper
echo -e ""
case $oper in

1)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.18.11-GentooPlayer-ST-bone11
fdtfile=am335x-boneblack-4.18.11-GentooPlayer-ST-bone11.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
2)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.18.11-GentooPlayer-MIN-500-bone11
fdtfile=am335x-boneblack-4.18.11-GentooPlayer-MIN-500-bone11.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
3)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.18.11-GentooPlayer-MIN-250-bone11
fdtfile=am335x-boneblack-4.18.11-GentooPlayer-MIN-250-bone11.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
4)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.18.11-GentooPlayer-MIN-100-bone11
fdtfile=am335x-boneblack-4.18.11-GentooPlayer-MIN-100-bone11.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
5)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.18.11-GentooPlayer-MIN-1000RCU-bone11
fdtfile=am335x-boneblack-4.18.11-GentooPlayer-MIN-1000RCU-bone11.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
6)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.18.11-GentooPlayer-MIN-1000-bone11
fdtfile=am335x-boneblack-4.18.11-GentooPlayer-MIN-1000-bone11.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
7)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.14.71-GentooPlayer-ST-bone-rt-r17
fdtfile=am335x-boneblack-4.14.71-GentooPlayer-ST-bone-rt-r17.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
8)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.14.71-GentooPlayer-MIN-500-bone-rt-r17
fdtfile=am335x-boneblack-4.14.71-GentooPlayer-MIN-500-bone-rt-r17.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
9)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.14.71-GentooPlayer-MIN-250-bone-rt-r17
fdtfile=am335x-boneblack-4.14.71-GentooPlayer-MIN-250-bone-rt-r17.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
10)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.14.71-GentooPlayer-MIN-1000RCU-bone-rt-r17
fdtfile=am335x-boneblack-4.14.71-GentooPlayer-MIN-1000RCU-bone-rt-r17.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
11)
cat >> /boot/uEnv.txt <<'EOF'
kernel_file=zImage-4.14.71-GentooPlayer-MIN-1000-bone-rt-r17
fdtfile=am335x-boneblack-4.14.71-GentooPlayer-MIN-1000-bone-rt-r17.dtb

loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF
echo -e "the system will restart with the new kernel"
echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
12) selectk ;;
13) menu ;;
0) esci ;;
*) echo -e "$Red Invalid choice...$Color_Off" && sleep 2 ; kernelst ;;
esac
}



################# Select Kernel ################################################
selectk(){
  clear
  mount /boot 2>/dev/null
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e ""
  echo -e "        $color1"GentooPlayer"$color_off - $BBlue"Select Kernel Menu"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo ""
  echo -e " [1] Kernel Standard"
  echo -e " [2] Kernel Botic"
  echo -e " [3] Kernel Botic Sabre32"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo ""
  echo -e " [4] $BBlue"Main Menu"$Color_Off"
  echo -e " [0]  $BBlue"Exit"$Color_Off"
  echo ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e ""
echo -e "$Green"Choose your operation:"$Color_Off"
echo ""
read -p  " [0 - 4]:" oper
echo -e ""
case $oper in

1) kernelst ;;
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
