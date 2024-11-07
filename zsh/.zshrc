# ------------------- System Info -------------------
neofetch

# ------------------- Oh My Zsh Setup -------------------
# export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="robbyrussell"

# ------------------- Plugins -------------------
# plugins=(
#   git
#   zsh-syntax-highlighting
#   zsh-autosuggestions
#   you-should-use
#   zsh-bat
# )
# source $ZSH/oh-my-zsh.sh

# ------------------- User Configuration -------------------
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# ------------------- Zsh History Configuration -------------------
# Save and share history across sessions
HISTFILE="$HOME/.zsh_history"       # Where to save history
HISTSIZE=10000                      # Number of commands to keep in memory
SAVEHIST=10000                      # Number of commands to save to file
setopt inc_append_history           # Save each command as it’s entered
setopt share_history                # Share history across sessions
setopt hist_ignore_dups             # Ignore duplicate commands in history
setopt hist_reduce_blanks           # Remove extra spaces from history

# ------------------- fzf Configuration -------------------
# Source fzf key bindings and completion
if [ -f /usr/share/fzf/key-bindings.zsh ]; then
  source /usr/share/fzf/key-bindings.zsh
fi

if [ -f /usr/share/fzf/completion.zsh ]; then
  source /usr/share/fzf/completion.zsh
fi

# Enable fzf for searching through command history
bindkey '^R' fzf-history-widget

fzf-history-widget() {
  BUFFER=$(history -n 1 | fzf --height 40% --layout=reverse --info=inline --preview 'echo {}' --preview-window=up:1:wrap) && CURSOR=$#BUFFER
  zle redisplay
}
zle -N fzf-history-widget

# ------------------- Navi Configuration -------------------
eval "$(navi widget zsh)"
export NAVI_FINDER="fzf"

# ------------------- Aliases -------------------
alias cfgzsh="nvim ~/.zshrc"
alias synczsh="source ~/.zshrc"
alias arts="php artisan serve"
alias art="php artisan"
alias pri="paru -S"
alias pru="paru -Syu"
alias pci="sudo pacman -S"
alias pcu="sudo pacman -Syu"
alias yi="yay -S"
alias yu="yay -Syu"
alias ls="colorls -a --report --gs"
alias sn="sudo nano"
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'
alias rkde='kquitapp5 plasmashell && kstart5 plasmashell'
alias dmb="delete_merged_branches.sh"

# ------------------- PATHs -------------------
# NVM Initialization
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# Initialize rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="/home/murtaza/.local/share/gem/ruby/3.3.0/bin:$PATH"

# Initialize Rust environment
export PATH="$HOME/.cargo/bin:$PATH"

# -------------------- CUDA --------------------
export PATH=/opt/cuda/bin:$PATH
export LD_LIBRARY_PATH=/opt/cuda/lib64:$LD_LIBRARY_PATH

# ------------------- SNAP ---------------------
export PATH=$PATH:/var/lib/snapd/snap/bin

# ------------------- Starship Setup -------------------
eval "$(starship init zsh)"

# ------------------- Zinit Setup -------------------
# Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions

# ------------------- fzf Configuration -------------------
# Ensure fzf is in your PATH
export PATH="$HOME/.fzf/bin:$PATH"
eval $(thefuck --alias)

# ------------------- custome scripts Configuration -------------------
export PATH="/usr/local/bin:$PATH"
