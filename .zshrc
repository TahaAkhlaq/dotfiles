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

alias python='python3'
alias clang='clang -std=c17'       # C17
alias clang++='clang++ -std=c++23' # C++23
alias gcc='gcc -std=c17'           # C17
alias g++='g++ -std=c++23'         # C++23


# Custom Commands and Hooks

# Hook direnv into zsh
eval "$(direnv hook zsh)"

# ------------------------------ Additional Configuration ------------------------------
# Add Homebrew's general binaries directory to PATH
export PATH="/opt/homebrew/bin:$PATH"

# Add Homebrew's LLVM tools directory to PATH (if needed)
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

# Add MATLAB to PATH
export PATH="/Applications/MATLAB_R2024b.app/bin:$PATH"

# rbenv setup
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

