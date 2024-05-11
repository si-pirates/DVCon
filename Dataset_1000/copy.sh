#!/usr/bin/bash

# Source directory containing the files
src_dir="/f/DVCon/ViT-Malware-Detector-main/ExeImg_Dataset/Malware"

# Destination directory to copy the files
dest_dir="/f/DVCon/DVCon/Dataset_1000/Malware"

# List all files in the source directory
files_list=$(ls "$src_dir")

# Randomly select 1000 files from the list
selected_files=$(echo "$files_list" | shuf -n 1000)

# Copy the selected files to the destination directory
for file in $selected_files
do
  cp "$src_dir/$file" "$dest_dir/"
done
