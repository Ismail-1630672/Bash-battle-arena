#!/bin/bash

# Mission: Combine what you've learned! Write a script that:

#1. Creates a directory names 'Battlefield'
#2. Inside Battlefield, create files named knight.txt, sorcerer.txt, and rogue.txt.
#3. Check if knight.txt exists; if it does, move it to a new directory called Archive.
#4. List the contents of both Battlefield and Archive.

mkdir Battlefield
echo "created new directory called Battlefield"

cd Battlefield
echo "Changed directory to Battlefield"

touch knight.txt sorcerer.txt rogue.txt
echo "created files kinght.txt, sorcerer.txt and rogue.txt inside battlefield directory"

echo "Checking if knight.txt exists inside battlefield directory"
if [[ -f knight.txt ]]
then
    echo "knight.txt exists"
    cd ..
    mkdir Archive
    echo "created new directory called Archive"
    mv Battlefield/knight.txt Archive
else
    echo "the file knight.txt does not exist"
fi 


echo "The contents of battlefield directory include $(ls Battlefield)"
echo "The contents of archive directory include $(ls Archive)"