# Set NVM_DIR if it isn't already defined
[[ -z "$NVM_DIR" ]] && export NVM_DIR="$HOME/.nvm"

# Load nvm if it exists
[[ -f "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
autoload -Uz add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use --delete-prefix
  elif [[ -f package.json && -r package.json ]]; then
    nvm use --delete-prefix stable
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
