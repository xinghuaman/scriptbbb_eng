#!/bin/bash
bldylw='\e[1;33m' # Giallo
txtrst='\e[0m'    # Text Resett
function run_as_root() {
  [ "$(whoami)" == "root" ] || { 
    echo -e '\a\nWARNING: This command must be run from the "SuperUser" (root user).'
    exec su -c "$0"
  }
}
run_as_root
clear
echo "-----------------------------------------------------------------------------------------------------"
route -n
echo "-----------------------------------------------------------------------------------------------------"
echo "-----------------------------------------------------------------------------------------------------"
echo -e "${bldylw}YOU HAVE ALL INFORMATION ABOVE:"
echo "-The iface_name IN THE COLUMN Iface"
echo -e "-IP ROUTER IN THE COLUMN Gateway${txtrst}"
echo "-----------------------------------------------------------------------------------------------------"
echo "-----------------------------------------------------------------------------------------------------"
getinfo()
{
  read -p "Enter iface_name(looks like enp3s0 or eth0 etc):"  namerete 
  read -p "Enter the IP of your router(Gateway) -(looks like 192.168.1.1 or 192.168.178.1):"	routerip
  read -p "Enter the ip address for your (looks like 192.168.1.22):"	staticip
}

writeinterfacefile()
{
cat > /etc/conf.d/net <<EOF 
config_$namerete=( "$staticip netmask 255.255.0.0" )
routes_$namerete=( "default gw $routerip" )
dns_servers_$namerete=( "$routerip" )
EOF
ln -s /etc/init.d/net.lo /etc/init.d/net.$namerete
rc-update add net.$namerete default
/etc/init.d/net.$namerete restart
rc-update del dhcpcd default
exit 0
}



getinfo
echo ""
echo "So your settings are:"
echo "Your iface_name is:           $namerete"
echo "Address of your Router is:   $routerip"
echo "Your decided IP is:   $staticip"
echo ""

while true; do
  read -p "Are these informations correct? [y/n]: " yn 
  case $yn in
    [Yy]* ) writeinterfacefile;;
    [Nn]* ) getinfo;;
        * ) echo "Pleas enter y or n!";;
  esac
done
