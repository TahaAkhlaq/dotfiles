#ZSH & Powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
source $ZSH/oh-my-zsh.sh 
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#Plugins
plugins=(
    git
    vscode
    zsh-autosuggestions
    zsh-syntax-highlighting
)

#Hook direnv into zsh
eval "$(direnv hook zsh)"
export EDITOR="code --wait"

#Nix
source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh

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
alias grep="rg"
alias find="fd"
alias cat="bat"