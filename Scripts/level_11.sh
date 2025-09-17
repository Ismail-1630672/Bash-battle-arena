#!/bin/bash

# Mission: Create a script that checks the disk space usage of a specified directory and sends an alert if the usage exceeds a given threshold.

disk_usage() {

    local directory="$1"
    local threshold="$2"

    disk_use=$(du -sm $directory | awk '{print $1}')

    if [ $disk_use -gt $threshold ]
    then
        echo "disk use has exceeded threshold, please be careful"
    else
        echo "You still have disk space remaining"
    fi



}

disk_usage "Scripts" 2