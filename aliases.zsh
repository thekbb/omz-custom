alias afk='/System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine'
alias ofd='open_command $PWD'
# Reload the shell
alias reload='source ~/.zshrc'
alias aws-whoami="aws sts get-caller-identity"

# Paste AWS creds into shell _WITHOUT_ showing them on screen or putting them in shell history.
aws-login-clipboard() {
    CLIPBOARD=$(pbpaste)
    if  [[ ! $CLIPBOARD =~ 'AWS_' ]]
    then
        echo "clipboard doesn't have aws creds" && return 1
    fi
    echo $CLIPBOARD | source /dev/stdin
    unset CLIPBOARD
    aws-whoami
    echo "junk" | pbcopy
}

aws-role-by-id() {
    aws iam list-roles | jq '.Roles[] | select(.RoleId == '\"$1\"')'
}

ecr-latest() {
    aws ecr describe-images \
        --repository-name "$@" \
        --query 'sort_by(imageDetails,& imagePushedAt)[-1].imageTags[0]' \
        | sed -e 's/^"//' -e 's/"$//'
}

piplogin () {
    export CODEARTIFACT_AUTH_TOKEN=$(aws codeartifact get-authorization-token --domain beacon-domain --domain-owner 807759772659 --query authorizationToken --output text)
    export PIPENV_PYPI_MIRROR="https://aws:$CODEARTIFACT_AUTH_TOKEN@beacon-domain-807759772659.d.codeartifact.us-east-2.amazonaws.com/pypi/beacon-python/simple/"
    pip3 config set global.index-url "https://aws:$CODEARTIFACT_AUTH_TOKEN@beacon-domain-807759772659.d.codeartifact.us-east-2.amazonaws.com/pypi/beacon-python/simple/"
}

prune-gh-branches() {
    git fetch --prune origin
    DEFAULT_BRANCH=$(git remote show origin | grep "HEAD branch" | sed 's/.* //')
    git for-each-ref --format '%(refname:short)' refs/heads | grep -E -v "(^\*|$DEFAULT_BRANCH)" | xargs git branch -D
}

show-manifest() {
    command unzip -cq "$@" META-INF/MANIFEST.MF
}

sort-clipboard() {
    pbpaste | sort1
}

terminate(){
    lsof -P | grep $@ | awk '{print $2}' | xargs kill -15
}

was-james-here() {
    [ $(dos2unix --quiet --safe --info=d * | grep -iE "\s[1-9]" | wc -l) -eq 0 ] || echo "FUCKING JAMES"
}
