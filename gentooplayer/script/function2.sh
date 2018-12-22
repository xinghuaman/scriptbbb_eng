#!/bin/bash
. /gentooplayer/script/colors.sh

################ Nas5 ##########################################################
nas5(){
  clear
  echo ""
  echo -e "\e[38;5;197mATTENTION: give different names for different servers\e[0m"
  echo
  echo -e "$Yellow"
  read -s -p 'Press "Enter" to continue... CTRL+C to end'
  echo -e "$Color_Off"
  echo
  read -p "Type the server ip:"	ipserver
  read -p "Type the directory of the server you want to mount (exact name):"	nomedir
#  read -p "Type username:"      nomeu
#  read -p "Type password:"      passwd
  read -p "Give a name to the server, it is free and of your choice (eg nas, nas1, mio_nas, pc_server, debian, etc.):" nomcond
  echo
  mkdir /mnt/samba/$nomcond 2>/dev/null
  if
  mkdir /mnt/samba/$nomcond/$nomedir 2>/dev/null; then
  chmod -R 777 /mnt/samba/$nomcond
  chmod -R 777 /mnt/samba/$nomcond/$nomedir
  echo -e "\n \e[38;5;154m[OK] The directory /mnt/samba/$nomcond/$nomedir It was created correctly\e[0m\n"
  else
  echo -e "\n \e[38;5;197mThe directory /mnt/samba/$nomcond/$nomedir already exists, sure you want to use this path?\e[0m\n"
  echo ""
  echo -e "$Yellow"
read -s -p 'Press "Enter" to continue... CTRL+C to end'
echo -e "$Color_Off"
  fi
  if
  mount -w -t cifs -o vers=2.1,guest //$ipserver/$nomedir /mnt/samba/$nomcond/$nomedir; then
  echo -e "\n \e[38;5;154m[OK]\e[0m\n"
  echo -e "\e[38;5;82mLa condivisione remota //$ipserver/$nomedir It has been mounted in /mnt/samba/$nomcond/$nomedir\e[0m"
  else
  echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
  echo -e ""
  exit 0
  fi
  echo -e ""
  echo -e "\e[38;5;82mDo you want to add the mount when the system starts?\e[0m y/n"
  read aggiungere
          if [ "$aggiungere" = "y" ]; then
  cat > /etc/local.d/$nomcond$nomedir.start <<EOF
  #!/bin/sh
  sleep 5
  mount -w -t cifs -o vers=2.1,guest //$ipserver/$nomedir /mnt/samba/$nomcond/$nomedir
EOF
  chmod +x /etc/local.d/$nomcond$nomedir.start
  rc-update add local default
  echo -e "\n \e[38;5;154m[OK]\e[0m\n"
  else
  echo -e "\n \e[38;5;197m[NOT ADDED]\e[0m\n"
  fi
}

