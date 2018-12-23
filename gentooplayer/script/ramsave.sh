#!/bin/bash
###create dirsave
rm -r /ramsave/*
mkdir /ramsave 2>/dev/null
#mkdir /ramsave/local.d 2>/dev/null
mkdir /ramsave/gentooplayer 2>/dev/null
mkdir /ramsave/var 2>/dev/null
mkdir /ramsave/opt 2>/dev/null
mkdir /ramsave/etc 2>/dev/null
mkdir /ramsave/root 2>/dev/null
mkdir /ramsave/RoonBridge 2>/dev/null
mkdir /ramsave/RoonServer 2>/dev/null

####rsync ram to save
#rsync -a /etc/hqplayer/hqplayerd.xml /ramsave/hqplayerd.xml #haplayerd
#rsync -a /etc/conf.d/squeezelite-R2 /ramsave/squeezelite-R2 #R2
#rsync -a /etc/conf.d/squeezelite /ramsave/squeezelite #squeezelite
#rsync -a /etc/mpd.conf /ramsave/mpd.conf  # mpd
#rsync -a /etc/local.d/ /ramsave/local.d/  #local.d
echo -e "\n \e[38;5;154mwait...\e[0m\n"
rsync -a /gentooplayer/ /ramsave/gentooplayer/ #gentooplayer
rsync -a /etc/ /ramsave/etc/ #etc
rsync -a /var/ /ramsave/var/ #var
rsync -a /root/ /ramsave/root/ #root

####umount
umount -l /etc
umount /mnt/ramdisk1

umount -l /gentooplayer
umount /mnt/ramdisk12

umount -l /var
umount /mnt/ramdisk7

umount -l /root
umount /mnt/ramdisk21

######rsync ramsave to system
#rsync -a /ramsave/hqplayerd.xml /etc/hqplayer/hqplayerd.xml #haplayerd
#rsync -a /ramsave/squeezelite-R2 /etc/conf.d/squeezelite-R2  #R2
#rsync -a /ramsave/squeezelite /etc/conf.d/squeezelite  #squeezelite
#rsync -a /ramsave/mpd.conf /etc/mpd.conf   # mpd
#rsync -a /ramsave/local.d/ /etc/local.d/ #local.d
echo -e "\n \e[38;5;154mwait...\e[0m\n"
rsync -a /ramsave/gentooplayer/ /gentooplayer/ # gentooplayer
rsync -a /ramsave/etc/ /etc/ #etc
rsync -a /ramsave/var/ /var/  #var
rsync -a /ramsave/root/ /root/ #root

echo -e "\n \e[38;5;154mwait...\e[0m\n"
#remount
etc=$(du -sk /etc | awk '{print $1}')
detc=$((etc + 2000))
mount none -t tmpfs /mnt/ramdisk1 -o size="$detc"K
rsync -a /etc/ /mnt/ramdisk1
mount -o bind /mnt/ramdisk1/ /etc/

gentooplayer=$(du -sk /gentooplayer | awk '{print $1}')
dgentooplayer=$((gentooplayer + 500))
mount none -t tmpfs /mnt/ramdisk12 -o size="$dgentooplayer"K
rsync -a /gentooplayer/ /mnt/ramdisk12 2>/dev/null
mount -o bind /mnt/ramdisk12/ /gentooplayer/

var=$(du -sk /var | awk '{print $1}')
dvar=$((var + 30000))
mount none -t tmpfs /mnt/ramdisk7 -o size="$dvar"K
rsync -a /var/ /mnt/ramdisk7
mount -o bind /mnt/ramdisk7/ /var/

root=$(du -sk /root | awk '{print $1}')
droot=$((root + 50000))
mount none -t tmpfs /mnt/ramdisk21 -o size="$droot"K
rsync -a /root/ /mnt/ramdisk21
mount -o bind /mnt/ramdisk21/ /root/

###roonb
mount -l | grep "none on /RoonBridge type tmpfs" &&
rsync -a /RoonBridge/ /ramsave/RoonBridge/ &&
umount -l /RoonBridge &&
umount /mnt/ramdisk13 &&
rsync -a /ramsave/RoonBridge/ /RoonBridge/ &&
roonb=$(du -sk /RoonBridge | awk '{print $1}') &&
droonb=$((roonb + 5000)) &&
mount none -t tmpfs /mnt/ramdisk13 -o size="$droonb"K &&
rsync -a /RoonBridge/ /mnt/ramdisk13 &&
mount -o bind /mnt/ramdisk13/ /RoonBridge/ ;

echo -e "\n \e[38;5;154mwait...\e[0m\n"
###roons
mount -l | grep "none on /RoonServer type tmpfs" &&
rsync -a /RoonServer/ /ramsave/RoonServer/ &&
umount -l /RoonServer &&
umount /mnt/ramdisk18 &&
rsync -a /ramsave/RoonServer/ /RoonServer/ &&
roons=$(du -sk /RoonServer | awk '{print $1}') &&
droons=$((roons + 10000)) &&
mount none -t tmpfs /mnt/ramdisk18 -o size="$droons"K &&
rsync -a /RoonServer/ /mnt/ramdisk18 &&
mount -o bind /mnt/ramdisk18/ /RoonServer/ ;

####opt
mount -l | grep "none on /opt type tmpfs" &&
rsync -a /opt/ /ramsave/opt/ &&
umount -l /opt &&
umount /mnt/ramdisk17 &&
rsync -a /ramsave/opt/ /opt/ &&
opt=$(du -sk /opt | awk '{print $1}') &&
dopt=$((opt + 50000)) &&
mount none -t tmpfs /mnt/ramdisk17 -o size="$dopt" &&
rsync -a /opt/ /mnt/ramdisk17 &&
mount -o bind /mnt/ramdisk17/ /opt/ ;


#restart player
ps aux > process.txt
grep -r "squeezelite-R2 -f" process.txt && /etc/init.d/squeezelite-R2 restart
grep -r "squeezelite -f" process.txt && /etc/init.d/squeezelite restart
grep -r "networkaudiod" process.txt && /etc/init.d/networkaudiod restart
grep -r "hqplayerd" process.txt && /etc/init.d/hqplayerd restart
grep -r "start.sh -f /var/log/roon.log" process.txt && /etc/init.d/roonbridge restart
grep -r "start.sh -f /var/log/roonserver.log" process.txt && /etc/init.d/roonserver restart
grep -r "logitechmediaserver" process.txt && /etc/init.d/logitechmediaserver restart
grep -r "mpd /etc/mpd.conf" process.txt && /etc/init.d/mpd restart
