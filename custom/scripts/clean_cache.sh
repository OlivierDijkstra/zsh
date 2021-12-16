#!/bin/zsh
# Loop through all files and folders in the cache path depth 1
echo "🚀 Cleaning cache..."
for file in $(find ~/Library/Caches -maxdepth 1); do
	# Get the actual file or folder name without path
	fileName=$(basename "$file")

	# If the file does not contain a path and the fileName equals Android or if the fileName is 
	if [[  $file =~ "/" || ! $fileName == "Android" ]]; then
		# Add the file to the filesToDelete array
		filesToDelete+=("$file")
	fi

    # check if the fileName matches any part of the cacheWhitelist entries
	for i in "${cacheWhitelist[@]}"; do
		# echo "$fileName not matches $i ?"
		
		# If the fileName matches any part of the cacheWhitelist entries remove it from the filesToDelete array
		if [[ "$fileName" == *"$i"* ]]; then
			# echo "Removing $fileName from filesToDelete array"
			filesToDelete=(${filesToDelete[@]//"$file"/})
		fi
	done
done

# If filesToDelete is empty
if [ -z "$filesToDelete" ]; then
	echo "✅ No caches to delete"
else
	for file in "${filesToDelete[@]}"; do
	# If file is the exact path to the cache folder
		if [[ ! "$file" == "$HOME/Library/Caches" ]]; then
			echo "🗑️ Deleting $file"
			rm -rf "$file"
		fi
	done
	echo "✅ Done cleaning cache"
fi

