#!/bin/bash
#python light-control.py $1

if [ "$1" = "red" ]
then
	mosquitto_pub -t yeelight_c -m 0xff0000
fi
if [ "$1" = "green" ]
then
	mosquitto_pub -t yeelight_c -m 0x00ff00
fi
if [ "$1" = "blue" ]
then
	mosquitto_pub -t yeelight_c -m 0x0000ff
fi
