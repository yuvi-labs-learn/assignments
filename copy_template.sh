#!/bin/bash

# Check if argument provided
if [ -z "$1" ]; then
    echo "Usage: $0 <target_folder>"
    exit 1
fi

target_folder="$1"
script_dir="$(dirname "$0")"

# Loop through subdirectories
for dir in "$target_folder"/*/; do
    if [ -d "$dir" ]; then
        folder_name=$(basename "$dir")
        # Skip template directory
        if [ "$folder_name" != "template" ]; then
            cp "$script_dir/template/index.html" "$dir/index.html"
            echo "Copied to $folder_name/index.html"
        fi
    fi
done
