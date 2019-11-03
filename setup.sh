#!/bin/sh

current_time=$(date "+%Y.%m.%d-%H.%M.%S")

if [ -f ~/.zshrc ]; then
	mv ~/.zshrc ~/.zshrc_backup-$current_time
fi
ln -s ~/.my-linux-config/.zshrc ~/.zshrc

if [ -d ~/.oh-my-zsh ]; then
	mv ~/.oh-my-zsh ~/.oh-my-zsh_backup-$current_time
fi
ln -s ~/.my-linux-config/.oh-my-zsh ~/.oh-my-zsh
