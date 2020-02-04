#reload the shell
alias reload='source ~/.zshrc'

# Doge git
alias such=git
alias very=git
alias wow='git status' 

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
        pbpaste | xargs adb shell input text
    fi
}

alias afk='/System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine'

alias ofd='open_command $PWD'
