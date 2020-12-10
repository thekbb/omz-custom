load-tfswitch() {
  if [[ -f main.tf || -f version.tf ]]; then
    command -v tfswitch &> /dev/null || { echo >&2 "tfswitch not found, not auto-switching."; return 1; }
    tfswitch
  fi
}
add-zsh-hook chpwd load-tfswitch
load-tfswitch
