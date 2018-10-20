#!/bin/bash
if
cat > /etc/local.d/processtool.start <<EOF
#!/bin/bash
sleep 10
/gentooplayer/DietPi/dietpi/dietpi-process_tool 1
EOF
chmod +x /etc/local.d/processtool.start; then
echo -e "\n \e[38;5;154m──OK──ADD──\e[0m\n"
else
echo -e "\n \e[38;5;154m──NOT──ADD──\e[0m\n"
fi

