echo "load .zshrc"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# zsh theme
ZSH_THEME="steeef"

# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
    git
    cp
    autojump
    colored-man-pages
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-history-substring-search
    fzf-tab
)

source $ZSH/oh-my-zsh.sh
# reload my alias config
[[ -f ~/.aliasrc ]] && source ~/.aliasrc || echo "Not found .aliasrc"

# reload my function config
[[ -f ~/.functionrc ]] && source ~/.functionrc || echo "Not found .functionrc"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="/opt/homebrew/opt/mysql/bin:$PATH"

# set autojump highlight color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=yellow'

export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias git='LANG=en_GB git'
