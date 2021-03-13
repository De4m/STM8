#!/bin/bash

suffix=firmware.bin
prefix=`eval date +%Y_%m_%d_%S`
filename=$prefix-$suffix
echo "==========================   READ FLASH   =================================="
sudo ./stm8flash -c stlinkv2 -p stm8s001j3 -r $filename
echo " "
echo " "
echo "==========================   VIEW FLASH   =================================="
echo " "
echo -n "View flash in HEX editor? (y/N) "
echo " "
read item
case "$item" in
    y|Y) hexcurse $filename
        ;;
    n|N) exit 0
        ;;
    *) exit 0
        ;;
esac






echo " "
echo " "
echo "==========================================================================="
echo "File name:  $filename   "
