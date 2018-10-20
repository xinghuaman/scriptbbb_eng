#!/bin/bash

function select_sched() {
  sched=""
  clear
  while [ "$sched" == "" ] ; do
    cat <<-ECHOICE

	Scegliere il tipo di schedular:

	0) FIFO First Come First Served (-f)
	1) RR round-robin (-r)

ECHOICE
    
	
	read -N1 -p 'digitare il numero corrispondente all applicazione (0|1): ' SceltaSched
    echo
    case "$SceltaSched" in
      0)
	  sched="-f"
	  ;;
	  1)
	  sched="-r"
	  ;;
      *)
	  clear
	  echo -e "\a\nError: Unspecified selection.\nPlease enter a number between 0 and 1.\n"
    esac
    if [ "$sched" != "" ]; then
      echo -e "\nscelta: \e[38;5;88m$sched\e[0m\n"
      read -s -N1 -p 'Confermi la scelta? (s/N)'
      clear
      echo
      [ "$REPLY" != "s" ] && sched=""
    fi
  done
}

function select_app() {
  app=""
  clear
  while [ "$app" == "" ] ; do
    cat <<-ECHOICE

  Scegliere l applicazione da dare la prioritá:

    0) squeezelite-R2
    1) networkaudiod
    2) roonbridge (mono-sgen)
    3) mpd
    4) squeezelite

ECHOICE
    
  
  read -N1 -p 'digitare il numero corrispondente all applicazione (0|1|2|3|4): ' SceltaApp
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


select_sched
select_app

read -p "Digitare la prioritá da assegnare all´applicazione (valori da 0-85):"  prio

# per prima cosa eseguo 'ps' ed uso il suo output 
# per ottenere un array con i pids di mpd:
#
app_tid=($(ps -C $app -L --no-headers -o tid))

# poi verifico che il numero di threads sia quello previsto:
#
#if [ ${#mpd_tid} -lt 4 ]; then
#        echo -e "\nToo few (${#mpd_tid}) threads found: is mpd running?\nAbort."
#        exit 1
#elif [ ${#mpd_tid} -gt 4 ]; then
#        echo -e "\nSomething is wrong: too many ((${#mpd_tid})) threads found!\nAbort."
#        exit 2
#fi
# else -> ok, expected number of threads
# set desired policies & priorities:

chrt -v $sched -p $prio ${app_tid[0]}         # main
chrt -v $sched -p $prio ${app_tid[1]}         # update
chrt -v $sched -p $prio ${app_tid[2]}          # player
chrt -v $sched -p $prio ${app_tid[3]}          # decoder
chrt -v $sched -p $prio ${app_tid[4]}          # output
#chrt -v $sched -p $prio ${app_tid[5]}
#chrt -v $sched -p $prio ${app_tid[6]}
#chrt -v $sched -p $prio ${app_tid[6]}
#chrt -v $sched -p $prio ${app_tid[6]}
#chrt -v $sched -p $prio ${app_tid[6]}
#chrt -v $sched -p $prio ${app_tid[6]}



# use somthing like:
# ps -C mpd -L -o tid,cmd,nlwp,ni,pri,cls,rtprio
# to check!

# Hint: see the relevant man pages!
# man bash
# man ps
# man chrt
