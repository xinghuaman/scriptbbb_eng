#!/bin/bash

echo -e "edit config.txt? y/n"
read editare
    if [ "$editare" = "y" ]; then
    mount /dev/mmcblk0p1
    nano /boot/config.txt
    fi 	
echo -e "restart the rpi? y/n"
read riavviare
	if [ "$riavviare" = "y" ]; then
	reboot
    fi 	

exit 0
