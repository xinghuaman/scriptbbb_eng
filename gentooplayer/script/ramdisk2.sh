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

rm -r /var/log/* 2>/dev/null
touch /var/log/file.txt



if
[ ! -f "/newuser/ld-linux-armhf.so.3" ]; then
echo -e "\n \e[38;5;154m[Copy necessary files]\e[0m\n"
cp /lib/lib* /newuser/
cp /lib/ld* /newuser/
cp /lib/ccp /newuser/ 2>/dev/null
cp -r /lib/dhcpcd /newuser/
cp -r /lib/gentoo /newuser/
cp -r /lib/netifrc /newuser/
cp -r /lib/modprobe.d /newuser/
cp -r /lib/rc /newuser/
cp -r /lib/security /newuser/
cp -r /lib/systemd /newuser/
cp -r /lib/tc /newuser/
cp -r /lib/udev /newuser/
else
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
fi


if
[ ! -f "/newuser2/libasound.so.2" ]; then
echo -e "\n \e[38;5;154m[Copy necessary files]\e[0m\n"
cp /usr/lib/libasound.so.2 /newuser2/
cp /usr/lib/gcc/armv7a-hardfloat-linux-gnueabi/*/libgcc_s.so.1 /newuser2/
cp /usr/lib/libmagic.so.1 /newuser2/
cp /usr/lib/libmpg123.so.0 /newuser2/
cp /usr/lib/libout123.so.0 /newuser2/
cp /usr/lib/gcc/armv7a-hardfloat-linux-gnueabi/*/libstdc++.so.6 /newuser2/
cp /usr/lib/gcc/armv7a-hardfloat-linux-gnueabi/*/libgomp.so.1 /newuser2/
cp /usr/lib/libasound.so.2 /newuser2/
cp /usr/lib/gcc/armv7a-hardfloat-linux-gnueabi/*/libgcc_s.so.1 /newuser2/
cp /usr/lib/libmagic.so.1 /newuser2/
cp /usr/lib/libmpg123.so.0 /newuser2/
cp /usr/lib/libout123.so.0 /newuser2/
cp /usr/lib/gcc/armv7a-hardfloat-linux-gnueabi/*/libstdc++.so.6 /newuser2/
cp /usr/lib/gcc/armv7a-hardfloat-linux-gnueabi/*/libgomp.so.1 /newuser2/
#mpd
cp /usr/lib/libicui18n.so.63 /newuser2/
cp /usr/lib/libicuuc.so.63 /newuser2/
cp /usr/lib/libcurl.so.4 /newuser2/
cp /usr/lib/libid3tag.so.0 /newuser2/
cp /usr/lib/libshout.so.3 /newuser2/
cp /usr/lib/libFLAC.so.8 /newuser2/
cp /usr/lib/libfaad.so.2 /newuser2/
cp /usr/lib/libmad.so.0 /newuser2/
cp /usr/lib/libwavpack.so.1 /newuser2/
cp /usr/lib/libmp3lame.so.0 /newuser2/
cp /usr/lib/libdbus-1.so.3 /newuser2/
cp /usr/lib/libicudata.so.63 /newuser2/
cp /usr/lib/libssl.so.1.0.0 /newuser2/
cp /usr/lib/libcrypto.so.1.0.0 /newuser2/
cp /usr/lib/libogg.so.0 /newuser2/
cp /usr/lib/libvorbis.so.0 /newuser2/
##lms
#cp /usr/lib/libperl.so.5.26 /newuser2/
#cp /usr/lib/libsox.so.3 /newuser2/
#cp /usr/lib/libltdl.so.7 /newuser2/
#cp /usr/lib/libgsm.so.1 /newuser2/
#cp /usr/lib/libavdevice.so.57 /newuser2/
#cp /usr/lib/libavfilter.so.6 /newuser2/
#cp /usr/lib/libavformat.so.57 /newuser2/
#cp /usr/lib/libavcodec.so.57 /newuser2/
#cp /usr/lib/libavresample.so.3 /newuser2/
#cp /usr/lib/libpostproc.so.54 /newuser2/
#cp /usr/lib/libswresample.so.2 /newuser2/
#cp /usr/lib/libswscale.so.4 /newuser2/
#cp /usr/lib/libavutil.so.55 /newuser2/
else
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
fi

############mount ramdisk

mount none -t tmpfs /mnt/ramdisk -o size=9M
cp -a /bin/* /mnt/ramdisk
mount -o bind /mnt/ramdisk/ /bin/

mount none -t tmpfs /mnt/ramdisk1 -o size=12M
cp -a /etc/* /mnt/ramdisk1
mount -o bind /mnt/ramdisk1/ /etc/

mount none -t tmpfs /mnt/ramdisk2 -o size=7M
cp -a /sbin/* /mnt/ramdisk2
mount -o bind /mnt/ramdisk2/ /sbin/

mount none -t tmpfs /mnt/ramdisk3 -o size=25M
cp -a /newuser/* /mnt/ramdisk3
mount -o bind /mnt/ramdisk3/ /lib/

#mount none -t tmpfs /mnt/ramdisk8 -o size=10M
#cp -a /lib/* /mnt/ramdisk8
#mount -o bind /mnt/ramdisk8/ /lib/


####usr
mount none -t tmpfs /mnt/ramdisk4 -o size=37M
cp -a /usr/bin/* /mnt/ramdisk4
mount -o bind /mnt/ramdisk4/ /usr/bin/

#mount none -t tmpfs /mnt/ramdisk5 -o size=4M
#cp -a /newuser2/* /mnt/ramdisk5
#mount -o bind /mnt/ramdisk5/ /usr/lib/

mount none -t tmpfs /mnt/ramdisk6 -o size=2M
cp -a /usr/share/alsa/* /mnt/ramdisk6
mount -o bind /mnt/ramdisk6/ /usr/share/alsa/

mount none -t tmpfs /mnt/ramdisk7 -o size=3M
cp -a /var/log/* /mnt/ramdisk7
mount -o bind /mnt/ramdisk7/ /var/log/

mount none -t tmpfs /mnt/ramdisk9 -o size=38M
cp -a /newuser2/* /mnt/ramdisk9
mount -o bind /mnt/ramdisk9/ /usr/lib/


mount none -t tmpfs /mnt/ramdisk10 -o size=1M
cp -a /run/* /mnt/ramdisk10
mount -o bind /mnt/ramdisk10/ /run/


#mount none -t tmpfs /mnt/ramdisk12 -o size=1M
#cp -a /root/* /mnt/ramdisk12
#mount -o bind /mnt/ramdisk12/ /root/


#mount none -t tmpfs /mnt/ramdisk13 -o size=20M
#cp -a /sys/* /mnt/ramdisk13 2>/dev/null
#mount -o bind /mnt/ramdisk13/ /sys/

#RoonBridge
mount none -t tmpfs /mnt/ramdisk15 -o size=30M
cp -a /RoonBridge/* /mnt/ramdisk15 2>/dev/null
mount -o bind /mnt/ramdisk15/ /RoonBridge/


mount none -t tmpfs /mnt/ramdisk14 -o size=2M
cp -a /tmp/* /mnt/ramdisk14 2>/dev/null
mount -o bind /mnt/ramdisk14/ /tmp/

mount none -t tmpfs /mnt/ramdisk19 -o size=1M
cp -a /gentooplayer/* /mnt/ramdisk19 2>/dev/null
mount -o bind /mnt/ramdisk19/ /gentooplayer/

mount none -t tmpfs /mnt/ramdisk20 -o size=1M
cp -a /usr/share/figlet/* /mnt/ramdisk20
mount -o bind /mnt/ramdisk20/ /usr/share/figlet/


echo -e "Do you want to use squeezelite-R2? y/n"
read use
	if [ "$use" = "y" ]; then
    /etc/init.d/squeezelite-R2 restart
    fi

echo -e "Do you want to use squeezelite? y/n"
read use
    if [ "$use" = "y" ]; then
    /etc/init.d/squeezelite restart
    fi

echo -e "Do you want to use networkaudiod? y/n"
read use
	if [ "$use" = "y" ]; then
    /etc/init.d/networkaudiod restart
    fi

echo -e "Do you want to use Mpd? y/n"
read use
	if [ "$use" = "y" ]; then
    /etc/init.d/mpd restart
    fi

echo -e "Do you want to use RoonBridge? y/n"
read use
	if [ "$use" = "y" ]; then
		/etc/init.d/roonbridge restart
		fi