################ Nas4 ##########################################################
nas4(){
  clear
  echo ""
  echo -e "\e[38;5;197mATTENTION: give different names for different servers\e[0m"
  echo
  echo -e "$Yellow"
  read -s -p 'Press "Enter" to continue... CTRL+C to end'
  echo -e "$Color_Off"
  echo
  read -p "Type the server ip:"	ipserver
  read -p "Type the directory of the server you want to mount (exact name):"	nomedir
  read -p "Type username:"      nomeu
  read -p "Type password:"      passwd
  read -p "Give a name to the server, it is free and of your choice (eg nas, nas1, mio_nas, pc_server, debian, etc.):" nomcond
  echo
  mkdir /mnt/samba/$nomcond 2>/dev/null
  if
  mkdir /mnt/samba/$nomcond/$nomedir 2>/dev/null; then
  chmod -R 777 /mnt/samba/$nomcond
  chmod -R 777 /mnt/samba/$nomcond/$nomedir
  echo -e "\n \e[38;5;154m[OK] The directory /mnt/samba/$nomcond/$nomedir It was created correctly\e[0m\n"
  else
  echo -e "\n \e[38;5;197mThe directory /mnt/samba/$nomcond/$nomedir already exists, sure you want to use this path?\e[0m\n"
  echo ""
  echo -e "$Yellow"
read -s -p 'Press "Enter" to continue... CTRL+C to end'
echo -e "$Color_Off"
  fi
  if
  mount -w -t cifs -o vers=2.1,username=$nomeu,password=$passwd //$ipserver/$nomedir /mnt/samba/$nomcond/$nomedir; then
  echo -e "\n \e[38;5;154m[OK]\e[0m\n"
  echo -e "\e[38;5;82mLa condivisione remota //$ipserver/$nomedir It has been mounted in /mnt/samba/$nomcond/$nomedir\e[0m"
  else
  echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
  echo -e ""
  exit 0
  fi
  echo -e ""
  echo -e "\e[38;5;82mDo you want to add the mount when the system starts?\e[0m y/n"
  read aggiungere
          if [ "$aggiungere" = "y" ]; then
  cat > /etc/local.d/$nomcond$nomedir.start <<EOF
  #!/bin/sh
  sleep 5
  mount -w -t cifs -o vers=2.1,username=$nomeu,password=$passwd //$ipserver/$nomedir /mnt/samba/$nomcond/$nomedir
EOF
  chmod +x /etc/local.d/$nomcond$nomedir.start
  rc-update add local default
  echo -e "\n \e[38;5;154m[OK]\e[0m\n"
  else
  echo -e "\n \e[38;5;197m[NOT ADDED]\e[0m\n"
  fi
}

################ Nas3 ##########################################################
nas3(){
  clear
  echo ""
  echo -e "\e[38;5;197mATTENTION: give different names for different servers\e[0m"
  echo
  echo -e "$Yellow"
  read -s -p 'Press "Enter" to continue... CTRL+C to end'
  echo -e "$Color_Off"
  echo
  read -p "Type the server ip:"	ipserver
  read -p "Type the directory of the server you want to mount (exact name):"	nomedir
#  read -p "Type username:"      nomeu
#  read -p "Type password:"      passwd
  read -p "Give a name to the server, it is free and of your choice (eg nas, nas1, mio_nas, pc_server, debian, etc.):" nomcond
  echo
  mkdir /mnt/samba/$nomcond 2>/dev/null
  if
  mkdir /mnt/samba/$nomcond/$nomedir 2>/dev/null; then
  chmod -R 777 /mnt/samba/$nomcond
  chmod -R 777 /mnt/samba/$nomcond/$nomedir
  echo -e "\n \e[38;5;154m[OK] The directory /mnt/samba/$nomcond/$nomedir It was created correctly\e[0m\n"
  else
  echo -e "\n \e[38;5;197mThe directory /mnt/samba/$nomcond/$nomedir already exists, sure you want to use this path?\e[0m\n"
  echo ""
  echo -e "$Yellow"
read -s -p 'Press "Enter" to continue... CTRL+C to end'
echo -e "$Color_Off"
  fi
  if
  mount -w -t cifs -o vers=1.0,guest //$ipserver/$nomedir /mnt/samba/$nomcond/$nomedir; then
  echo -e "\n \e[38;5;154m[OK]\e[0m\n"
  echo -e "\e[38;5;82mLa condivisione remota //$ipserver/$nomedir It has been mounted in /mnt/samba/$nomcond/$nomedir\e[0m"
  else
  echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
  echo -e ""
  exit 0
  fi
  echo -e ""
  echo -e "\e[38;5;82mDo you want to add the mount when the system starts?\e[0m y/n"
  read aggiungere
          if [ "$aggiungere" = "y" ]; then
  cat > /etc/local.d/$nomcond$nomedir.start <<EOF
  #!/bin/sh
  sleep 5
  mount -w -t cifs -o vers=1.0,guest //$ipserver/$nomedir /mnt/samba/$nomcond/$nomedir
EOF
  chmod +x /etc/local.d/$nomcond$nomedir.start
  rc-update add local default
  echo -e "\n \e[38;5;154m[OK]\e[0m\n"
  else
  echo -e "\n \e[38;5;197m[NOT ADDED]\e[0m\n"
  fi
}
################ Nas2 ##########################################################
nas2(){
  clear
  echo ""
  echo -e "\e[38;5;197mATTENTION: give different names for different servers\e[0m"
  echo
  echo -e "$Yellow"
  read -s -p 'Press "Enter" to continue... CTRL+C to end'
  echo -e "$Color_Off"
  echo
  read -p "Type the server ip:"	ipserver
  read -p "Type the directory of the server you want to mount (exact name):"	nomedir
  read -p "Type username:"      nomeu
  read -p "Type password:"      passwd
  read -p "Give a name to the server, it is free and of your choice (eg nas, nas1, mio_nas, pc_server, debian, etc.):" nomcond
  echo
  mkdir /mnt/samba/$nomcond 2>/dev/null
  if
  mkdir /mnt/samba/$nomcond/$nomedir 2>/dev/null; then
  chmod -R 777 /mnt/samba/$nomcond
  chmod -R 777 /mnt/samba/$nomcond/$nomedir
  echo -e "\n \e[38;5;154m[OK] The directory /mnt/samba/$nomcond/$nomedir It was created correctly\e[0m\n"
  else
  echo -e "\n \e[38;5;197mThe directory /mnt/samba/$nomcond/$nomedir already exists, sure you want to use this path?\e[0m\n"
  echo ""
  echo -e "$Yellow"
read -s -p 'Press "Enter" to continue... CTRL+C to end'
echo -e "$Color_Off"
  fi
  if
  mount -w -t cifs -o vers=1.0,username=$nomeu,password=$passwd //$ipserver/$nomedir /mnt/samba/$nomcond/$nomedir; then
  echo -e "\n \e[38;5;154m[OK]\e[0m\n"
  echo -e "\e[38;5;82mLa condivisione remota //$ipserver/$nomedir It has been mounted in /mnt/samba/$nomcond/$nomedir\e[0m"
  else
  echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
  echo -e ""
  exit 0
  fi
  echo -e ""
  echo -e "\e[38;5;82mDo you want to add the mount when the system starts?\e[0m y/n"
  read aggiungere
          if [ "$aggiungere" = "y" ]; then
  cat > /etc/local.d/$nomcond$nomedir.start <<EOF
  #!/bin/sh
  sleep 5
  mount -w -t cifs -o vers=1.0,username=$nomeu,password=$passwd //$ipserver/$nomedir /mnt/samba/$nomcond/$nomedir
EOF
  chmod +x /etc/local.d/$nomcond$nomedir.start
  rc-update add local default
  echo -e "\n \e[38;5;154m[OK]\e[0m\n"
  else
  echo -e "\n \e[38;5;197m[NOT ADDED]\e[0m\n"
  fi
}

