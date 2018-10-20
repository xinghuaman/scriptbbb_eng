#!/bin/bash

function pausa() {
  echo
  read -s -p 'Press "Enter" to continue...'
  echo
}

function select_filesystem() {
  declare -a rates=(  \
  'vfat'   \
  'ext2'   \
  'ext3'   \
  'ext4'   \
  'ntfs'  \
  'nas'  \
  'nas1'  \
  'nas2'  \
  'nas3'  \
  'nas4'  \
  'nas5'  \
  )
  
  if [ "$1" == "" ]; then 
    local prompt='Select the file system you want to mount:'
  else
    local prompt="$1"
  fi
  filesystem=""
  while [ "$filesystem" == "" ]
  do
    echo -e "\n$prompt\n"
    for (( i = 0 ; i < ${#rates[@]} ; i++ ))
    do
      echo -e "$i) \t${rates[$i]}";
    done
    echo
    read -p 'Type the corresponding number and press enter: ' choice
    if [[ "$choice" =~ ^[0-9]+$ ]] && [ "$choice" -lt ${#rates[@]} ]; then
      filesystem="${rates[$choice]}"
      echo -e "Choice made: '$filesystem'\n"
      read -s -N1 -p 'Confirm and proceed? (s/N)'
      echo
      [ "$REPLY" != "s" ] && filesystem=""
    else
      echo -e "\a\nErrore: type a number between 0 and $[ ${#rates[@]}-1 ]."
      pausa
    fi
  done
}

clear
echo ""
echo -e "nas is going to LAN shares, nas and/or LAN shares generally"
echo -e "As there are different because sometimes varies the cifs version on the server"
echo ""
echo -e "\e[38;5;82m--------------------------------------------------\e[0m"
echo ""
echo -e " \e[1;38;5;88mnas\e[0m: standard version with password"
echo -e " \e[1;38;5;88mnas1\e[0m: standard version without password"
echo -e " \e[1;38;5;88mnas2\e[0m: v.1.0 with password"
echo -e " \e[1;38;5;88mnas3\e[0m: v.1.0 without password"
echo -e " \e[1;38;5;88mnas4\e[0m: v.2.1 with password"
echo -e " \e[1;38;5;88mnas5\e[0m: v.2.1 without password"
echo ""
echo -e "\e[38;5;82m--------------------------------------------------\e[0m"
echo ""
echo -e "The filesystem fat, ext2, ext3, ext4 and ntfs are mounted by default in /media/"
echo -e "The LAN shares are mounted by default in/mnt/samba/"

echo ""
echo ""
echo -e "\e[38;5;82m--------------------------------------------------\e[0m"
echo ""
echo -e "Disks on the system and related partitions:"
echo ""
lsblk -o NAME,SIZE,FSTYPE,TYPE,MOUNTPOINT
echo""
echo -e "\e[38;5;82m--------------------------------------------------\e[0m"


select_filesystem

/gentooplayer/script/mount$filesystem.sh