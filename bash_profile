# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# Load bash.rc
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export HOMEBREW_LN_PATH="/usr/local/opt"

export PATH="$PATH:$HOMEBREW_LN_PATH/qt@5.5/bin"
export PATH="$PATH:$HOMEBREW_LN_PATH/postgresql@9.4/bin"
export PATH="$PATH:$HOMEBREW_LN_PATH/redis@2.8/bin"
export PATH="$PATH:$HOMEBREW_LN_PATH/mysql@5.5/bin"
export PATH="$PATH:$HOMEBREW_LN_PATH/memcached/bin"
export PATH="$PATH:$HOMEBREW_LN_PATH/elasticsearch@5.6/bin"
export PATH="$PATH:$HOMEBREW_LN_PATH/gpg2/bin"

export JAVA_HOME="$(/usr/libexec/java_home)"
export PATH="$PATH:$JAVA_HOME/bin"

export HADOOP_HOME="$HOMEBREW_LN_PATH/hadoop"
export PATH="$PATH:$HADOOP_HOME/bin"

export HIVE_HOME="$HOMEBREW_LN_PATH/hive"
export PATH="$PATH:$HIVE_HOME/bin"

export VIM_RUNTIME_PATH="$HOMEBREW_LN_PATH/vim@8.0/share/vim/vim80/"

export GOROOT="$HOMEBREW_LN_PATH/go/libexec"
export PATH="$PATH:$GOROOT/bin"

export GOPATH="$HOME/workspace/go"
export PATH="$PATH:$GOPATH/bin"

if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi
