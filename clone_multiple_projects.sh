#!/bin/bash

# Check if no arguments are provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file_with_urls.txt>"
    exit 1
fi

# Check if the provided argument is a file
if [ ! -f "$1" ]; then
    echo "The provided argument is not a file or does not exist."
    exit 1
fi

# Read URLs from the file and clone the repositories
while IFS= read -r url; do
    echo "Cloning repository from $url"
    git clone "$url"
    if [ $? -eq 0 ]; then
        echo "Repository cloned successfully."
    else
        echo "Failed to clone repository from $url"
    fi
done < "$1"
