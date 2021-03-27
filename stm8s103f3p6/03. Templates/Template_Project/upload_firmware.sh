#!/bin/bash

# Download Firmware
echo "==========================   FLASH   =================================="
sudo ./stm8flash -c stlinkv2 -p stm8s001j3 -w ./.pio/build/stm8s001/firmware.ihx


echo " "
echo " "
echo "==========================   VERUFY   ================================="
sudo ./stm8flash -c stlinkv2 -p stm8s001j3 -v ./.pio/build/stm8s001/firmware.ihx



