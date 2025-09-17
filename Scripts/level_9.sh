#!/bin/bash

# Mission: Write a script that monitors a directory for any changes (file creation, modification, or deletion) and logs the changes with a timestamp.

monitor_directory() {
    local directory="$1"
   

    echo "Checking if directory exists"
    if [[ ! -d $directory ]]
    then
        echo "sorry directory does not exist"
    elif [[ -d $directory ]]
    then
        echo "directory exists"
        cd $directory 
        echo "changed to directory $directory"
    else
        echo "you have not entered a directory, try again"
    fi 

    

    
    fswatch -r $directory | while read event
    do
        
        if [[ -e "$event" ]]
        then

            echo "$(date +'%Y-%M-%D_%H-%M-%S') - There has been a modification in the directory $directory" >> "Arena/logs.txt"
        else
            echo "$(date +'%Y-%M-%D_%H-%M-%S') - There has been a deletion in the directory $directory" >> "Arena/logs.txt"
        fi 
    done
        
}

monitor_directory "Arena"