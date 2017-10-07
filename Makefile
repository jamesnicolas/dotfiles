SHELL := /bin/bash
DOTFILES_DIR := ~/.dotfiles

.PHONY: help

default: help 

help: ## The help message.
	@printf "Available Targets:\n"
	@printf "$(MAKEFILE_LIST)\n"
