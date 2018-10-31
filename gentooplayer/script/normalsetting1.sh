#!/bin/bash
cat > /etc/security/limits.conf <<EOF
*  hard rtprio  0
*  soft rtprio  0
@realtime hard rtprio  20
@realtime    soft rtprio    10
@audio  - rtprio  99
@audio  - memlock  unlimited
EOF

cat > /etc/sysctl.conf <<EOF
EOF

cat > /etc/local.d/max_user_freq.start <<EOF
EOF
chmod +x /etc/local.d/max_user_freq.start
rc-update delete local default

cat > /etc/udev/rules.d/40-timer-permissions.rules <<EOF
EOF
service udev reload
#chgrp audio /dev/hpet /dev/rtc0
#chmod 660 /dev/hpet /dev/rtc0

cat > /etc/sysctl.d/60-max-user-freq.conf <<EOF
EOF
sysctl -q -p /etc/sysctl.d/60-max-user-freq.conf

reboot