#!/bin/bash

REQUIRED_OS_VER=12

if [ "$REQUIRED_OS_VER" -ge 12 ]; then
    RPI_config_text_path="/boot/firmware/config.txt"
else
    RPI_config_text_path="/boot/config.txt"
fi

echo "Raspberry Pi config text path: $RPI_config_text_path"
