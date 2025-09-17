#!/bin/bash

# Mission: Create a script that outputs the numbers 1 to 10, one number per line.

echo "Here is a script that outputs the numbers 1 to 10"

for i in $(seq 1 10)
do
    echo "$i"
done

echo "Finished!!"