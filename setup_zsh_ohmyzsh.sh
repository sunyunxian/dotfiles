#!/bin/bash

# Check zsh
if [[ $(which zsh) == "/usr/bin/zsh" ]] || [[ $(which zsh) == "/bin/zsh" ]]; then
    echo "zsh installed"
else
    echo "zsh not installed"
    OS=$(uname -s)
    if [[ ${OS} == "Linux" ]]; then
        echo "OS is Linux"
        distribution=$(cat /etc/os-release | grep ^NAME | awk -F "=" '{print $2}' | awk -F "\"" '{print $2}') 
        echo "Linux distribution is ${distribution}"
        if [[ ${distribution} == "Ubuntu" ]]; then
            apt install zsh
            chsh -s $(which zsh)
        fi
    elif [[ ${OS} == "Darwin" ]]; then
        echo "OS is Mac"
        # brew install zsh
        # chsh -s /bin/zsh
    else
        echo "Not Linux and Mac" && exit 1
    fi
fi

# Check oh-my-zsh
if [[ -n $(ls -al ~ | grep \\.oh-my-zsh) ]]; then
    echo ".oh-my-zsh installed" && exit 1
else
    echo "Start install oh-my-zsh"
    sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
