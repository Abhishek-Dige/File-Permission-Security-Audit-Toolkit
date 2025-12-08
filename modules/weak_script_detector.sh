#!/bin/bash



scan_directory="../tests"
output_file="../output/weak_script_report.txt"



echo "Weak script report" > "$output_file"
echo "Generated on : $(date)" >> "$output_file"
echo "Directory scanned : $scan_directory" >> "$output_file"
echo "------------------------------------------------------" >> "$output_file"



echo "" >> "$output_file"
echo "1) Scripts missing SHEBANG LINE" >> "$output_file"
echo "------------------------------------------------------" >> "$output_file"

find "$scan_directory" -type f -name "*.sh" | while read file
do
        first_line=$(head -n 1 "$file")
        if [[ "$first_line" != "#!"* ]]
        then
                echo "$file" >> "$output_file"
        fi
done



echo "" >> "$output_file"
echo "2) Scripts containing risky Patterns" >> "$output_file"
echo "------------------------------------------------------" >> "$output_file"

pattern=("rm -rf" "sudo" "chmod 777")

find "$scan_directory" -type f -name "*.sh" | while read file
do
        for pat in "${pattern[@]}"
        do
                if grep -q "$pat" "$file"
                then
                        echo "$file contains risky pattern : $pat" >> "$output_file"
                fi
        done
done

echo "" >> "$output_file"
echo "Weak script scan completed!" >> "$output_file"
