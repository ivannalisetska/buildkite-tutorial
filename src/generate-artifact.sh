#!/bin/bash

# Get the current hour (24-hour format)
current_hour=$(date +%H)

# Function to generate message based on the time of day
generate_message() {
    if ((current_hour >= 5 && current_hour < 12)); then
        echo "Good morning! Have a wonderful day ahead!"
    elif ((current_hour >= 12 && current_hour < 17)); then
        echo "Hello! Afternoon is a great time to accomplish your goals."
    elif ((current_hour >= 17 && current_hour < 21)); then
        echo "Evening is here! Take a moment to relax and enjoy."
    else
        echo "Good night! Wishing you peaceful dreams and restful sleep."
    fi
}

# Save the generated message as an artifact
generate_message > ./message.txt
