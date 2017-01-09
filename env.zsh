export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export GRADLE_OPTS="-Xms2048m -Xmx4096m"

set-openstack_rhel () {
  git -C ~/.kitchen/cli_env_dev pull
  source ~/.kitchen/cli_env_dev/clean_vagrant.env
  source ~/.kitchen/<tenant>-openrc.sh
  source ~/.kitchen/<tenant>-network.sh
  source ~/.kitchen/cli_env_dev/openstack_rhel.env
}

set-vagrant_rhel () {
  git -C ~/.kitchen/cli_env_dev pull
  source ~/.kitchen/cli_env_dev/clean_openstack.env
  source ~/.kitchen/cli_env_dev/vagrant_rhel.env
}

eval "$(thefuck --alias)"
export PATH=$PATH:/Users/z013w36/.rvm/gems/ruby-2.2.1/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/gopath
export PATH=$PATH:$GOPATH/bin
