#!/bin/bash

# Mission: Create a script that backs up a directory to a specified location and keeps only the last 5 backups.

backup_directory() {

    local directory="$1"
    local backup_location="$2"

    

    timestamp=$(date +'%Y-%m-%d_%H-%M-%S')
    name="zipped_$timestamp.tar.gz"
    tar -czf "$backup_location/$name" "$directory"
    echo "created backup $name inside $backup_location"

    cd $backup_location

    ls -t | sed '1,5d' | while IFS= read -r file
    do 
        rm -f $file
    done

}

backup_directory "Arena_Boss" "Backup"