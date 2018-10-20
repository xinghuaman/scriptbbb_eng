#!/bin/bash

echo -e "edit the cmdline.txt? y/n"
read editare
    if [ "$editare" = "y" ]; then
    mount /dev/mmcblk0p1
    nano /boot/uenv.txt
    fi 	
echo -e "riavviare la sparky? y/n"
read riavviare
	if [ "$riavviare" = "y" ]; then
	reboot
    fi 	

exit 0
