#!/bin/bash

# Define the files to check
raw_data_check="Data/raw/2019/2019 ASR_Public_Use_File.dta"
processed_data_check="Data/processed/dataset_2016-19_target"

# Check if raw data extracted
if [ ! -f "$raw_data_check" ]; then
    echo "Data not extracted, running extract_data.sh"
    Scripts/extract_data.sh
fi

# Check if processed data exists
if [ ! -f "$processed_data_check" ]; then
    echo "Processed data does not exist, running process_data.sh"
    Scripts/process_data.sh
fi

# Run main notebooks
echo "Running primary notebooks"
jupyter execute "Notebooks/Supervised Learning.ipynb"
jupyter execute "Notebooks/Unsupervised Learning.ipynb"