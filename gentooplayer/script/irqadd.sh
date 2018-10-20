#!/bin/bash
if
cat > /etc/local.d/iqraffinity.start <<EOF
#!/bin/bash
/gentooplayer/script/irq-affinity-start.sh
EOF
chmod +x /etc/local.d/iqraffinity.start; then
echo -e "\n \e[38;5;154m──OK──ADD──\e[0m\n"
else
echo -e "\n \e[38;5;154m──NOT──ADD──\e[0m\n"
fi