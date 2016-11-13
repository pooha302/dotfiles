#!/bin/bash

dotfiles_dir=$(dirname $(readlink -f "$0"))
[ $? -ne 0 ] && dotfiles_dir=~/dotfiles
backup_dir=~/dotfiles_bak

function backup_exist() {
	local target=$1
	local destination=$2

	if [[ -d "${target}" ]]; then
		mkdir -p $backup_dir
		echo "[backup exist directory] move ${target} to ${destination}"
		mv ${target} ${destination}	
	fi

	if [[ -f "${target}" ]]; then
		mkdir -p $backup_dir
		echo "[backup exist directory] move ${target} to ${destination}"
		mv ${target} ${destination}	
	fi
}

function create_symbolic_link() {
	local target=$1
	local symlink=$2

	echo "[create symbolic link] ${symlink} -> ${target}"
	ln -s ${target} ${symlink}

}

function install_vim() {
	backup_exist ~/.vimrc $backup_dir/vimrc
	backup_exist ~/.vim $backup_dir/vim

	create_symbolic_link $dotfiles_dir/vim ~/.vim
	create_symbolic_link $dotfiles_dir/vim/vimrc ~/.vimrc
}

function install_zsh() {
	backup_exist ~/.zshrc $backup_dir/zshrc
	backup_exist ~/.zsh $backup_dir/zsh
	backup_exist ~/.oh-my-zsh $backup_dir/oh-my-zsh

	create_symbolic_link $dotfiles_dir/zsh ~/.zsh
	create_symbolic_link $dotfiles_dir/zsh/zshrc ~/.zshrc
	create_symbolic_link $dotfiles_dir/zsh/oh-my-zsh ~/.oh-my-zsh

	echo "cp oh-my-zsh plugins" cp -R $dotfiles_dir/zsh/oh-my-zsh-plugins/* ~/.oh-my-zsh/custom/plugins/

	if [ -z "$(which fasd)" ]; then
		local current_dir=$(echo "$PWD")
		echo "make install fasd"
		cd $dotfiles_dir/zsh/fasd
		sudo make install
		cd $current_dir
	fi
}

case "${1:-''}" in
	'vim')
		install_vim
		;;
	'zsh')
		install_zsh
		;;
	'all')
		install_vim
		install_zsh
		;;
	*)
		echo "Usage: $0 (vim|zsh|all)"
		exit 1
		;;
esac

exit 0
