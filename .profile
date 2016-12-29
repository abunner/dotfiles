# Set up path
pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="$PATH:$1"
    fi
}
pathprefix() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="$1:$PATH"
    fi
}

pathadd "/Users/abunner/Library/Android/sdk/platform-tools"

# This is where go install puts things (see GOPATH below)
pathadd "/Users/abunner/dev/bin"

# Any custom things
pathadd "/Users/abunner/bin"

# Where go is installed
pathadd "/usr/local/go/bin"

# Where the .NET Core CLI tools are
pathadd "/usr/local/share/dotnet"

# Because my prompt doesn't get set otherwise
source ~/.bashrc

export GOPATH=$HOME/dev
