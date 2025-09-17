#!/bin/bash

# Mission: Create a directory named Arena and then inside it, create three files: warrior.txt, mage.txt, and archer.txt. List the contents of the Arena directory.

mkdir Arena
cd Arena
touch warrior.txt mage.txt archer.txt
printf "The contents of the arena directory include \n$(ls)"

