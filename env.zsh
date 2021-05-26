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
export GPG_TTY=$(tty)

eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="/Users/kbehrens/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
export PYENV_ROOT=~/.pyenv
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

export AWS_PAGER=jq
export AWS_REGION=us-east-2
export AWS_DEFAULT_REGION=$AWS_REGION
set -o vi
export EDITOR=vim

NODE_MODULES=$HOME/.npm
NPM_PACKAGES=$HOME/.npm-packages/bin
export PATH=$PATH:$HOME/bin:$NODE_MODULES:$NPM_PACKAGES

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
