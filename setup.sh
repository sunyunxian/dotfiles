#!/bin/bash

set -e

DOTFILES_ARRAY=(
    .tmux.conf
    .zshrc
    .bahrc
    .p10k.zsh
    .config
    .gitconfig
    .gitignore
    .alias
    .function
)

CURRENT_PATH=$(cd "$(dirname "$0")";pwd)

for i in "${DOTFILES_ARRAY[@]}"; do
    if [[ -a "${HOME}/${i}" ]];then
        echo "rm ${HOME}/${i}"
        rm -rf "${HOME}/${i}"
        ln -s "${CURRENT_PATH}/${i}" "${HOME}/${i}"
    else
        ln -s "${CURRENT_PATH}/${i}" "${HOME}/${i}"
    fi
done

