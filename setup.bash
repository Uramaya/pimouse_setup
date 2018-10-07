#!/bin/bash -xve

exec 2> /tmp/setup.log

cd /home/ubuntu/RaspberryPiMouse/src/drivers/
/sbin/insmod rtmouse.ko

sleep 1     #wait for the device file to be created
chmod 666 /dev/rt*

echo 0 > /dev/rtmotoren0 #turn off the motor for safety
