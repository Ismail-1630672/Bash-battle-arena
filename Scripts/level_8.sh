#!/bin/bash

# Mission: Create a script that searches for a specific word or phrase across all .log files in a directory and outputs the names of the files that contain the word or phrase.

search_word() {

    local directory="$1"
    local word="$2"

    echo "checking if directory exists"

    if [[ ! -d $directory ]]
    then
        echo "sorry the directory $directory does not exist"
    elif [ -z "$1" ]
    then
        echo "sorry no directory provided"
    else
        echo "the directory exists"
        cd $directory
        printf "The files which include the word $word are \n$(grep "$word" *.sh | cut -d: -f1 | uniq)"
    fi

}

search_word "Scripts.." "script"

