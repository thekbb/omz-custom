autoload -Uz add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use --delete-prefix
  elif [[ -f package.json && -r package.json ]]; then
    nvm use --delete-prefix v6.9.4
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
