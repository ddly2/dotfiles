
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# link from dotfiles
ln_dotfile() {
	ln -s ~/dotfiles/$1 ~/.$1 
}

# create new branch
nbr() {
	git checkout -b $1
}

