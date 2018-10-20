function pausa() {
  echo
  read -s -p 'Press "Enter" to continue... CTRL+C to exit'
  clear
  echo
}

getinfo()
{
   
  read -p "Type the server ip:"	ipserver
  read -p "Type the directory of the server you want to mount (exact name):"	nomedir
  read -p "Type username:"      nomeu
  read -p "Type password:"      passwd
  read -p "Give a name to the server, it is free and of your choice (eg nas, nas1, mio_nas, pc_server, debian, etc.):" nomcond
}
clear
echo ""
echo -e "\e[38;5;197mATTENTION: give different names for different servers\e[0m"
echo -e "Press CTRL+C to end the script at any time"
echo ""
getinfo
mkdir /mnt/samba/$nomcond 2>/dev/null
if
mkdir /mnt/samba/$nomcond/$nomedir 2>/dev/null; then
chmod -R 777 /mnt/samba/$nomcond
chmod -R 777 /mnt/samba/$nomcond/$nomedir
echo -e "\n \e[38;5;154m[OK] The directory /mnt/samba/$nomcond/$nomedir It was created correctly\e[0m\n"
else
echo -e "\n \e[38;5;197mThe directory /mnt/samba/$nomcond/$nomedir already exists, sure you want to use this path?\e[0m\n"
echo ""
pausa
fi
if
mount -w -t cifs -o vers=2.1,username=$nomeu,password=$passwd //$ipserver/$nomedir /mnt/samba/$nomcond/$nomedir; then
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
echo -e "\e[38;5;82mLa condivisione remota //$ipserver/$nomedir It has been mounted in /mnt/samba/$nomcond/$nomedir\e[0m"
else
echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
echo -e ""
exit 0
fi
echo -e ""
echo -e "\e[38;5;82mDo you want to add the mount when the system starts?\e[0m y/n"
read aggiungere
        if [ "$aggiungere" = "y" ]; then
cat > /etc/local.d/$nomcond$nomedir.start <<EOF
#!/bin/sh
sleep 5
mount -w -t cifs -o vers=2.1,username=$nomeu,password=$passwd //$ipserver/$nomedir /mnt/samba/$nomcond/$nomedir
EOF
chmod +x /etc/local.d/$nomcond$nomedir.start
rc-update add local default
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
else
echo -e "\n \e[38;5;197m[NOT ADDED]\e[0m\n"
fi