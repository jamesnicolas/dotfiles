SHELL := /bin/bash
DOTFILES_DIR := ${HOME}/.dotfiles

.PHONY: help

default: help

help: ## The help message.
	@printf "Available Targets:\n"
	@printf "$(MAKEFILE_LIST)\n"

setup: vundle symlink

symlink: ## create the symlinks
	ln -s "$(DOTFILES_DIR)/bashrc" "${HOME}/.bashrc"
	ln -s "$(DOTFILES_DIR)/vimrc" "${HOME}/.vimrc"
	ln -s "$(DOTFILES_DIR)/vim" "${HOME}/.vim"
	ln -s "$(DOTFILES_DIR)/tmux.conf" "${HOME}/.tmux.conf"

vundle: ## since vundle uses git to manage the plugins, we can't include them in our repo
	git clone "https://github.com/VundleVim/Vundle.vim.git" "$(DOTFILES_DIR)/vim/bundle/Vundle.vim"
	vim +PluginInstall +qall

tmux: ## set up tmux for the first time
	ln -s "$(DOTFILES_DIR)/tmux.conf" "${HOME}/.tmux.conf"
	ln -s "$(DOTFILES_DIR)/tmux" "${HOME}/.tmux"
	git clone https://github.com/tmux-plugins/tpm "$(DOTFILES_DIR)/tmux/plugins/tpm"
	tmux source "${HOME}/.tmux.conf"
