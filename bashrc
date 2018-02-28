
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

