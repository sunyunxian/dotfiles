# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=~/.oh-my-zsh

#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"
zstyle ':omz:update' mode disabled  # disable automatic updates

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 15


host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
export https_proxy="https://$host_ip:7890"
export http_proxy="http://$host_ip:7890"
export all_proxy="socks5://$host_ip:7890"

# alias vim='nvim'
# alias vi='nvim'
alias v='nvim'

# tmux function
tmux_ide() {
    tmux split-window -v -p 30
    tmux split-window -h -p 66
    tmux split-window -h -p 50
}


# Proxy configuration

function get_ip() {
  local PORT=7890
  export winip=$(ip route | grep default | awk '{print $3}')
  export wslip=$(hostname -I | awk '{print $1}')
  export PROXY_SOCKS5="socks5://${winip}:${PORT}"
  export PROXY_HTTP="http://${winip}:${PORT}"
  echo "winip is ${winip}"
  echo "wslip is ${wslip}"
}

function wsl_proxy() {
  get_ip
  export http_proxy="${PROXY_HTTP}"
  export HTTP_PROXY="${PROXY_HTTP}"
  export https_proxy="${PROXY_HTTP}"
  export HTTPS_PROXY="${PROXY_HTTP}"
  export ftp_proxy="${PROXY_HTTP}"
  export FTP_PROXY="${PROXY_HTTP}"
  export rsync_proxy="${PROXY_HTTP}"
  export RSYNC_PROXY="${PROXY_HTTP}"
  export ALL_PROXY="${PROXY_SOCKS5}"
  export all_proxy="${PROXY_SOCKS5}"
}

function un_wsl_proxy() {
  unset http_proxy
  unset HTTP_PROXY
  unset https_proxy
  unset HTTPS_PROXY
  unset ftp_proxy
  unset FTP_PROXY
  unset rsync_proxy
  unset RSYNC_PROXY
  unset ALL_PROXY
  unset all_proxy
  # sudo rm /etc/apt/apt.conf.d/proxy.conf
  git config --global --unset http.https://github.com.proxy

}



# eval "$(/bin/brew shellenv)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


plugins=(git autojump zsh-autosuggestions zsh-syntax-highlighting)

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

source $ZSH/oh-my-zsh.sh


# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi


alias v='nvim'

alias ll='ls -alh'
alias la='ls -A'
alias l='ls -CF'
# add -v will stdout result
alias mkdir='mkdir -v'
alias mv='mv -v'
alias cp='cp -v'
alias rm='rm -v'
alias ln='ln -v'

if [[ -f ~/.alias ]]; then 
    . ~/.alias
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
