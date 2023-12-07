#!/bin/bash

# Zipped data and destinations
ZIP_FILES=("Data/downloads/104642-V4.zip" "Data/downloads/117581-V1.zip" "Data/downloads/131025-V1.zip" "Data/downloads/168641-V2.zip")
DEST_FOLDERS=("Data/raw/2016/" "Data/raw/2017" "Data/raw/2018" "Data/raw/2019")

# dta files to be extracted
IFS=""
FILES_TO_EXTRACT=("2016-ASR_Public_Use_File.dta"
                  "2017 ASR_Public_Use_File.dta"
                  "2018 ASR_Public_Use_File.dta"
                  "2019 ASR_Public_Use_File.dta")

# Extract all
for i in "${!ZIP_FILES[@]}"; do
    ZIP_FILE="${ZIP_FILES[$i]}"
    DEST_FOLDER="${DEST_FOLDERS[$i]}"
    EXTRACT_FILES="${FILES_TO_EXTRACT[$i]}"

    # Check that download exists
    if [ ! -f "$ZIP_FILE" ]; then
        echo "Error: Zip file $ZIP_FILE does not exist."
        continue
    fi

    # Create year folder if it does not exist
    if [ ! -d "$DEST_FOLDER" ]; then
        mkdir -p "$DEST_FOLDER"
    fi

    # Extract
    unzip -o "$ZIP_FILE" $EXTRACT_FILES -d "$DEST_FOLDER"

    # Check if unzip command was successful
    if [ $? -ne 0 ]; then
        echo "Error: Failed to extract files from $ZIP_FILE."
        continue
    else
        echo "Files extracted successfully from $ZIP_FILE to $DEST_FOLDER."
    fi
done
