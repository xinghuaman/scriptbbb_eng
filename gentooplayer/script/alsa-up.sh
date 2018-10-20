#!/bin/bash

function pausa() {
  echo
  read -s -p 'Press "Enter" to continue... CTRL+C to end'
  clear
  echo
}


echo -e "Update alsa to the latest version?"

pausa

cat > /etc/portage/package.mask/alsa-lib <<EOF
>app-portage/eix-0.32.9
EOF

emerge --ask alsa-lib alsa-utils