#
# Opens the github page for a repo/branch in your browser.
#
# gh [remote] [branch]
gh() {

  git rev-parse 2>/dev/null

  if [[ $? != 0 ]]
  then
      echo "Not a git repository."
      return 1
  fi

  remote="origin"
  if [ ! -z "$1" ]
  then
      remote="$1"
  fi

  remote_url="remote.${remote}.url"

  giturl=$(git config --get $remote_url)
  if [ -z "$giturl" ]
  then
      echo "$remote_url not set."
      return 1
  fi

  giturl=$(echo "$giturl" | cut -d '@' -f 2)
  #giturl=${giturl/git\@github\.com\:\https://github.com/}
  giturl=${giturl%\.git}
  giturl=$(echo "$giturl" | tr ':' '/')
  giturl="https://$giturl"

  if [ -z "$2" ]
  then
      branch=$(git rev-parse --abbrev-ref HEAD | sed 's/#/%23/' 2>/dev/null)
  else
      branch="$2"
  fi

  if [ ! -z "$branch" ]
  then
      giturl="${giturl}/tree/${branch}"
  fi

  echo "Opening GitURL $giturl"
  open $giturl
  return 0
}
