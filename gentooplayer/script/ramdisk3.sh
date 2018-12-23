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
mkdir /mnt/ramdisk10 2>/dev/null
mkdir /mnt/ramdisk11 2>/dev/null
mkdir /mnt/ramdisk12 2>/dev/null
mkdir /mnt/ramdisk13 2>/dev/null
mkdir /mnt/ramdisk14 2>/dev/null
mkdir /mnt/ramdisk15 2>/dev/null
mkdir /mnt/ramdisk16 2>/dev/null
mkdir /mnt/ramdisk17 2>/dev/null
mkdir /mnt/ramdisk18 2>/dev/null
mkdir /mnt/ramdisk19 2>/dev/null
mkdir /mnt/ramdisk20 2>/dev/null
mkdir /mnt/ramdisk21 2>/dev/null

rm -r /var/log/* 2>/dev/null
touch /var/log/file.txt

rm /root/.RoonBridge/Logs/* 2>/dev/null

echo
echo -e "Copyng root filesystem to RAM..."
echo
echo -e "\n \e[38;5;154mwait...\e[0m\n"

kern=$(uname -r)

echo
echo -e "\n \e[38;5;154mwait...\e[0m\n"

rsync -a /lib/ /newuser/ --exclude modules
rm -r /newuser/modules 2>/dev/null
mkdir /newuser/modules 2>/dev/null
rsync -a /lib/modules/$kern /newuser/modules/

######usr/lib######
echo
echo -e "\n \e[38;5;154mwait...\e[0m\n"
#rsync -a /usr/ /newuser1/ --exclude aarch64-unknown-linux-gnu --exclude include --exclude libexec --exclude portage --exclude share/* --exclude lib/gcc --exclude lib64/gcc --exclude lib64/audit --exclude lib64/binutils --exclude lib64/ckport --exclude lib64/cmake --exclude lib64/dbus-1.0 --exclude lib64/engines --exclude lib64/gawk --exclude lib64/gconv --exclude lib64/gettext --exclude lib64/gio --exclude lib64/glib-2.0 --exclude lib64/groff --exclude lib64/ --exclude lib64/ --exclude lib64/

rsync -a /usr/ /newuser1/ --exclude armv7a-hardfloat-linux-gnueabi --exclude include --exclude libexec --exclude portage --exclude share/* --exclude lib/*/
cp /usr/lib/gcc/armv7a-hardfloat-linux-gnueabi/*/libgcc_s.so.1 /newuser1/lib/
cp /usr/lib/gcc/armv7a-hardfloat-linux-gnueabi/*/libstdc++.so.6 /newuser1/lib/
cp /usr/lib/gcc/armv7a-hardfloat-linux-gnueabi/*/libgomp.so.1 /newuser1/lib/

rsync -a /usr/share/alsa /newuser1/share/
rsync -a /usr/share/figlet /newuser1/share/
rsync -a /usr/share/nano /newuser1/share/
rsync -a /usr/lib/mpg123/ /newuser1/lib/

####dimens
bin=$(du -sk /bin | awk '{print $1}')
dbin=$((bin + 2000))

etc=$(du -sk /etc | awk '{print $1}')
detc=$((etc + 2000))

sbin=$(du -sk /sbin | awk '{print $1}')
dsbin=$((sbin + 2000))

newus=$(du -sk /newuser | awk '{print $1}')
dnewus=$((newus + 10000))


newuser1=$(du -sk /newuser1 | awk '{print $1}')
dnewuser1=$((newuser1 + 5000))

var=$(du -sk /var | awk '{print $1}')
dvar=$((var + 30000))

opt=$(du -sk /opt | awk '{print $1}')
dopt=$((opt + 50000))

tmp=$(du -sk /tmp | awk '{print $1}')
dtmp=$((tmp + 2000))

gentooplayer=$(du -sk /gentooplayer | awk '{print $1}')
dgentooplayer=$((gentooplayer + 500))

roonb=$(du -sk /RoonBridge | awk '{print $1}')
droonb=$((roonb + 5000))

root=$(du -sk /root | awk '{print $1}')
droot=$((root + 50000))

home=$(du -sk /home | awk '{print $1}')
dhome=$((home + 100000))

lib=$(du -sk /lib | awk '{print $1}')
dlib=$((lib + 500))

varlog=$(du -sk /var/log | awk '{print $1}')
dvarlog=$((varlog + 2000))

############mount ramdisk

mount none -t tmpfs /mnt/ramdisk -o size="$dbin"K
rsync -a /bin/ /mnt/ramdisk
mount -o bind /mnt/ramdisk/ /bin/

mount none -t tmpfs /mnt/ramdisk1 -o size="$detc"K
rsync -a /etc/ /mnt/ramdisk1
mount -o bind /mnt/ramdisk1/ /etc/

mount none -t tmpfs /mnt/ramdisk2 -o size="$dsbin"K
rsync -a /sbin/ /mnt/ramdisk2
mount -o bind /mnt/ramdisk2/ /sbin/

mount none -t tmpfs /mnt/ramdisk3 -o size="$dnewus"K
rsync -a /newuser/ /mnt/ramdisk3
mount -o bind /mnt/ramdisk3/ /lib/

####usr
echo -e "\n \e[38;5;154mwait...\e[0m\n"
mount none -t tmpfs /mnt/ramdisk5 -o size="$dnewuser1"K
rsync -a /newuser1/ /mnt/ramdisk5
mount -o bind /mnt/ramdisk5/ /usr/

mount none -t tmpfs /mnt/ramdisk7 -o size="$dvar"K
rsync -a /var/ /mnt/ramdisk7
mount -o bind /mnt/ramdisk7/ /var/

mount none -t tmpfs /mnt/ramdisk17 -o size="$dopt"K
rsync -a /opt/ /mnt/ramdisk17
mount -o bind /mnt/ramdisk17/ /opt/

mount none -t tmpfs /mnt/ramdisk14 -o size="$dtmp"K
rsync -a /tmp/ /mnt/ramdisk14 2>/dev/null
mount -o bind /mnt/ramdisk14/ /tmp/

echo -e "\n \e[38;5;154mwait...\e[0m\n"
mount none -t tmpfs /mnt/ramdisk12 -o size="$dgentooplayer"K
rsync -a /gentooplayer/ /mnt/ramdisk12 2>/dev/null
mount -o bind /mnt/ramdisk12/ /gentooplayer/

mount none -t tmpfs /mnt/ramdisk21 -o size="$droot"K
rsync -a /root/ /mnt/ramdisk21
mount -o bind /mnt/ramdisk21/ /root/

##########
ps aux > process.txt
grep -r "squeezelite-R2 -f" process.txt && /etc/init.d/squeezelite-R2 restart
grep -r "squeezelite -f" process.txt && /etc/init.d/squeezelite restart
grep -r "networkaudiod" process.txt && /etc/init.d/networkaudiod restart
grep -r "hqplayerd" process.txt && /etc/init.d/hqplayerd restart
grep -r "start.sh -f /var/log/roon.log" process.txt && /etc/init.d/roonbridge restart
grep -r "start.sh -f /var/log/roonserver.log" process.txt && /etc/init.d/roonserver restart
grep -r "logitechmediaserver" process.txt && /etc/init.d/logitechmediaserver restart
grep -r "mpd /etc/mpd.conf" process.txt && /etc/init.d/mpd restart

sync && echo 3 > /proc/sys/vm/drop_caches

#echo 1 > /proc/sys/vm/drop_caches

#echo 3 > /proc/sys/vm/drop_caches
