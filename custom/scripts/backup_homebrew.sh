codePath="$HOME/Code"
gitPath="$HOME/Code/brew"
gitUrl='git@github.com:OlivierDijkstra/brew.git'

# Get the current directory
currentDir=$(pwd)

# Check if inside the codePath a folder exists with the name zsh
if [ -d "$codePath/brew" ]; then
    # If it exists, then cd into it
    echo "Folder brew exists, Entering it..."
    cd "$codePath/brew"
    # Check if the folder is empty
    if [ "$(ls -A $gitPath)" ]; then
        echo "Folder is not empty"
        # If it is not empty, then pull the latest changes
        git pull
    else
        # If it is empty, then clone the repository
        git clone "$gitUrl"
    fi
else
    echo "Folder brew does not exist, Creating it..."
    # If it does not exist, then create the folder and clone the repository
    cd "$codePath"
    git clone "$gitUrl"
    cd "$codePath/brew"
fi

brew update
brew bundle dump --force

# commit changes to git
cd $gitPath
git add .
git commit -m "backup brew"
git push
cd $currentDir