autoload -Uz add-zsh-hook
set-git-email() {
  if [ -d .git ]; then
    remote=`git remote -v | awk '/\(push\)$/ {print $2}'`
    if [[ $remote == git@code.bremer.com:* ]]; then
       git config user.email kbbehrens@bremer.com
    fi   
  fi
}
add-zsh-hook chpwd set-git-email
set-git-email
