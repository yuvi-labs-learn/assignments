#!/bin/bash

for dir in /Users/yuva/workspace/claude/weekly_assign/assignments/*/; do
    if [ -d "$dir" ]; then
        folder_name=$(basename "$dir")
        if [ "$folder_name" != "$(basename $(dirname $0))" ]; then
            cp /Users/yuva/workspace/claude/weekly_assign/assignments/template.html "$dir/index.html"
            echo "Copied to $folder_name/index.html"
        fi
    fi
done
