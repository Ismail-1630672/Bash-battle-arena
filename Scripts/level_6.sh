#!/bin/bash

# Mission: Write a script that accepts a filename as an argument and prints the number of lines in that file. If no filename is provided, display a message saying 'No file provided'.

check_file() {

    local file_name="$1"

    echo "Checking if file entered exists......"
    if [[ -f $file_name ]]
    then
        echo "wohooo!! the file exists"
        
        echo "The number of lines in $file_name is $(cat $file_name | wc -l)"
    elif [ "$#" -eq 0 ]
    then
        echo "No file provided"
    else
        echo "The file provided does not exist"
    fi 
}

check_file "Scripts/level_2.sh"