################ Nas1 ##########################################################
nas1(){
  clear
  echo ""
  echo -e "\e[38;5;197mATTENTION: give different names for different servers\e[0m"
  echo
  echo -e "$Yellow"
  read -s -p 'Press "Enter" to continue... CTRL+C to end'
  echo -e "$Color_Off"
  echo
  read -p "Type the server ip:"	ipserver
  read -p "Type the directory of the server you want to mount (exact name):"	nomedir
#  read -p "Type username:"      nomeu
#  read -p "Type password:"      passwd
  read -p "Give a name to the server, it is free and of your choice (eg nas, nas1, mio_nas, pc_server, debian, etc.):" nomcond
  echo
  mkdir /mnt/samba/$nomcond 2>/dev/null
  if
  mkdir /mnt/samba/$nomcond/$nomedir 2>/dev/null; then
  chmod -R 777 /mnt/samba/$nomcond
  chmod -R 777 /mnt/samba/$nomcond/$nomedir
  echo -e "\n \e[38;5;154m[OK] The directory /mnt/samba/$nomcond/$nomedir It was created correctly\e[0m\n"
  else
  echo -e "\n \e[38;5;197mThe directory /mnt/samba/$nomcond/$nomedir already exists, sure you want to use this path?\e[0m\n"
  echo ""
  echo -e "$Yellow"
read -s -p 'Press "Enter" to continue... CTRL+C to end'
echo -e "$Color_Off"
  fi
  if
  mount -w -t cifs //$ipserver/$nomedir /mnt/samba/$nomcond/$nomedir; then
  echo -e "\n \e[38;5;154m[OK]\e[0m\n"
  echo -e "\e[38;5;82mLa condivisione remota //$ipserver/$nomedir It has been mounted in /mnt/samba/$nomcond/$nomedir\e[0m"
  else
  echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
  echo -e ""
  exit 0
  fi
  echo -e ""
  echo -e "\e[38;5;82mDo you want to add the mount when the system starts?\e[0m y/n"
  read aggiungere
          if [ "$aggiungere" = "y" ]; then
  cat > /etc/local.d/$nomcond$nomedir.start <<EOF
  #!/bin/sh
  sleep 5
  mount -w -t cifs //$ipserver/$nomedir /mnt/samba/$nomcond/$nomedir
EOF
  chmod +x /etc/local.d/$nomcond$nomedir.start
  rc-update add local default
  echo -e "\n \e[38;5;154m[OK]\e[0m\n"
  else
  echo -e "\n \e[38;5;197m[NOT ADDED]\e[0m\n"
  fi
}

