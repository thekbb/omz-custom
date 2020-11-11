load-tfswitch() {
  command -v tfswitch &> /dev/null || { echo >&2 "tfswitch not found. Aborting."; exit 1; }
  if [[ -f main.tf || -f version.tf ]]; then
    tfswitch
  fi
}
add-zsh-hook chpwd load-tfswitch
load-tfswitch
