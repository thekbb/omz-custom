export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export GRADLE_OPTS="-Xms2048m -Xmx4096m"
export PATH=$PATH:~/.rvm/gems/ruby-2.2.1/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/gopath
export PATH=$PATH:$GOPATH/bin
export PATH=$HOME/.fastlane/bin:$PATH

eval "$(thefuck --alias)"