################ Nas ##########################################################
nas(){
  clear
  echo ""
  echo -e "\e[38;5;197mATTENTION: give different names for different servers\e[0m"
  echo
  echo -e "$Yellow"
  read -s -p 'Press "Enter" to continue... CTRL+C to end'
  echo -e "$Color_Off"
  echo
  read -p "Type the server ip:"	ipserver
  read -p "Type the directory of the server you want to mount (exact name):"	nomedir
  read -p "Type username:"      nomeu
  read -p "Type password:"      passwd
  read -p "Give a name to the server, it is free and of your choice (eg nas, nas1, mio_nas, pc_server, debian, etc.):" nomcond
  echo
  mkdir /mnt/samba/$nomcond 2>/dev/null
  if
  mkdir /mnt/samba/$nomcond/$nomedir 2>/dev/null; then
  chmod -R 777 /mnt/samba/$nomcond
  chmod -R 777 /mnt/samba/$nomcond/$nomedir
  echo -e "\n \e[38;5;154m[OK] The directory /mnt/samba/$nomcond/$nomedir It was created correctly\e[0m\n"
  else
  echo -e "\n \e[38;5;197mThe directory /mnt/samba/$nomcond/$nomedir already exists, sure you want to use this path?\e[0m\n"
  echo ""
  echo -e "$Yellow"
read -s -p 'Press "Enter" to continue... CTRL+C to end'
echo -e "$Color_Off"
  fi
  if
  mount -w -t cifs -o username=$nomeu,password=$passwd //$ipserver/$nomedir /mnt/samba/$nomcond/$nomedir; then
  echo -e "\n \e[38;5;154m[OK]\e[0m\n"
  echo -e "\e[38;5;82mLa condivisione remota //$ipserver/$nomedir It has been mounted in /mnt/samba/$nomcond/$nomedir\e[0m"
  else
  echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
  echo -e ""
  exit 0
  fi
  echo -e ""
  echo -e "\e[38;5;82mDo you want to add the mount when the system starts?\e[0m y/n"
  read aggiungere
          if [ "$aggiungere" = "y" ]; then
  cat > /etc/local.d/$nomcond$nomedir.start <<EOF
  #!/bin/sh
  sleep 5
  mount -w -t cifs -o username=$nomeu,password=$passwd //$ipserver/$nomedir /mnt/samba/$nomcond/$nomedir
EOF
  chmod +x /etc/local.d/$nomcond$nomedir.start
  rc-update add local default
  echo -e "\n \e[38;5;154m[OK]\e[0m\n"
  else
  echo -e "\n \e[38;5;197m[NOT ADDED]\e[0m\n"
  fi
}

