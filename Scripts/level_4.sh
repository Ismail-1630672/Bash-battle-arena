#!/bin/bash

# Mission: Create a script that copies all .txt files from the Arena directory to a new directory called Backup.

mkdir Backup

echo "copying all .txt files from the Arena directory to Backup directory"

mv Arena/*.txt Backup

echo "All .txt files have been moved to backup directory"