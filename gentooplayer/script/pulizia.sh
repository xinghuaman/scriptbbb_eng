#!/bin/bash
nano /etc/fstab
rc-update delete swap boot
nano /etc/portage/make.conf

rm -rv /tmp
rm -rv /usr/portage/distfiles
rm -rv /usr/src
rm -rv /var/cache/edb/dep
rm -rv /var/cache/genkernel
rm -rv /var/cache/portage/distfiles
rm -rv /var/empty
rm -rv /var/run
rm -rv /var/state
rm -rv /var/tmp

rm -v /etc/*-
rm -v /etc/*.old
rm -v /etc/ssh/ssh_host_*
rm -v /root/.*history
rm -v /root/.lesshst
rm -v /root/.ssh/known_hosts
rm -v /root/.viminfo
rm -v /usr/lib64/python*/site-packages/gentoolkit/test/eclean/testdistfiles.tar.gz
rm -v /usr/lib/python*/site-packages/gentoolkit/test/eclean/testdistfiles.tar.gz
