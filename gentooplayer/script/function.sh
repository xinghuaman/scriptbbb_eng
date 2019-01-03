#!/bin/bash
function audio {
echo "AUDIO CARDS"
cards_path=$(echo $(find /proc/asound -type d -name "card*") | awk  '{print $NF}' | tail -c 2)
fw_devices=$(find /sys/devices/ -maxdepth 4 -type d -name "fw*" | wc -l)
echo -e -n "CARD\tTYPE\t\t\tADDRESS\t\t\tNAME
--------------------------------------------------------------------------------------------------------
"
for (( i=0; i<=$cards_path; i++ )); do
    if [[ -d  "/proc/asound/card"$i"" ]]; then
    echo -n "card$i"
    usbid=$(find "/proc/asound/card"$i -type f -name "usbid" -exec cat {} \; )
        if [[ -z $usbid ]]; then
                if [[ -d "/proc/asound/card"$i"/firewire" ]]; then
                    echo -e -n "\tFirewire Audio card"
                    for (( j=0; j<$fw_devices; j++ )); do
                        if [[ $(cat /proc/asound/cards | egrep "fw$j") ]]; then
                            echo -e -n "\tfw$j"
                            echo -n "   --> -- "
                            echo -e -n "\t\t$(find "/proc/asound/card"$i -type f -name "info" -exec cat {} \; | egrep "name" | head -1 | sed 's/name\:\ //g' | awk '{print $1,$2,$3}')"
                        fi
                    done
                else
                    echo -e -n "\tInternal Audio card"
                    echo -e -n "\tcard"$i
                    echo -n " --> -- "
                    echo -e -n "\t\t$(find "/proc/asound/card"$i -type f -name "info" -exec cat {} \; | egrep "id" | head -1 | sed 's/id\:\ //g' | awk '{print $1,$2,$3}' )"
                fi
            else
                echo -e -n "\tUSB Audio card"
                echo -e -n "\t\tusb"$(cat "/proc/asound/card"$i"/usbbus" | rev | cut -b5)
                echo -n "  --> "$usbid
                echo -e -n "\t$(find "/proc/asound/card"$i -type f -name "usbmixer" -exec cat {} \; | egrep "Card" | head -1 | sed 's/Card\://g' | awk '{print $1,$2,$3}' )"
            fi
                 echo ""
    if [[ -a  "/proc/asound/card"$i"/pcm0p/sub0/hw_params" ]]; then
        echo -e "card$i\tSTATUS  --> "$(cat /proc/asound/card"$i"/pcm0p/sub0/hw_params)
    else
        echo -e "card$i\tSTATUS  --> unavailable"
    fi
echo "--------------------------------------------------------------------------------------------------------"
fi
done
}
############
function sqc {
nano /etc/conf.d/squeezelite
/etc/init.d/squeezelite restart
}
###################
function sqr {
/etc/init.d/networkaudiod stop
/etc/init.d/mpd stop
/etc/init.d/roonbridge stop
/etc/init.d/roonserver stop
/etc/init.d/squeezelite-R2 stop
/etc/init.d/squeezelite restart
}
#####################################
function sqrestart {
/etc/init.d/squeezelite restart
}
##################################
function sqstop {
/etc/init.d/squeezelite stop
}
##################################
function sqc2 {
nano /etc/conf.d/squeezelite-R2
/etc/init.d/squeezelite-R2 restart
}
###################
function sqr2 {
/etc/init.d/networkaudiod stop
/etc/init.d/mpd stop
/etc/init.d/roonbridge stop
/etc/init.d/roonserver stop
/etc/init.d/logitechmediaserver stop
/etc/init.d/squeezelite stop
/etc/init.d/squeezelite-R2 restart
}
#####################################
function sqrestart2 {
/etc/init.d/squeezelite-R2 restart
}
##################################
function sqstop2 {
/etc/init.d/squeezelite-R2 stop
}
##################################
function mpdc {
nano /etc/mpd.conf
/etc/init.d/mpd restart
}
###################
function mpdr {
/etc/init.d/networkaudiod stop
/etc/init.d/roonbridge stop
/etc/init.d/roonserver stop
/etc/init.d/logitechmediaserver stop
/etc/init.d/squeezelite-R2 stop
/etc/init.d/squeezelite stop
/etc/init.d/mpd restart
}
##############################
function mpdrestart {
/etc/init.d/mpd restart
}
###########################
function mpdstop {
/etc/init.d/mpd stop
}
##############################
function nadr {
/etc/init.d/mpd stop
/etc/init.d/roonbridge stop
/etc/init.d/roonserver stop
/etc/init.d/logitechmediaserver stop
/etc/init.d/squeezelite-R2 stop
/etc/init.d/squeezelite stop
/etc/init.d/networkaudiod restart
}
################################
function nadrestart {
/etc/init.d/networkaudiod restart
}
################################
function nadstop {
/etc/init.d/networkaudiod stop
}
################################
function roonr {
/etc/init.d/mpd stop
/etc/init.d/roonserver stop
/etc/init.d/logitechmediaserver stop
/etc/init.d/squeezelite-R2 stop
/etc/init.d/squeezelite stop
/etc/init.d/networkaudiod stop
/etc/init.d/roonbridge restart
}
#################################
function roonrestart {
/etc/init.d/roonbridge restart
}
################################
function roonstop {
/etc/init.d/roonbridge stop
}
################################
function rtirqconf {
/gentooplayer/script/rtirqconf.sh
}
########################
function ipstatic {
/gentooplayer/script/ipstatic.sh
}
######################
function sqconfig {
/gentooplayer/script/sqconfig.sh
}
######################
#function kernelinstall {
#/gentooplayer/script/kernelinstall.sh
#}
################################
#function grubconf {
#/gentooplayer/script/grubconf.sh
#}
###############################
#function rtappc {
#nano /etc/rtapp/rtapp.conf
#/etc/init.d/rtirq restart
#rtapp
#}
#####################################
function rtirqc {
nano /etc/conf.d/rtirq
/etc/init.d/rtirq restart
}
###################################
function rtirqadd {
rc-update add rtirq default
}
#############################
function rtirqremove {
rc-update delete rtirq default
}
###############################
#function rtappadd {
#rc-update add rtapp-timer default
#}
############################
#function rtappremove {
#rc-update delete rtapp-timer default
#}
#############################
function mpdadd {
rc-update add mpd default
}
###########################
function mpdremove {
rc-update delete mpd default
}
#############################
function sqadd {
rc-update add squeezelite default
}
############################
function sqadd2 {
rc-update add squeezelite-R2 default
}
############################
function sqremove {
rc-update delete squeezelite default
}
#################################
function sqremove2 {
rc-update delete squeezelite-R2 default
}
#################################
function nadadd {
rc-update add networkaudiod default
}
#################################
function nadremove {
rc-update delete networkaudiod default
}
#####################################
#function lmsadd {
#rc-update add logitechmediaserver default
#}
#####################################
#function lmsremove {
#rc-update delete logitechmediaserver default
#}
##########################################
#function lmsrestart {
#/etc/init.d/logitechmediaserver restart
#}
#######################################
#function lmsstop {
#/etc/init.d/logitechmediaserver stop
#}
#######################################
function roonadd {
rc-update add roonbridge default
}
########################################
function roonremove {
rc-update delete roonbridge default
}
##########################################
###########################################
#function roonsadd {
#rc-update add roonserver default
#}
#########################################
#function roonsremove {
#rc-update delete roonserver default
#}
######################################
#function roonsrestart {
#/etc/init.d/roonserver restart
#}
#################################
#function roonserverstop {
#/etc/init.d/roonserver stop
#}
###################################
function playerstop {
/etc/init.d/squeezelite-R2 stop
etc/init.d/squeezelite stop
/etc/init.d/mpd stop
/etc/init.d/networkaudiod stop
/etc/init.d/roonbridge stop
}
#######################################
#function serverstop {
#/etc/init.d/logitechmediaserver stop
#/etc/init.d/roonserver stop
#}
###########################################
#function testsetting {
#/gentooplayer/script/testsetting.sh
#}
###############################
#function testsetting1 {
#/gentooplayer/script/testsetting1.sh
#}
###############################
#function normalsetting {
#/gentooplayer/script/normalsetting.sh
#}
###############################
#function normalsetting1 {
#/gentooplayer/script/normalsetting1.sh
#}
###############################
#function xfceinstall {
#/gentooplayer/script/xfceinstall.sh
#}
##################################
#function vncinstall {
#/gentooplayer/script/vncinstall.sh
#}
#################################
#function ricompila {
#/gentooplayer/script/ricompila.sh
#}
################################
#function affinity {
#/gentooplayer/script/affinity.sh
#}
################################
#function prio {
#/gentooplayer/script/prio.sh
#}
################################
#function nices {
#/gentooplayer/script/nice.sh
#}
################################
function shutd {
shutdown -h now
}
###############################
function mountfs {
/gentooplayer/script/mountfs.sh
}
#######################
#function cmdset {
#/gentooplayer/script/cmdset.sh
#}
#######################
function swappoff {
rc-update delete swap boot
}
#######################
#function selectdac {
#/gentooplayer/script/scelta_dac.sh
#}
#######################
function selectkernel {
/gentooplayer/script/selectkernel.sh
}
######################
function selectkernel-botic {
/gentooplayer/script/selectkernel_botic.sh
}
######################
function selectkernel-botic-sabre {
/gentooplayer/script/selectkernel_botic_sabre32.sh
}
#######################
#function trimadd {
#/gentooplayer/script/trim.sh
#}
#######################
function home {
clear
. /etc/profile
}
#######################
#function leggi {
#less /gentooplayer/script/avvertenze.txt
#}
#######################
function cpu-info {
/gentooplayer/DietPi/dietpi/dietpi-cpuinfo
}
######################
function cpu-governor {
/gentooplayer/script/cpu-governor.sh
}
######################
function cpu-governor-add {
/gentooplayer/script/cpugovernoradd.sh
}
######################
function cpu-governor-remove {
/gentooplayer/script/cpugovernoremove.sh
}
######################
function process-tool {
/gentooplayer/script/process_tool.sh
}
######################
function process-tool-add {
/gentooplayer/script/processtooladd.sh
}
######################
function process-tool-remove {
/gentooplayer/script/processtoolremove.sh
}
######################
function irq-affinity {
/gentooplayer/script/irq-affinity.sh
}
######################
function irqadd {
/gentooplayer/script/irqadd.sh
}
######################
function irqremove {
/gentooplayer/script/irqremove.sh
}
######################
function cloudshell {
/gentooplayer/DietPi/dietpi/dietpi-cloudshell 1
}
######################
function mtu-test {
/gentooplayer/DietPi/dietpi/func/dietpi-optimal_mtu
}
######################
function players-commands {
/gentooplayer/script/players-commands.sh
}
######################
function system-commands {
/gentooplayer/script/system-commands.sh
}
######################
function console-off {
/gentooplayer/script/console.sh
}
######################
function ssh-off {
rc-update delete sshd default
}
#############################
#function buffer {
#/gentooplayer/script/buffer.sh
#}
#######################
#function confset {
#/gentooplayer/script/confset.sh
#}
########################
#function twk {
#/gentooplayer/script/twk.sh
#}
#######################
function gp-update {
/gentooplayer/script/gp-update.sh
}
######################
function alsa-up {
/gentooplayer/script/alsa-up.sh
}
######################
function alsa-dw {
/gentooplayer/script/alsa-dw.sh
}
######################
function gp-menu {
/gentooplayer/script/menu.sh
}
######################
function ramsystem {
/gentooplayer/script/ramsystem.sh
}
######################
function upmrestart {
/etc/init.d/upmpdcli restart
}
######################
function upmstop {
/etc/init.d/upmpdcli stop
}
######################
function upmadd {
rc-update add upmpdcli default
}
######################
function upmremove {
rc-update delete upmpdcli default
}
######################
function upmc {
nano /etc/upmpdcli.conf
/etc/init.d/upmpdcli restart
}
######################
