#reload the shell
alias reload='source ~/.zshrc'


xcodebuild() {
    if [[ $(command -v xcpretty) ]]; then
        command xcodebuild "$@" | xcpretty
    else
        command xcodebuild "$@"
    fi
}

show-manifest() {
    command unzip -cq "$@" META-INF/MANIFEST.MF
}

terminate(){
  lsof -P | grep $@ | awk '{print $2}' | xargs kill -15
}

function emu-paste {
    if [[ $@ ]]; then
        userinput="$(sed 's/ /%s/g' <<< $@)"
        adb shell input text "${userinput}";
    else
        pbpaste | sed -e 's/^/\"/;s/$/\"/' | xargs adb shell input text
    fi
}

ecr-latest() {
    aws ecr describe-images --repository-name "$@" --query 'sort_by(imageDetails,& imagePushedAt)[-1].imageTags[0]'
}

alias afk='/System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine'

alias ofd='open_command $PWD'

alias prune-local-gh-branches="git for-each-ref --format '%(refname:short)' refs/heads | grep -v master | xargs git branch -D"

alias aws-whoami="aws sts get-caller-identity"
