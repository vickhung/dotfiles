#! /bin/bash

## functions: ##

function ask() {
	read -p "$1 (Y/n): " response 
	[ -z "$response" ] || [ "$response" = "y" ] || [ "$response" = "Y" ];
}

# check for the files in the shell folder, and add them to the bashrc file.
# will add things such as git_aliases in this folder in the future.
#for file in shell/*
#do
#	fullpath=$(realpath $file)
#	if ask "Source ${file}? "; then 
#		echo "source $fullpath" >> ~/.bashrc
#	fi
#done	

# check for ssh aliases
if ask "Create & source ssh_aliases?"; then
	if [ ! -f ~/.ssh_aliases ]; then 
		touch ~/.ssh_aliases # creating ssh_aliases
	fi
	echo "source ~/.ssh_aliases" >> ~/.bashrc
fi

for file in ".bashrc" ".bash_aliases" ".vimrc"; do             #".tmux.conf"; do
	if ask "Install ${file}?"; then 
		ln -sf "$(realpath "$file")" ~/${file}
	fi
done
