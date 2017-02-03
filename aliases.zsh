#reload the shell
alias reload='source ~/.zshrc'

# Doge git
alias such=git
alias very=git
alias wow='git status' 

# spice up the success message of a kitchen converge
# assumes figlet, toilet and ponysay are all installed (via brew)
# assumes local build of toilet  - at least until https://github.com/cacalabs/toilet/pull/3 is included in a release.
kitchen() {
    if [[ $@ == "converge" ]]; then
        command kitchen converge && toilet -d /usr/local/Cellar/figlet/2.2.5/share/figlet/fonts -f starwars y a y ! --rainbow | ponysay
    else
        command kitchen "$@"
    fi
}

show-manifest() {
    command unzip -cq "$@" META-INF/MANIFEST.MF
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

alias afk='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine'

