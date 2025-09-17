#!/bin/bash

# Mission: Write a script that reads a configuration file in the format KEY=VALUE and prints each key-value pair.

read_config_file() {

    local config_file="$1"

    if [ ! -f $config_file ]
    then
        echo "config file does not exist"
    elif [ $# -eq 0 ]
    then
        echo "please provide a file"
    else
        grep "=" $config_file | while IFS="=" read -r key value
        do 
            echo "key: $key  value: $value"
        done
    fi 


}

read_config_file "hello.txt"