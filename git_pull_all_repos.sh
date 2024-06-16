#!/bin/bash

# List all folders in the current directory
folders=$(ls -d */)

# Loop through each folder
for folder in $folders; do
    # Remove the trailing slash from the folder name
    folder=${folder%/}
    
    # Open each folder in a new GNOME Terminal window
    gnome-terminal --working-directory="$PWD/$folder" -- bash -c "git pull" &
done


