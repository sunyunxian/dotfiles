#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$(readlink -f "${0}")")

function overwrite_dotfile() {
    # parameter
    # $1 overwrite file
    # $2 overwrited file

    [[ "${1}" == "" || "${2}" == "" ]] && echo "Argument error" && exit 1
    local overwrite_file="${1}"
    local overwrited_file="${2}"

    if [[ ! -f "${overwrited_file}" ]]; then
        echo "${overwrited_file} not exist" && touch "${overwrited_file}"
    fi
    cat "${overwrite_file}" >"${overwrited_file}"
}

echo "${SCRIPT_DIR}"

echo "===== git config ====="
GIT_CONFIG_DIR="${SCRIPT_DIR}/git"

cat "${GIT_CONFIG_DIR}"/.gitconfig >"${HOME}"/.gitconfig
cat "${GIT_CONFIG_DIR}"/.gitignore >"${HOME}"/.gitignore
cat "${GIT_CONFIG_DIR}"/.global.gitignore >"${HOME}"/.global.gitignore
cat "${GIT_CONFIG_DIR}"/.xyz.gitconfig >"${HOME}"/.xyz.gitconfig

echo "===== zsh config ====="

cat "${SCRIPT_DIR}"/.bash_profile >"${HOME}"/.bash_profile
cat "${SCRIPT_DIR}"/.zshenv >"${HOME}"/.zshenv
cat "${SCRIPT_DIR}"/.zprofile >"${HOME}"/.zprofile
cat "${SCRIPT_DIR}"/.zshrc >"${HOME}"/.zshrc
cat "${SCRIPT_DIR}"/.zlogin >"${HOME}"/.zlogin
cat "${SCRIPT_DIR}"/.aliasrc >"${HOME}"/.aliasrc
cat "${SCRIPT_DIR}"/.functionrc >"${HOME}"/.functionrc

echo "===== bash config ====="
cat "${SCRIPT_DIR}"/.bashrc >"${HOME}"/.bashrc

echo "===== vim config ====="

overwrite_dotfile "${SCRIPT_DIR}/.vimrc" "${HOME}/.vimrc"
overwrite_dotfile "${SCRIPT_DIR}/.vscode.vimrc" "${HOME}/.vscode.vimrc"

rm -rf "${HOME}/.vim/" && cp -r .vim "${HOME}/.vim"

echo "===== neovim config ====="
rm -rf "${HOME}/.config/nvim" && cp -r .config/nvim "${HOME}/.config/nvim"
