#!/bin/bash
route add -net 224.0.0.0 netmask 224.0.0.0 wlp1s0
mosquitto -d
python  /root/aws-demo/yeelight/yeelight.py &
sleep 2
mosquitto_pub -t yeelight_t -m off
mosquitto_pub -t yeelight_t -m on
mosquitto_pub -t yeelight_c -m 0xffffff
mosquitto_pub -t yeelight_b -m 10

ifconfig fm1-mac4 10.193.20.218
#/root/aws-demo/vgus/temp_server 10.193.20.217 
#cp /root/aws-demo/vgus/temperature /usr/bin/
cp /root/aws-demo/light_control.sh /usr/bin/

#export OPENSSL_CONF="/etc/ssl/opensslA71CH_i2c.cnf"
