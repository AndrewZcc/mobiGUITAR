#!/bin/bash

OUT=`adb shell getprop init.svc.bootanim` 
while [[ ${OUT:0:7}  != 'stopped' ]]; do
  OUT=`adb shell getprop init.svc.bootanim`
  echo '   Waiting for emulator to fully boot...'
  sleep 5
done
echo 'Emulator is running'
