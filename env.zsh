export PATH="/usr/local/sbin:$PATH"
export GRADLE_OPTS="-Xms2048m -Xmx4096m"
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/gopath
export PATH=$PATH:$GOPATH/bin
export PATH=$HOME/.fastlane/bin:$PATH
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=~/bin:$PATH
export REACT_EDITOR=idea
export PATH=/usr/local/opt/sqlite/bin:$PATH
export ANDROID_SDK=$HOME/Library/Android/sdk
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:$PATH

eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(pyenv init -)"
export PYENV_ROOT=~/.pyenv
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

export AWS_PAGER=jq
export AWS_PROFILE=sbox1
set -o vi
export EDITOR=vim