################ Ntfs ##########################################################
ntf(){
  clear
  echo ""
  echo -e "\e[38;5;82m--------------------------------------------------\e[0m"
  echo ""
  echo -e "Partition \e[38;5;82mntfs\e[0m present on the system:"
  echo ""
  echo -e "NAME SIZE FSTYPE MOUNTPOINT"
  lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT | grep ntfs | sed 's/\├─//g' | sed 's/\└─//g'
  echo ""
  echo -e "\e[38;5;82m--------------------------------------------------\e[0m"
  echo ""
  echo -e "$Red If no partition is displayed it means that you do not have $Green"ntfs"$Color_Off $Red"partitions in your system"$Color_Off"
  echo
  echo -e "$Yellow"
  read -s -p 'Press "Enter" to continue... CTRL+C to end'
  echo -e "$Color_Off"
  echo
  echo -e "\e[38;5;197mWARNING: give different names to the mount point for different disks\e[0m"
  echo
  read -p "Type the name of the mount point, name to give to the directory that must contain the disk. (eg Music1, Music2 etc.):"   nomedir
  read -p "Type the partition to be mounted, see above. (eg sda1, sda2, sdb1 etc.):"  nomepart
  mkdir /media/$nomedir
  chmod -R 777 /media/$nomedir
  if
  mount -t ntfs-3g /dev/$nomepart /media/$nomedir; then
  echo ""
  echo -e "\e[38;5;82mthe disk $nomepart It has been mounted in /media/$nomedir\e[0m"
  else
  echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
  echo ""
  fi
  echo ""
  echo -e "\e[38;5;82mDo you want to add disk mount at system startup?\e[0m y/n"
  read aggiungere
          if [ "$aggiungere" = "y" ]; then
      echo "/dev/$nomepart /media/$nomedir ntfs-3g defaults 0 0" >> /etc/fstab
      echo -e "\n \e[38;5;154m[OK]\e[0m\n"
      else
      echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
          fi
}

################ ext4 ##########################################################
ex4(){
  clear
  echo ""
  echo -e "\e[38;5;82m--------------------------------------------------\e[0m"
  echo ""
  echo -e "Partition \e[38;5;82mext4\e[0m present on the system:"
  echo ""
  echo -e "NAME SIZE FSTYPE MOUNTPOINT"
  lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT | grep ext4 | sed 's/\├─//g' | sed 's/\└─//g'
  echo ""
  echo -e "\e[38;5;82m--------------------------------------------------\e[0m"
  echo ""
  echo -e "$Red If no partition is displayed it means that you do not have $Green"ext4"$Color_Off $Red"partitions in your system"$Color_Off"
  echo
  echo -e "$Yellow"
  read -s -p 'Press "Enter" to continue... CTRL+C to end'
  echo -e "$Color_Off"
  echo
  echo -e "\e[38;5;197mWARNING: give different names to the mount point for different disks\e[0m"
  echo
  read -p "Type the name of the mount point, name to give to the directory that must contain the disk. (eg Music1, Music2 etc.):"   nomedir
  read -p "Type the partition to be mounted, see above. (eg sda1, sda2, sdb1 etc.):"  nomepart
  mkdir /media/$nomedir
  chmod -R 777 /media/$nomedir
  if
  mount /dev/$nomepart /media/$nomedir; then
  echo ""
  echo -e "\e[38;5;82mthe disk $nomepart It has been mounted in /media/$nomedir\e[0m"
  else
  echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
  echo ""
  fi
  echo -e "\e[38;5;82mDo you want to add disk mount at system startup?\e[0m y/n"
  read aggiungere
          if [ "$aggiungere" = "y" ]; then
      echo "/dev/$nomepart /media/$nomedir ext4 defaults 0 0" >> /etc/fstab
      echo -e "\n \e[38;5;154m[OK]\e[0m\n"
      else
      echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
       fi
}

