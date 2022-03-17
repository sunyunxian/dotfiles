#!/bin/bash

set -e

CURRENT_PATH=$(cd "$(dirname "$0")";pwd)

for i in ${HOME}/.zshrc; do
  if [[ -a i ]];then
    rm -rf i
    ln -s ${CURRENT_PATH} i
  fi
done

