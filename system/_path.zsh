export PATH="./bin:/usr/local/bin:/usr/local/sbin:$DOTFILES/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
export PATH="$HOME/Repos/fed-bin:$PATH"

# Python
export GOOGLE_APPLICATION_CREDENTIALS="$HOME/.google/auth.json"
export PATH=/usr/local/share/python:$PATH

# AWS
export AWS_CONFIG_FILE="~/.aws/config"

# NVM
export NVM_DIR="$HOME/.nvm"

# Android Studio
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin


if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

# JAVA
#export JAVA_HOME=$(/usr/libexec/java_home)

# Tell bash about homebrew packages
export PATH=/opt/homebrew/bin:$PATH
