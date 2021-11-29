#!/bin/bash

CURRENT_PATH=$(cd $(dirname ${0}); pwd) && cd ${current_path} || exit 0
CONFIG_FILES=(.vimrc .zshrc .bashrc .common_alias)

for i in ${CONFIG_FILES[@]}; do
    if [[ -f ~/${i} ]]; then
        echo "${i} exist"
        rm -rf ~/${i}
    else
        echo "${i} not exist"
    fi
    ln -s ${CURRENT_PATH}/${i} ~/${i}
done
