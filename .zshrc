# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# brew
path=('/opt/homebrew/bin' $path) && export PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# zsh theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
  git
  autojump
  zsh-autosuggestions
  zsh-history-substring-search
  zsh-syntax-highlighting
  fzf-zsh-plugin
)

source $ZSH/oh-my-zsh.sh
# reload my alias config
[[ -f ~/.aliasrc ]] && source ~/.aliasrc || echo "Not found .aliasrc"

# reload my function config
[[ -f ~/.functionrc ]] && source ~/.functionrc || echo "Not found .functionrc"


# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv > /dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="/opt/homebrew/opt/mysql/bin:$PATH"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh || echo "Not found .fzf.zsh"

# autojump, this autojump by brew installed
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
# set autojump highlight color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=yellow'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/opt/homebrew/sbin:$PATH"
