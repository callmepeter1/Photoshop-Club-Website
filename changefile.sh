#!/bin/bash

cd "/Users/me.peter/ThanhPhamUX 2"

# Loop through each PNG file
for file in *.png; do
    # Check if the file exists
    if [ -e "$file" ]; then
        # Extract the file name without extension
        filename=$(basename "$file" .png)
        # Rename the file with the new extension .jpeg
        mv "$file" "$filename.jpeg"
        echo "Renamed $file to $filename.jpeg"
    fi
done

