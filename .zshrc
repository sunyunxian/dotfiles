echo "load .zshrc"

###########################
# oh-my-zsh Main settings #
###########################

# Path to your oh-my-zsh installation. (Required)
export ZSH="$HOME/.oh-my-zsh"

# Theme (optional)
ZSH_THEME="steeef"

# Plugins (optional)
plugins=(
    # buildin plugins in .oh-my-zsh/plugins
    git
    tmux
    colored-man-pages
    # custom plugins in .oh-my-zsh/custom/plugins
    z.lua
    git-open
    zsh-syntax-highlighting
    zsh-autosuggestions
)

# Plugins setting
# set autojump highlight color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=yellow"

# Path for completion cache file. (optional)
ZSH_COMPDUMP="$ZSH_CACHE_DIR/.zcompdump"

# Other optional variable
# ZSH_CUSTOM
# ZSH_CACHE_DIR

source $ZSH/oh-my-zsh.sh

# reload my alias and function config
[[ -f ~/.aliasrc ]] && source ~/.aliasrc || echo "Not found .aliasrc"
[[ -f ~/.functionrc ]] && source ~/.functionrc || echo "Not found .functionrc"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"

export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# fzf key bindings
brew_fzf_key_bindings="$(brew --prefix)/opt/fzf/shell/key-bindings.zsh"
source "${brew_fzf_key_bindings}"

alias git="LANG=en_GB git"
export PATH="/opt/homebrew/bin:$PATH"
