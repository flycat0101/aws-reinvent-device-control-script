#!/bin/bash
cd /root/aws-iot-device-sdk-cpp/build/bin
OPENSSL_CONF="/etc/ssl/opensslA71CH_i2c.cnf" ./actuator-sample &
sleep 3
./sensor-sample &
