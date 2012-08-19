
# Go environment variables
export GOROOT=$HOME/go
export GOARCH=amd64
export GOOS=darwin

# Java environment varibles
# Added 9/12/2009 to workaround semantic change of @Override in Java
# Ant gives me errors on libraries that use @Override improprerly unless I set this first
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home

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

pathadd "/usr/local/mysql/bin"
pathadd "/usr/local/git/bin"
pathadd "/usr/local/bin"
pathadd "/Users/abunner/go/bin"
pathadd "/Users/abunner/bin"
pathadd "/Users/abunner/dev/google_appengine"
pathadd "/Users/abunner/dev/depot_tools"
pathadd "/Users/abunner/dev/ImageMagick-6.7.4/bin"
export MAGIC_HOME="/Users/abunner/dev/ImageMagick-6.7.4"
# export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"
export DYLD_FALLBACK_LIBRARY_PATH="$MAGICK_HOME/lib/"

# MacPorts paths
pathprefix "/opt/local/bin"
pathprefix "/opt/local/sbin"
export MANPATH=/opt/local/share/man:$MANPATH

# pathadd "/Applications/xampp/xamppfiles/bin"

