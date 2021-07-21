#!/bin/sh

set -e

# change this to the location where you put the .dl file:
FIRMWARE=/etc/sihp1020.dl
DEVICE=/dev/usb/lp0
LOGFILE=/tmp/hp-fm

if [ "$PRODUCT" = "3f0/2b17/100" -a "$ACTION" = "add" -a "$DEVTYPE" = "usb_interface" ]; then
   echo "$(date): STARTING" > $LOGFILE
   for i in $(seq 30); do
       echo "$(date): Attempt number $i on $DEVICE" >> $LOGFILE
       if [ -c $DEVICE ]; then
          echo "$(date): Device $DEVICE found." >> $LOGFILE
          if [ -z "`usb_printerid $DEVICE | grep FWVER`" ]; then
              echo "$(date): No firmware found on $DEVICE" >> $LOGFILE
              echo "$(date): Sending firmware to printer¡­" >> $LOGFILE
              cat $FIRMWARE > $DEVICE
              echo "$(date): done." >> $LOGFILE
          else
              echo "$(date): Firmware already there on $DEVICE" >> $LOGFILE
          fi
          echo "$(date): EXITING" >> $LOGFILE
          exit
       fi
       sleep 1
    done
fi