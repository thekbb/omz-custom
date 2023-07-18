export PATH="/usr/local/sbin:$PATH"
export PATH="/Applications/IntelliJIDEA.app/Contents/MacOS:$PATH"
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/gopath
export PATH=$PATH:$GOPATH/bin
export PATH=~/bin:$PATH
export PATH=$PATH:$HOME/.rd/bin
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"


export REACT_EDITOR=idea
export GPG_TTY=$(tty)

eval "$(pyenv init --path)"
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

#export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

. /opt/homebrew/opt/asdf/libexec/asdf.sh
