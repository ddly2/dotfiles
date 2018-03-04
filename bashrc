
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# link from dotfiles
ln_dotfile() {
	ln -s ~/dotfiles/$1 ~/.$1 
}

# create new branch
nbr() {
	git checkout -b $1
}

# clone new repo from SM gitlab
clone_sm_repo() {
	echo "git@$SM_GIT_ADDR:$1.git"
	git clone git@$SM_GIT_ADDR:$1.git
}

# run go-swagger on console-api
console-swagger() {
	console-api && swagger generate spec -m -b ./cmd/console_server/ -o swagger.json
}

# get ip of ec2 instance
staging_ip() {
  case $1 in
  api)
    v='staging-api-asg'
    ;;
  cms)
    v='staging-CMS-asg'
    ;;
  tracker)
    v='staging-tracker-sp-asg'
    ;;
  rewarding)
    v='staging-rewarding-v5-asg'
    ;;
  *)
    echo "$1 is invalid staging instance name"
    return 1
  ;;
  esac

  aws ec2 describe-instances \
    --query "Reservations[*].Instances[?Tags[?Key=='Name' && Value=='$v']].[ NetworkInterfaces[*].PrivateIpAddress]" \
    --output text
}

# looking for certain version commit
brew_commit() {
	cd "$(brew --repo homebrew/core)" &&
	git log Formula/$1.rb
}
