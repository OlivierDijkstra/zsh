#!/bin/zsh

# Get all files from the ~/Library/LaunchAgents folder
# and for each file ask if the user wants to remove it.
# If the user answers yes, remove the file.

# Get all files from the ~/Library/LaunchAgents folder
files=($(ls ~/Library/LaunchAgents))

# Echo how many files are in the folder
echo "Found ${#files[@]} Launch Agents."

# For each file ask if the user wants to remove it.
# If the user answers yes, remove the file.
for file in $files; do
    # Color the file name
    fileName="\033[1;34m$file\033[0m"

    echo "Would you like to remove the file $fileName?, ENTER to skip, or 'n' to cancel."
    read answer

    # If the user passed 'n', cancel the script
    if [[ $answer == "n" ]]; then
        echo "Cancelling script."
        exit
    fi

    # If the user presses ENTER, skip the file
    if [[ $answer == "" ]]; then
        echo "Skipping $fileName"
        echo
        continue
    fi

    # If the user enters "y" or "yes" remove the file
    if [[ $answer == "y" || $answer == "yes" ]]; then
        echo "🗑️ Removing $fileName"
        rm ~/Library/LaunchAgents/$file
    fi
done