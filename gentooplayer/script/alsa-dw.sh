#!/bin/bash

function pausa() {
  echo
  read -s -p 'Press "Enter" to continue... CTRL+C to end'
  clear
  echo
}


echo -e "Install alsa 1.0.29?"

pausa

cat > /etc/portage/package.mask/alsa-lib <<EOF
>=media-libs/alsa-lib-1.1.2
>=media-sound/alsa-utils-1.1.2
>app-portage/eix-0.32.9
EOF

emerge --ask alsa-lib alsa-utils