#!/bin/bash

# Mission: Combine the skills you've gained! Write a script that:

#1. Presents a menu to the user with the following options:

#- Check disk space
#- Show system uptime
#- Backup the Arena directory and keep the last 3 backups
#- Parse a configuration file settings.conf and display the values

#2. Execute the chosen task.

echo "These are the options you have"
echo "1) Check disk space"
echo "2) Show system uptime"
echo "3) Create a backup location for Arena directory"
echo "4) Parse a configuration file and display it's values"

echo "choose between 1 to 4 for the options above"
read -r option

case $option in 
    1)
        df -h ;;


    2)
        uptime ;;

    3)
        chosen_directory="Arena"
        backup_location="Backup"

        timestamp=$(date +'%Y-%m-%d_%H-%M-%S')
        name="Arena_backup_$timestamp.tar.gz"
        tar -czf $backup_location/$name "Arena"

        cd $backup_location
        ls -t | sed '1,5d' | while IFS= read -r file
        do
            rm -f $file
        done ;;


    4)
        config_file="config.env"
        grep "=" $config_file | while IFS="=" read -r key value
        do 
            echo "key: $key  value: $value"
        done ;;

    *) 
        echo "invalid option";;
esac