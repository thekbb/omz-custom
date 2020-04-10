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

canadian-sort() {
    if [[ $@ ]]; then
        echo "sorting file $@, eh"
        gshuf "$@"
    else
        echo "sorting clipboard, eh."
        pbpaste | gshuf | pbcopy
    fi
}

function emu-paste {
    if [[ $@ ]]; then
        userinput="$(sed 's/ /%s/g' <<< $@)"
        adb shell input text "${userinput}";
    else
        pbpaste | sed -e 's/^/\"/;s/$/\"/' | xargs adb shell input text
    fi
}

alias afk='/System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine'

alias ofd='open_command $PWD'

alias prune-local-gh-branches='git for-each-ref --format '%(refname:short)' refs/heads | grep -v master | xargs git branch -D'
