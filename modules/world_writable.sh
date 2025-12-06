#!/bin/bash

OUTPUT="../output/world_writable.txt"
REPO="../tests"

echo "===== World Writable File Report =====" > "$OUTPUT"
echo "Generated on: $(date)" >> "$OUTPUT"
echo "" >> "$OUTPUT"


RESULT=$(find "$REPO" -type f -perm -0002 2>/dev/null)

if [ -z "$RESULT" ]; then
    echo "No world-writable files found." >> "$OUTPUT"
    exit 0
fi

echo "--- World-Writable Files (others have write access) ---" >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "$RESULT" | while read file; do
    ls -l "$file" >> "$OUTPUT"
done

echo "" >> "$OUTPUT"
echo "Total files found: $(echo "$RESULT" | wc -l)" >> "$OUTPUT"
