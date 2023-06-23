# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Add local zshrc
[[ -s "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local" 

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_AUTO_UPDATE="true"

plugins=(git fzf z git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

if [ -x "$(command -v exa)" ]; then
    alias ls='exa --colour=always --long --tree --level=1'
    alias le='exa --colour=always --long --tree --level=2'
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
