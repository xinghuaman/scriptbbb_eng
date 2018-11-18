#!/bin/bash

####nad - squeezelite-R2

mkdir /newuser 2>/dev/null
mkdir /newuser1 2>/dev/null
mkdir /newuser2 2>/dev/null
mkdir /newuser3 2>/dev/null
mkdir /mnt/ramdisk 2>/dev/null
mkdir /mnt/ramdisk1 2>/dev/null
mkdir /mnt/ramdisk2 2>/dev/null
mkdir /mnt/ramdisk3 2>/dev/null
mkdir /mnt/ramdisk4 2>/dev/null
mkdir /mnt/ramdisk5 2>/dev/null
mkdir /mnt/ramdisk6 2>/dev/null
mkdir /mnt/ramdisk7 2>/dev/null
mkdir /mnt/ramdisk8 2>/dev/null
mkdir /mnt/ramdisk9 2>/dev/null



##### lib64 #######
if
[ ! -f "/newuser/libutil-2.27.so" ]; then
echo -e "\n \e[38;5;154m[Copy necessary files]\e[0m\n"
cp /lib64/lib* /newuser/
cp /lib64/ld* /newuser/
cp /lib64/ccp /newuser/ 2>/dev/null
cp -r /lib64/dhcpcd /newuser/
cp -r /lib64/gentoo /newuser/
cp -r /lib64/netifrc /newuser/
cp -r /lib64/rc /newuser/
cp -r /lib64/security /newuser/
cp -r /lib64/systemd /newuser/
cp -r /lib64/tc /newuser/
cp -r /lib64/udev /newuser/
else
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
fi


######usr/lib######
if
[ ! -f "/newuser1/libasound.so.2" ]; then
echo -e "\n \e[38;5;154m[Copy necessary files]\e[0m\n"
cp /usr/lib64/libasound.so.2 /newuser1/
cp /usr/lib64/gcc/x86_64-pc-linux-gnu/7.3.0/libgcc_s.so.1 /newuser1/
cp /usr/lib64/libmagic.so.1 /newuser1/
cp /usr/lib64/libmpg123.so.0 /newuser1/
cp /usr/lib64/libout123.so.0 /newuser1/
cp /usr/lib64/gcc/x86_64-pc-linux-gnu/7.3.0/libstdc++.so.6 /newuser1/
else
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
fi

############mount ramdisk

mount none -t tmpfs /mnt/ramdisk -o size=10M
cp -a /bin/* /mnt/ramdisk
mount -o bind /mnt/ramdisk/ /bin/

mount none -t tmpfs /mnt/ramdisk1 -o size=14M
cp -a /etc/* /mnt/ramdisk1
mount -o bind /mnt/ramdisk1/ /etc/

mount none -t tmpfs /mnt/ramdisk2 -o size=8M
cp -a /sbin/* /mnt/ramdisk2
mount -o bind /mnt/ramdisk2/ /sbin/

mount none -t tmpfs /mnt/ramdisk3 -o size=30M
cp -a /newuser/* /mnt/ramdisk3
mount -o bind /mnt/ramdisk3/ /lib/


####usr
mount none -t tmpfs /mnt/ramdisk4 -o size=83M
cp -a /usr/bin/* /mnt/ramdisk4
mount -o bind /mnt/ramdisk4/ /usr/bin/

mount none -t tmpfs /mnt/ramdisk5 -o size=4M
cp -a /newuser1/* /mnt/ramdisk5
mount -o bind /mnt/ramdisk5/ /usr/lib/

mount none -t tmpfs /mnt/ramdisk6 -o size=2M
cp -a /usr/share/alsa/* /mnt/ramdisk6
mount -o bind /mnt/ramdisk6/ /usr/share/alsa/

mount none -t tmpfs /mnt/ramdisk7 -o size=5M
cp -a /var/log/* /mnt/ramdisk7
mount -o bind /mnt/ramdisk7/ /var/log/

/etc/init.d/squeezelite-R2 restart
/etc/init.d/networkaudiod restart
