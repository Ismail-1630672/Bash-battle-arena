#!/bin/bash

# Mission: Write a script that sorts all .txt files in a directory by their size, from smallest to largest, and displays the sorted list.

sort_files() {

    local directory="$1"

    cd $directory
    echo "changed to directory $directory"
    printf "The sorted list by size is \n$(ls *.sh -Sr)"
}

sort_files "Scripts"