# brew
path=('/opt/homebrew/bin' $path) && export PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# zsh theme

# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
  git
  autojump
  zsh-autosuggestions
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh


# reload my alias config
[[ -f ~/.aliasrc ]] && source ~/.aliasrc || echo "Not found .aliasrc"

# reload my function config
[[ -f ~/.functionrc ]] && source ~/.functionrc || echo "Not found .functionrc"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv > /dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="/opt/homebrew/opt/mysql/bin:$PATH"
# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh || echo "Not found .fzf.zsh"
# autojump, this autojump by brew installed
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

eval "$(starship init zsh)"
