SHELL := /bin/bash
DOTFILES_DIR := ${HOME}/.dotfiles
SYMLINKS := bashrc vim vimrc tmux.conf

.PHONY: help

default: help

help: ## The help message.
	@printf "Available Targets:\n"
	@printf "$(MAKEFILE_LIST)\n"

setup: symlink

symlink: ## create the symlinks
	for i in $(SYMLINKS); do \
		mv -f ${HOME}/.$$i ${HOME}/._$$i ; \
		ln -s "$(DOTFILES_DIR)/$$i" "${HOME}/.$$i" ; \
	done
