#!/bin/bash

set -e

DOTFILES_ARRAY=(
    .tmux.conf
    .zshrc
    .bahrc
    .p10k.zsh
    # .config
    .gitconfig
    .gitignore
    .aliasrc
    .functionrc
)

CURRENT_PATH=$(cd "$(dirname "$0")";pwd)

for i in "${DOTFILES_ARRAY[@]}"; do
    if [[ -a "${HOME}/${i}" ]];then
        echo "rm ${HOME}/${i}"
        rm -rf "${HOME}/${i}"
        cat "${CURRENT_PATH}/${i}" > "${HOME}/${i}"
    else
        cat "${CURRENT_PATH}/${i}" > "${HOME}/${i}"
    fi
done

