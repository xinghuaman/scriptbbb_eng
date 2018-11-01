#!/bin/bash

function pausa() {
  echo
  read -s -p 'Il sistema verrá riavviato, premere "Invio" per continuare...'
  clear
  echo
}

function select_kernel() {
  declare -a rates=(  \
  '4.18.11-GentooPlayer-ST-bone11'   \
  '4.18.11-GentooPlayer-MIN-500-bone11'   \
  '4.18.11-GentooPlayer-MIN-250-bone11'   \
  '4.18.11-GentooPlayer-MIN-100-bone11'   \
  '4.18.11-GentooPlayer-MIN-1000RCU-bone11'   \
  '4.18.11-GentooPlayer-MIN-1000-bone11'   \
  '4.14.71-GentooPlayer-ST-bone-rt-r17'   \
  '4.14.71-GentooPlayer-MIN-500-bone-rt-r17'   \
  '4.14.71-GentooPlayer-MIN-250-bone-rt-r17'   \
  '4.14.71-GentooPlayer-MIN-1000RCU-bone-rt-r17'   \
  '4.14.71-GentooPlayer-MIN-1000-bone-rt-r17'   \
  )
  
  if [ "$1" == "" ]; then 
    local prompt='Selezionare un kernel (RT sta per RealTime kernel):'
  else
    local prompt="$1"
  fi
  kernel=""
  while [ "$kernel" == "" ]
  do
    clear
    echo -e "\n$prompt\n"
    for (( i = 0 ; i < ${#rates[@]} ; i++ ))
    do
      echo -e "$i) \t${rates[$i]}";
    done
    echo
    read -p 'Type the corresponding number and press enter: ' choice
    echo
    if [[ "$choice" =~ ^[0-9]+$ ]] && [ "$choice" -lt ${#rates[@]} ]; then
      kernel="${rates[$choice]}"
      echo -e "Choice made: '$kernel'\n"
      read -s -N1 -p 'Confirm and proceed? (s/N)'
      clear
      echo
      [ "$REPLY" != "s" ] && kernel=""
    else
      echo -e "\a\nErrore: type a number between 0 and $[ ${#rates[@]}-1 ]."
      pausa
    fi
  done
}

mount /boot

select_kernel

cat > /boot/uEnv.txt <<EOF
kernel_file=zImage-$kernel 
fdtfile=am335x-boneblack-$kernel.dtb
EOF

cat >> /boot/uEnv.txt <<'EOF'


loadzimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${kernel_file}
loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdtaddr} ${fdtfile}

console=ttyO0,115200n8
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext4 rootwait

mmcargs=setenv bootargs console=${console} root=${mmcroot} rootfstype=${mmcrootfstype} ${optargs}

uenvcmd=run loadzimage; run loadfdt; run mmcargs; bootz ${loadaddr} - ${fdtaddr}
EOF

pausa

reboot
