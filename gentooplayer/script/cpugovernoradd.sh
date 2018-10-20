#!/bin/bash
if
cat > /etc/local.d/cpugovernor.start <<EOF
#!/bin/bash
sleep 10
/gentooplayer/DietPi/dietpi/func/dietpi-set_cpu
EOF
chmod +x /etc/local.d/cpugovernor.start; then
echo -e "\n \e[38;5;154m──OK──ADD──\e[0m\n"
else
echo -e "\n \e[38;5;154m──NOT──ADD──\e[0m\n"
fi

