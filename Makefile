SHELL := /usr/bin/env bash

MKFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
MKFILE_DIR := $(dir $(MKFILE_PATH))

config_vim:
	@echo "Config vimrc"
	echo ${MKFILE_DIR}
	rm -rf ${HOME}/.vimrc
	cat ${MKFILE_DIR}/.vimrc > ${HOME}/.vimrc

# set -e

# DOTFILES_ARRAY=(
    # .tmux.conf
    # .zshrc
    # .bahrc
    # .p10k.zsh
    # # .config
    # .gitconfig
    # .gitignore
    # .aliasrc
    # .functionrc
# )


# for i in "${DOTFILES_ARRAY[@]}"; do
    # if [[ -a "${HOME}/${i}" ]];then
        # echo "rm ${HOME}/${i}"
        # rm -rf "${HOME}/${i}"
        # cat "${CURRENT_PATH}/${i}" > "${HOME}/${i}"
    # else
        # cat "${CURRENT_PATH}/${i}" > "${HOME}/${i}"
    # fi
# done

