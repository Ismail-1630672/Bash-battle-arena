#!/bin/bash

#1. Creates a directory called Arena_Boss :
#2. Creates 5 text files inside the directory, named file1.txt to file5.txt.
#3. Generates a random number of lines (between 10 and 20) in each file.
#4. Sorts these files by their size and displays the list.
#5. Checks if any of the files contain the word 'Victory', and if found, moves the file to a directory called Victory_Archive.

mkdir -p Arena_Boss
cd Arena_Boss
count=1

while [ $count -le 5 ] 
do 
    touch file$count.txt
    ((count++))

done

for file in *.txt
do
    number_lines=$((RANDOM % 11 + 10))
    for i in $(seq 1 $number_lines)
    do
        echo "This is line number $i" >> $file
    done

done

echo "Sorting files by their sizes from smallest to biggest"
echo "$(ls -Sr)"

cd ..
echo "Back to main directory"
mkdir -p Victoria_Archive
echo "changed directory to victory archive"

for fi in Arena_Boss/*.txt
do
    if grep "Victory" $fi;
    then
        mv $fi Victoria_Archive/
        echo "$fi has been moved to Victoria Archive"
    else
        echo "Word victoria not found for file $fi"
    fi
done

