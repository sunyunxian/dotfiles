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
