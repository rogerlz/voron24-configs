#!/bin/bash

cd /opt/klipper

# linux flash
make clean KCONFIG_CONFIG=config.linux
#make menuconfig KCONFIG_CONFIG=config.linux
make KCONFIG_CONFIG=config.linux
make flash

# octopus 
make clean KCONFIG_CONFIG=config.octopus
make KCONFIG_CONFIG=config.octopus
make flash FLASH_DEVICE=/dev/serial/by-id/usb-Klipper_lpc1768_08A0000B610039AF9AF4F45BC02000F5-if00

# sht36

# /opt/klipper-venv/bin/python /opt/CanBoot/scripts/flash_can.py -i can0 -f out/klipper.bin -u 11ab3fae057c
# /opt/klipper-venv/bin/python /opt/klipper/scripts/canbus_query.py can0

