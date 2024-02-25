#!/bin/bash

# URL to fetch
url="https://lab.bpm.in.tum.de/ur/programs/Youssef"

# Directory to save the downloaded files
dir="programs"

# Create the directory if it doesn't exist
mkdir -p $dir

# Fetch the HTML content
html=$(curl -s $url)
echo $html

# # Extract the URLs and download each one
# echo "$html" | grep -o 'https://lab\.bpm\.in\.tum\.de/ur/programs/Youssef/[^"]*\.urp' | while read -r line; do
#     file_name=$(basename $line)
#     curl -o "${dir}/${file_name}" $line
# done
