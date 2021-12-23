codePath="$HOME/Code"
gitPath="$HOME/Code/zsh"
ohMyZshPath="$HOME/.oh-my-zsh"
gitUrl='git@github.com:OlivierDijkstra/zsh.git'

# Get the current directory
currentDir=$(pwd)

# Check if inside the codePath a folder exists with the name zsh
if [ -d "$codePath/zsh" ]; then
    # If it exists, then cd into it
    echo "Folder zsh exists, Entering it..."
    cd "$codePath/zsh"
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
    echo "Folder zsh does not exist, Creating it..."
    # If it does not exist, then create the folder and clone the repository
    cd "$codePath"
    git clone "$gitUrl"
fi


# copy .zshrc to gitPath
cp ~/.zshrc $gitPath

# Copy the /Custom folder inside the ohMyZshPath to the gitPath
sudo cp -r "$ohMyZshPath/custom" "$gitPath"

# commit changes to git
cd $gitPath
git add .
git commit -m "backup zsh"
git push
cd $currentDir
