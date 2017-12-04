SHELL := /bin/bash
DOTFILES_DIR := ${HOME}/.dotfiles

.PHONY: help

default: help

help: ## The help message.
	@printf "Available Targets:\n"
	@printf "$(MAKEFILE_LIST)\n"

setup: symlink

symlink: ## create the symlinks
ifeq ("",$(wildcard ${HOME}/.bashrc))
	ln -s "$(DOTFILES_DIR)/bashrc" "${HOME}/.bashrc"
else
	mv ${HOME}/.bashrc ${HOME}/._bashrc
	ln -s "$(DOTFILES_DIR)/bashrc" "${HOME}/.bashrc"
endif
