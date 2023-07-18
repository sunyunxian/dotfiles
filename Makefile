SHELL := /usr/bin/env bash

MKFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
MKFILE_DIR := $(dir $(MKFILE_PATH))

.PHONY: config_vim config_zsh \
				config_aliasrc config_functionrc config_gitconfig

all: config_vim config_zsh \
				config_aliasrc config_functionrc config_gitconfig

config_vim:
	@echo "Config vimrc"
	echo ${MKFILE_DIR}
	ln -sf ${MKFILE_DIR}.vimrc  ${HOME}/.vimrc
	ln -sf ${MKFILE_DIR}.vim  ${HOME}/.vim

config_zsh:
	@echo "Config zshrc"
	echo ${MKFILE_DIR}
	ln -sf ${MKFILE_DIR}.zshrc  ${HOME}/.zshrc

config_aliasrc:
	@echo "Config aliasrc"
	echo ${MKFILE_DIR}
	ln -sf ${MKFILE_DIR}.aliasrc  ${HOME}/.aliasrc

config_functionrc:
	@echo "Config functionrc"
	echo ${MKFILE_DIR}
	ln -sf ${MKFILE_DIR}.functionrc ${HOME}/.functionrc

git_config:
	@echo "Config gitconfig"
	echo ${MKFILE_DIR}
	ln -sf ${MKFILE_DIR}git/.gitconfig ${HOME}/.gitconfig
	ln -sf ${MKFILE_DIR}git/.gitignore.home ${HOME}/.gitignore
	ln -sf ${MKFILE_DIR}git/.gitignore_global ${HOME}/.gitignore_global
	ln -sf ${MKFILE_DIR}git/.gitconfig.xyz ${HOME}/.gitconfig.xyz