################ ext3 ##########################################################
ex3(){
  clear
  echo ""
  echo -e "\e[38;5;82m--------------------------------------------------\e[0m"
  echo ""
  echo -e "Partition \e[38;5;82mext3\e[0m present on the system:"
  echo ""
  echo -e "NAME SIZE FSTYPE MOUNTPOINT"
  lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT | grep ext3 | sed 's/\├─//g' | sed 's/\└─//g'
  echo ""
  echo -e "\e[38;5;82m--------------------------------------------------\e[0m"
  echo ""
  echo -e "$Red If no partition is displayed it means that you do not have $Green"ext3"$Color_Off $Red"partitions in your system"$Color_Off"
  echo
  echo -e "$Yellow"
  read -s -p 'Press "Enter" to continue... CTRL+C to end'
  echo -e "$Color_Off"
  echo
  echo -e "\e[38;5;197mWARNING: give different names to the mount point for different disks\e[0m"
  echo
  read -p "Type the name of the mount point, name to give to the directory that must contain the disk. (eg Music1, Music2 etc.):"   nomedir
  read -p "Type the partition to be mounted, see above. (eg sda1, sda2, sdb1 etc.):"  nomepart
  mkdir /media/$nomedir
  chmod -R 777 /media/$nomedir
  if
  mount /dev/$nomepart /media/$nomedir; then
  echo ""
  echo -e "\e[38;5;82mthe disk $nomepart It has been mounted in /media/$nomedir\e[0m"
  else
  echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
  echo ""
  fi
  echo ""
  echo -e "\e[38;5;82mDo you want to add disk mount at system startup?\e[0m y/n"
  read aggiungere
          if [ "$aggiungere" = "y" ]; then
      echo "/dev/$nomepart /media/$nomedir ext3 defaults 0 0" >> /etc/fstab
      echo -e "\n \e[38;5;154m[OK]\e[0m\n"
       else
       echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
       fi
}

################ ext2 ##########################################################
ex2(){
  clear
  echo ""
  echo -e "\e[38;5;82m--------------------------------------------------\e[0m"
  echo ""
  echo -e "Partition \e[38;5;82mext2\e[0m present on the system:"
  echo ""
  echo -e "NAME SIZE FSTYPE MOUNTPOINT"
  lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT | grep ext2 | sed 's/\├─//g' | sed 's/\└─//g'
  echo ""
  echo -e "\e[38;5;82m--------------------------------------------------\e[0m"
  echo ""
  echo -e "$Red If no partition is displayed it means that you do not have $Green"ext2"$Color_Off $Red"partitions in your system"$Color_Off"
  echo
  echo -e "$Yellow"
  read -s -p 'Press "Enter" to continue... CTRL+C to end'
  echo -e "$Color_Off"
  echo
  echo -e "\e[38;5;197mWARNING: give different names to the mount point for different disks\e[0m"
  echo
  read -p "Type the name of the mount point, name to give to the directory that must contain the disk. (eg Music1, Music2 etc.):"   nomedir
  read -p "Type the partition to be mounted, see above. (eg sda1, sda2, sdb1 etc.):"  nomepart
  mkdir /media/$nomedir
  chmod -R 777 /media/$nomedir
  if
  mount /dev/$nomepart /media/$nomedir; then
  echo ""
  echo -e "\e[38;5;82mthe disk $nomepart It has been mounted in /media/$nomedir\e[0m"
  else
  echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
  echo ""
  fi
  echo ""
  echo -e "\e[38;5;82mDo you want to add disk mount at system startup?\e[0m y/n"
  read aggiungere
          if [ "$aggiungere" = "y" ]; then
      echo "/dev/$nomepart /media/$nomedir ext2 defaults 0 0" >> /etc/fstab
      echo -e "\n \e[38;5;154m[OK]\e[0m\n"
      else
      echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
      fi
}
################ vfat ##########################################################
vf(){
  clear
  echo ""
  echo -e "\e[38;5;82m--------------------------------------------------\e[0m"
  echo ""
  echo -e "Partition \e[38;5;82mvfat\e[0m present on the system:"
  echo ""
  echo -e "NAME SIZE FSTYPE MOUNTPOINT"
  lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT | grep vfat | sed 's/\├─//g' | sed 's/\└─//g'
  echo ""
  echo -e "\e[38;5;82m--------------------------------------------------\e[0m"
  echo ""
  echo -e "$Red If no partition is displayed it means that you do not have $Green"vfat"$Color_Off $Red"partitions in your system"$Color_Off"
  echo
  echo -e "$Yellow"
  read -s -p 'Press "Enter" to continue... CTRL+C to end'
  echo -e "$Color_Off"
  echo ""
  echo -e "\e[38;5;197mWARNING: give different names to the mount point for different disks\e[0m"
  echo
  read -p "Type the name of the mount point, name to give to the directory that must contain the disk. (eg Music1, Music2 etc.):"   nomedir
  read -p "Type the partition to be mounted, see above. (eg sda1, sda2, sdb1 etc.):"  nomepart
  mkdir /media/$nomedir
  chmod -R 777 /media/$nomedir
  if
  mount /dev/$nomepart /media/$nomedir; then
  echo ""
  echo -e "\e[38;5;82mthe disk $nomepart It has been mounted in /media/$nomedir\e[0m"
  else
  echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
  echo ""
  fi
  echo ""
  echo -e "\e[38;5;82mDo you want to add disk mount at system startup?\e[0m y/n"
  read aggiungere
          if [ "$aggiungere" = "y" ]; then
      echo "/dev/$nomepart /media/$nomedir vfat defaults 0 0" >> /etc/fstab
      echo -e "\n \e[38;5;154m[OK]\e[0m\n"
    else
      echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
    fi
}



