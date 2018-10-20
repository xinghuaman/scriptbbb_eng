#!/bin/bash
{
	MAX_DEVICE=10
	TEMP_FILE="/tmp/find_network_index"
	NETFILE="/home/.network"

	ACTIVE_DEVICE="enp1s0"
	ETH_INDEX=0
	WLAN_INDEX=0
	IP_ADDRESS="Disconnected"

	#/////////////////////////////////////////////////////////////////////////////////////
	# Main Loop
	#/////////////////////////////////////////////////////////////////////////////////////

	#grab content of ifconfig -a
	ifconfig -a > "$TEMP_FILE"

	#clear previous
	rm "$NETFILE" &> /dev/null

	#find eth[0-9]
	for ((i=0; i<$MAX_DEVICE; i++))
	do
		if (( $(cat "$TEMP_FILE" | grep -ci -m1 "enp1s$i") == 1 )); then
			ETH_INDEX=$i
			break
		fi
	done

	#find wlan[0-9]
	for ((i=0; i<$MAX_DEVICE; i++))
	do
		if (( $(cat "$TEMP_FILE" | grep -ci -m1 "wlan$i") == 1 )); then
			WLAN_INDEX=$i
			break
		fi
	done

	#-----------------------------------------------------------------------------------
	#Find active network device
	# - eth takes priority, if both eth wlan are active.
	ip r > "$TEMP_FILE"
	if (( $( cat "$TEMP_FILE" | grep -ci -m1 "eth$ETH_INDEX") == 1 )); then
		ACTIVE_DEVICE="eth$ETH_INDEX"
	elif (( $( cat "$TEMP_FILE" | grep -ci -m1 "wlan$WLAN_INDEX") == 1 )); then
		ACTIVE_DEVICE="wlan$WLAN_INDEX"
	fi

	#-----------------------------------------------------------------------------------
	#IP address
	IP_ADDRESS=$(ifconfig "$ACTIVE_DEVICE" | grep -m1 'inet' | awk '{ print $2 }' | cut -d: -f2 )

	#-----------------------------------------------------------------------------------
	#Output to file
	cat << _EOF_ > "$NETFILE"
$ETH_INDEX
$WLAN_INDEX
$ACTIVE_DEVICE
$IP_ADDRESS
_EOF_
	#Clean up tmp files used
	rm "$TEMP_FILE"

	#-----------------------------------------------------------------------------------
	exit
	#-----------------------------------------------------------------------------------
}

