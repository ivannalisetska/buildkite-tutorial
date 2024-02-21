#!/bin/bash

# Replace these values with your actual directory and file pattern
pipelines_directory=".buildkite"
file_pattern="*.yml"

# Use a shell command to list the pipeline files with a specific pattern
pipeline_files=($pipelines_directory/$file_pattern)

# Loop through the identified files and upload them individually
for file in "${pipeline_files[@]}"; do
    echo "Uploading pipeline: $file"
    # Simulate buildkite-agent upload pipeline
    # Replace this line with the actual buildkite-agent upload pipeline command
    # buildkite-agent upload pipeline "$file"
done
