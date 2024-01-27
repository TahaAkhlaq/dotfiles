if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#Hook direnv into zsh
eval "$(direnv hook zsh)"
export EDITOR="code --wait"

#Aliases
alias c="clear"
alias cwd="pwd | pbcopy" #copy working directory
alias ppwd="pbpaste" #paste working directory
alias ls="colorls"
alias l="colorls"
alias ll="colorls -l"
alias la="colorls -a"
alias lla="colorls -la"
alias vs="code"

# >>> conda initialize >>>
# Contents within this block are managed by 'conda init'
__conda_setup="$('/Users/taha/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/taha/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/taha/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/taha/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<