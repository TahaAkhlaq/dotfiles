# ------------------------------ Powerlevel10k Instant Prompt ------------------------------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ------------------------------Environment Configuration------------------------------
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="code --wait"

# Nix Package Manager setup
if [[ -s "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh" ]]; then
  source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
fi

# ------------------------------ Oh My Zsh Configuration ------------------------------
ZSH_THEME="powerlevel10k/powerlevel10k"

# ------------------------------ Plugins ------------------------------
plugins=(
  git
  vscode
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-history-substring-search
)

source $ZSH/oh-my-zsh.sh

# ------------------------------ Powerlevel10k Configuration ------------------------------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ------------------------------ Aliases------------------------------
alias c="clear"
alias cwd="pwd | pbcopy" # Copy working directory to clipboard.
alias ppwd="pbpaste"    # Paste working directory from clipboard.
alias ls="colorls"
alias l="colorls"
alias ll="colorls -l"
alias la="colorls -a"
alias lla="colorls -la"
alias vs="code"
alias grep="rg"
alias find="fd"
alias cat="bat"

# Custom Commands and Hooks

# Hook direnv into zsh
eval "$(direnv hook zsh)"

# ------------------------------ Additional Configuration ------------------------------