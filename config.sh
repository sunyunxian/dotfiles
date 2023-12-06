#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$(readlink -f "${0}")")

echo "${SCRIPT_DIR}"

echo "===== git config ====="
GIT_CONFIG_DIR="${SCRIPT_DIR}/git"

cat "${GIT_CONFIG_DIR}"/.gitconfig >"${HOME}"/.gitconfig
cat "${GIT_CONFIG_DIR}"/.gitignore >"${HOME}"/.gitignore
cat "${GIT_CONFIG_DIR}"/.gitignore_personal >"${HOME}"/.gitignore_personal
cat "${GIT_CONFIG_DIR}"/.gitignore_global >"${HOME}"/.gitignore_global
cat "${GIT_CONFIG_DIR}"/.gitconfig.xyz >"${HOME}"/.gitconfig.xyz

echo "===== zsh config ====="

cat "${SCRIPT_DIR}"/.zshrc >"${HOME}"/.zshrc
cat "${SCRIPT_DIR}"/.aliasrc >"${HOME}"/.aliasrc
cat "${SCRIPT_DIR}"/.functionrc >"${HOME}"/.functionrc

echo "===== bash config ====="
cat "${SCRIPT_DIR}"/.bashrc >"${HOME}"/.bashrc
