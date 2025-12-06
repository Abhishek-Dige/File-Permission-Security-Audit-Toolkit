#!/bin/bash

SCAN_DIR="tests/sample_test_files"
OUTPUT="output/world_writable.txt"
mkdir -p output


find "$SCAN_DIR" -type f -perm -002 2>/dev/null | while read file
do
    ls -l "$file" >> "$OUTPUT"
done
