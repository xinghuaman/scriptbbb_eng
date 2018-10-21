#!/bin/bash
clear
#Squeezelite
echo -e "\e[1;4mPlayer and server:\e[0m"
echo -e "\e[38;5;82mSqueezelite\e[0m"
echo -e "\e[1;38;5;88msqconfig\e[0m \e[38;5;8mSqueezelite-R2-Squeezelite-Mpd wizard configuration\e[0m"
echo -e "\e[1;38;5;88msqc\e[0m \e[38;5;8mIt opens the configuration file of Squezelite to be edited, when it closes it will restart the squezelite\e[0m"
echo -e "\e[1;38;5;88msqr\e[0m \e[38;5;8mSqueezelite restart stop the other players\e[0m"
echo -e "\e[1;38;5;88msqrestart\e[0m \e[38;5;8mRestart Squeezelite\e[0m"
echo -e "\e[1;38;5;88msqstop\e[0m \e[38;5;8mStop Squeezelite\e[0m"
echo -e "\e[1;38;5;88msqadd\e[0m \e[38;5;8mAdds Squeezelite to the system boot\e[0m"
echo -e "\e[1;38;5;88msqremove\e[0m \e[38;5;8mRemoves Squeezelite from starting the system\e[0m"
#Squeezelite-R2
echo -e "\e[38;5;82mSqueezelite-R2\e[0m"
echo -e "\e[1;38;5;88msqc2\e[0m \e[38;5;8mIt opens the configuration file of Squezelite-R2 to be edited, when it closes it will restart the squezelite\e[0m"
echo -e "\e[1;38;5;88msqr2\e[0m \e[38;5;8mSqueezelite-R2 restart stop the other players\e[0m"
echo -e "\e[1;38;5;88msqrestart2\e[0m \e[38;5;8mRestart Squeezelite-R2\e[0m"
echo -e "\e[1;38;5;88msqstop2\e[0m \e[38;5;8mStop Squeezelite-R2\e[0m"
echo -e "\e[1;38;5;88msqadd2\e[0m \e[38;5;8mAdds Squeezelite-R2 to the system boot\e[0m"
echo -e "\e[1;38;5;88msqremove2\e[0m \e[38;5;8mRemoves Squeezelite-R2 from starting the system\e[0m"
#NAD
echo -e "\e[38;5;82mNetworkaudiod\e[0m"
echo -e "\e[1;38;5;88mnadr\e[0m \e[38;5;8mRestart of networkaudiod stop of the other players\e[0m"
echo -e "\e[1;38;5;88mnadrestart\e[0m \e[38;5;8mnetworkaudiod restart\e[0m"
echo -e "\e[1;38;5;88mnadstop\e[0m \e[38;5;8mnetworkaudiod stop\e[0m"
echo -e "\e[1;38;5;88mnadadd\e[0m \e[38;5;8mAdds networkaudiod to the system boot\e[0m"
echo -e "\e[1;38;5;88mnadremove\e[0m \e[38;5;8mRemoves networaudiod from starting the system\e[0m"
#MPD
echo -e "\e[38;5;82mMpd\e[0m"
echo -e "\e[1;38;5;88mmpdc\e[0m \e[38;5;8mOpen the mpd configuration file to be edited and restart mpd\e[0m"
echo -e "\e[1;38;5;88mmpdr\e[0m \e[38;5;8mRestart of mpd stop of the other players\e[0m"
echo -e "\e[1;38;5;88mmpdrestart\e[0m \e[38;5;8mRestart Mpd\e[0m"
echo -e "\e[1;38;5;88mmpdstop\e[0m \e[38;5;8mStop Mpd\e[0m"
echo -e "\e[1;38;5;88mmpdadd\e[0m \e[38;5;8mAdds Mpd to the system boot\e[0m"
echo -e "\e[1;38;5;88mmpdremove\e[0m \e[38;5;8mRemoves Mpd from starting the system\e[0m"
#RoonBridge
echo -e "\e[38;5;82mRoonBridge\e[0m"
echo -e "\e[1;38;5;88mroonr\e[0m \e[38;5;8mRestart of roon-bridge stop of the other players\e[0m"
echo -e "\e[1;38;5;88mroonrestart\e[0m \e[38;5;8mRestart roon-bridge\e[0m"
echo -e "\e[1;38;5;88mroonstop\e[0m \e[38;5;8mStop roon-bridge\e[0m"
echo -e "\e[1;38;5;88mroonadd\e[0m \e[38;5;8mAdds roon-bridge to the system boot\e[0m"
echo -e "\e[1;38;5;88mroonremove\e[0m \e[38;5;8mRemoves roon-bridge from starting the system\e[0m"
#LMS
#echo -e "\e[38;5;82mLogitechMediaServer\e[0m"
#echo -e "\e[1;38;5;88mlmsadd\e[0m \e[38;5;8mAdds LogitechMediaServer to the system boot\e[0m"
#echo -e "\e[1;38;5;88mlmsremove\e[0m \e[38;5;8mRemoves LogitechMediaServer from starting the system\e[0m"
#echo -e "\e[1;38;5;88mlmsrestart\e[0m \e[38;5;8mRestart LMS\e[0m"
#echo -e "\e[1;38;5;88mlmsstop\e[0m \e[38;5;8mStop LMS\e[0m"
#RoonServer
#echo -e "\e[38;5;82mRoonServer\e[0m"
#echo -e "\e[1;38;5;88mroonsadd\e[0m \e[38;5;8mAdds RoonCoreServer to the system boot\e[0m"
#echo -e "\e[1;38;5;88mroonsremove\e[0m \e[38;5;8mRemoves RoonCoreServer from starting the system\e[0m"
#echo -e "\e[1;38;5;88mroonsrestart\e[0m \e[38;5;8mRestart RoonCoreServer\e[0m"
#echo -e "\e[1;38;5;88mroonserverstop\e[0m \e[38;5;8mStop RoonCoreServer\e[0m"#

#####altro
#echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
#echo -e "\e[1;38;5;88mplayerstop\e[0m \e[38;5;8mStop all the players\e[0m"
#echo -e "\e[1;38;5;88mserverstopp\e[0m \e[38;5;8mStoppa LMS e RoonServer\e[0m"
#echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
