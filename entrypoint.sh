#!/bin/sh -l

# $1 should be the directory containing the items you want to compress
WORKSPACE_DIR="/github/workspace/"
DIR="${WORKSPACE_DIR}${1}"

# Iterate over the file extensions
for FILE_EXT in "js" "css" "html"; do
    # Find files with the given extension
    FILES=$(find "$DIR" -type f -name "*.$FILE_EXT")
    
    if [ -z "$FILES" ]; then
        echo "No *.$FILE_EXT files found"
    else
        echo "$FILES" | xargs /brotli -v --
    fi
done
