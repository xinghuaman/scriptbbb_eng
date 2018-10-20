#!/bin/bash

function pausa() {
  echo
  read -s -p 'Press "Enter" to continue... or CTRL+C to exit'
  clear
  echo
}


function select_app() {
  app=""
  clear
  while [ "$app" == "" ] ; do
    cat <<-ECHOICE

	Scegliere l applicazione da dare il renice:

  0) squeezelite-R2
  1) networkaudiod
  2) roonbridge (mono-sgen)
  3) mpd
  4) squeezelite
  5) sshd

ECHOICE
    
	
	read -N1 -p 'digitare il numero corrispondente all applicazione (0|1|2|3|4|5): ' SceltaApp
    echo
      case "$SceltaApp" in
         0)
	     app="squeezelite-R2"
	     ;;
	     1)
	     app="networkaudiod"
	     ;;
         2)
	     app="mono-sgen"
	     ;;
	     3)
	     app="mpd"
	     ;;
       4)
       app="squeezelite"
       ;;
       5)
       app="sshd"
       ;;
      *)
	  clear
	  echo -e "\a\nError: Unspecified selection.\nPlease enter a number between 0 and 1.\n"
    esac
    if [ "$app" != "" ]; then
      echo -e "\nscelta: \e[38;5;88m$app\e[0m\n"
      read -s -N1 -p 'Confermi la scelta? (s/N)'
      clear
      echo
      [ "$REPLY" != "s" ] && app=""
    fi
  done
}

#echo -e ""
#echo -e ""
#echo -e "\e[1;4mINFO:\e[0m"
#echo -e "Cosa interessante da sperimentare é isolare la cpu0 e la cpu3 all'avvio del sistem"
#echo -e "per farlo basta aggiungere l'opzione  \e[38;5;82misolcpus=0,3\e[0m al file di configurazione di grub"
#echo -e "in modo tale che le due cpu restano libere"
#echo -e "la cpu0 in genere é usata dal kernel per i suoi irq"
#echo -e "la cpu3 la dedichiamo al player"
#echo -e "l'operazine andrebbe fatta prima di lanciare questo script con il comando \e[1;38;5;88mgrubconf\e[0m"

pausa
select_app

# per prima cosa eseguo 'ps' ed uso il suo output 
# per ottenere un array con i pids di mpd:
#
#read -p "Scegliere l'applicazione da dara l'affinitá (squeezelite-R2, mpd, roonbridge, networkaudiod):"  app
#echo -e "Digitare il nome dell'applicazione da dara l'affinitá (\e[38;5;88msqueezelite-R2\e[0m, \e[38;5;89mmpd\e[0m, \e[38;5;90mroonbridge\e[0m, \e[38;5;91mnetworkaudiod\e[0m)"
#read -p: app



echo -e "\e[1;38;5;88mValori possibili da 19 -20\e[0m"
echo -e "Negative values have a higher priority (eg: -10)"
echo -e "Positive values have a lower priority (eg: 15)"
echo -e "The default value is 0 "
read -p "Digita il valore di nice per $app (es: 10 bassa priorita, -10 alta, -5 media, -20 molto alta ecc):"  nice 
task_tid=($(ps -C $app -L --no-headers -o tid))

# poi verifico che il numero di threads sia quello previsto:
#
#if [ ${#squeezelite_tid} -lt 3 ]; then
#        echo -e "\nToo few (${#squeezelite_tid}) threads found: is squeezelite-R2 running?\nAbort."
#        exit 1
#elif [ ${squeezelite_tid} -gt 3 ]; then
#        echo -e "\nSomething is wrong: too many ((${#squeezelite_tid})) threads found!\nAbort."
#        exit 2
#fi
# else -> ok, expected number of threads
# set desired policies & priorities:

renice -n $nice -p ${task_tid[0]}
renice -n $nice -p ${task_tid[1]}
renice -n $nice -p ${task_tid[2]}
renice -n $nice -p ${task_tid[3]}
renice -n $nice -p ${task_tid[4]}
#taskset -cp $core ${task_tid[5]}
#renice -n 10 -p 1234
#renice -n 10 -p 1234
# use somthing like:
# ps -C mpd -L -o tid,cmd,nlwp,ni,pri,cls,rtprio
# to check!

# Hint: see the relevant man pages!
# man bash
# man ps
# man chrt