############### Script Mount ###################################################
mountf(){
  clear
  echo -e "\e[38;5;82m--------------------------------------------------\e[0m"
  echo -e "$Green "Nas - "$Color_Off is going to LAN shares, nas and/or LAN shares generally"
  echo -e " As there are different because sometimes varies the cifs version on the server"
  echo ""
  echo -e "$Green The filesystem fat, ext2, ext3, ext4 and ntfs are mounted by default in $BRed/media/$Color_Off"
  echo -e "$Green The LAN shares are mounted by default in $BRed/mnt/samba/$Color_Off"
  echo ""
  echo -e "$Green Disks on the system and related partitions:$Color_Off"
  echo
  lsblk -o NAME,SIZE,FSTYPE,TYPE,MOUNTPOINT
  echo ""
  echo -e "\e[38;5;82m--------------------------------------------------\e[0m"
  echo
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo -e ""
  echo -e "        $color1"GentooPlayer"$color_off - $BBlue"MountFS"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo ""
  echo -e " [1]  $Green"Mount FS vfat"$Color_Off"
  echo -e " [2]  $Green"Mount FS ext2"$Color_Off"
  echo -e " [3]  $Green"Mount FS ext3"$Color_Off"
  echo -e " [4]  $Green"Mount FS ext4"$Color_Off"
  echo -e " [5]  $Green"Mount FS ntfs"$Color_Off"
  echo ""
  echo -e " [6]  $Yellow"Nas - standard version with password"$Color_Off"
  echo -e " [7]  $Yellow"Nas - standard version without password"$Color_Off"
  echo -e " [8]  $Yellow"Nas - v.1.0 with password"$Color_Off"
  echo -e " [9]  $Yellow"Nas - v.1.0 without password"$Color_Off"
  echo -e " [10] $Yellow"Nas - v.2.1 with password"$Color_Off"
  echo -e " [11] $Yellow"Nas - v.2.1 without password"$Color_Off"
  echo -e ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
  echo ""
  echo -e " [12] $BBlue"Base System Menu"$Color_Off"
  echo -e " [13] $BBlue"System Menu"$Color_Off"
  echo -e " [14] $BBlue"Main Menu"$Color_Off"
  echo -e " [0]  $BBlue"Exit"$Color_Off"
  echo ""
  echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
echo -e ""
echo -e "$Green"Choose your operation:"$Color_Off"
echo ""
read -p  " [0 - 14]:" oper
echo -e ""
case $oper in

1)
vf ;
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; mountf ;;
2)
ex2 ;
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; mountf ;;
3)
ex3 ;
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; mountf ;;
4)
ex4 ;
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; mountf ;;
5)
ntf ;
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; mountf ;;
6)
nas ;
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; mountf ;;
7)
nas1 ;
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; mountf ;;
8)
nas2 ;
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; mountf ;;
9)
nas3 ;
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; mountf ;;
10)
nas4 ;
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; mountf ;;
11)
nas5 ;
echo
echo -e "$Yellow press a key to continue $Color_Off" ; read -n1 ; mountf ;;
12) systemb ;;
13)  systemm ;;
14) menu ;;
0) esci ;;
*) echo -e "$Red Invalid choice...$Color_Off" && sleep 2 ; mountf ;;
esac
}
