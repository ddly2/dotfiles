# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# Load bash.rc
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export HOMEBREW_PATH="/usr/local/Cellar"

export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:$HOMEBREW_PATH/postgresql@9.4/bin"
export PATH="$PATH:$HOMEBREW_PATH/redis@2.8/bin"
export PATH="$PATH:$HOMEBREW_PATH/mysql@5.5/bin"
export PATH="$PATH:$HOMEBREW_PATH/memcached/bin"
export PATH="$PATH:$HOMEBREW_PATH/qt@5.5/bin"
export PATH="$PATH:$HOMEBREW_PATH/elasticsearch@5.6/bin"

export JAVA_HOME="$(/usr/libexec/java_home)"
export PATH="$PATH:$JAVA_HOME/bin"

export HADOOP_HOME="$HOMEBREW_PATH/hadoop/2.8.1"
export PATH="$PATH:$HADOOP_HOME/bin"

export HIVE_HOME="$HOMEBREW_PATH/hive/2.1.1"
export PATH="$PATH:$HIVE_HOME/bin"

export VIM_RUNTIME_PATH="$HOMEBREW_PATH/vim/8.0.1350/share/vim/vim80/"

export GOROOT="$HOMEBREW_PATH/go/1.9.3/libexec"
export PATH="$PATH:$GOROOT/bin"

export GOPATH="$HOME/workspace/go"
export GOPATH="$GOPATH:$HOME/workspace/console-api"

if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi
