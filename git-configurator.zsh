autoload -Uz add-zsh-hook
git-configurator() {
  if [ -d .git ]; then
    remote=`git remote -v | awk '/\(push\)$/ {print $2}'`
    if [[ $remote =~ .*"bremer".* ]]; then
       git config user.email kbbehrens@bremer.com
       git config user.signingkey 084D9EA8FB4C3AF8
       git config commit.gpgsign true
    fi   
  fi
}
add-zsh-hook chpwd git-configurator
git-configurator
