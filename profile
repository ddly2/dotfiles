
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias workspace="cd ~/workspace"
alias sp="workspace; cd sp"
alias ad_server="workspace; cd ad_server"
alias mataleon="workspace; cd mataleon_sp"
alias stella="workspace; cd stella"
alias sm_core="workspace; cd sm_core"
alias sm_default="workspace; cd sm_default"
alias console-api="workspace; cd go/src/gitlab.sele.co/polaris/console-api"

alias dotfiles="cd ~/dotfiles"

alias start_sp="sp; rails s"
alias start_sp_sidekiq="sp; rake sidekiq:start"

alias start_response="mataleon; bundle exec shotgun --port=9393 -E development config.ru"
alias start_response_sidekiq="mataleon; bundle exec sidekiq -e development -C ./config/sidekiq.yml -v -r ./app.rb"

alias start_tracker="stella; bundle exec shotgun --port=9494 -E development config.ru"
alias start_tracker_sidekiq="stella; rake sidekiq:start"

alias master="git checkout master"
alias branch="git branch"

alias edit_profile="dotfiles; vim profile"
alias reload_profile="source ~/.profile"
