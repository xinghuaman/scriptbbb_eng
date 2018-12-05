#!/bin/bash
if
cat > /etc/local.d/ramdisk.start <<EOF
#!/bin/bash
#sleep 5
/gentooplayer/script/ramdisk.sh
EOF
chmod +x /etc/local.d/ramdisk.start; then
echo -e "\n \e[38;5;154m[OK]\e[0m\n"
else
echo -e "\n \e[38;5;197m[FAILED]\e[0m\n"
fi
