#!/bin/bash

# Mission: Create an interactive script that presents a menu with options for different system tasks (e.g., check disk space, show system uptime, list users), and executes the chosen task.

echo "Here is the menu"
echo "1) Check disk space"
echo "2) show system uptime"
echo "3) List users"

echo "choose between 1 to 3"
read -r option

case $option in 
    1)
        df -h ;;
    
    2)
        uptime ;;

    3)
        cat /etc/passwd | cut -d: -f1 ;;
    
    *)
        echo "Invalid option" ;;
esac
