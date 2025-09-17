#!/bin/bash

# Mission: Write a script that checks if a file named hero.txt exists in the Arena directory. If it does, print Hero found!; otherwise, print Hero missing!.

echo "Checking if file hero.txt exists in the Arena directory......."

cd Arena

if [[ -f hero.txt ]]
then
    echo "Hero found!"
else
    echo "Hero missing!"
fi 

echo "Check done"