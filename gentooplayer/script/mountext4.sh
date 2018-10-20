function pausa() {
  echo
  echo -e "If no partition is displayed it means that you do not have ext4 partitions in your system"
  read -s -p 'Press "Enter" to continue... CTRL+C to end'
  echo
}

getinfo()
{
   
  read -p "Type the name of the mount point, name to give to the directory that must contain the disk. (eg Music1, Music2 etc.):"   nomedir
  read -p "Type the partition to be mounted, see above. (eg sda1, sda2, sdb1 etc.):"  nomepart
}


clear
echo ""
echo -e "\e[38;5;82m--------------------------------------------------\e[0m"
echo ""
echo -e "Partition \e[38;5;82mext4\e[0m present on the system:"
echo ""
echo -e "NAME SIZE FSTYPE MOUNTPOINT"
lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT | grep ext4 | sed 's/\├─//g' | sed 's/\└─//g'
echo""
echo -e "\e[38;5;82m--------------------------------------------------\e[0m"
echo ""
pausa
echo ""
echo -e "\e[38;5;197mWARNING: give different names to the mount point for different disks\e[0m"
getinfo
mkdir /media/$nomedir
chmod -R 777 /media/$nomedir
if
mount /dev/$nomepart /media/$nomedir
echo""
echo -e "\e[38;5;82mthe disk $nomepart It has been mounted in /media/$nomedir\e[0m"
echo ""
echo -e "\e[38;5;82mDo you want to add disk mount at system startup?\e[0m y/n"
read aggiungere
        if [ "$aggiungere" = "y" ]; then
    echo "/dev/$nomepart /media/$nomedir ext4 defaults 0 0" >> /etc/fstab
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
    fi

else
echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
fi