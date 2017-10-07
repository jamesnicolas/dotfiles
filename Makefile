SHELL := /bin/bash
DOTFILES_DIR := ${HOME}/.dotfiles

.PHONY: help

default: help 

help: ## The help message.
	@printf "Available Targets:\n"
	@printf "$(MAKEFILE_LIST)\n"

symlink: ## create the symlinks
	ln -s "$(DOTFILES_DIR)/bashrc" "${HOME}/.bashrc"
	ln -s "$(DOTFILES_DIR)/vimrc" "${HOME}/.vimrc"
