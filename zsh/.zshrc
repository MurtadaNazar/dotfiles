# ------------------- System Info -------------------
neofetch

# ------------------- Oh My Zsh Setup -------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# ------------------- Plugins -------------------
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  you-should-use
  zsh-bat
)
source $ZSH/oh-my-zsh.sh

# ------------------- User Configuration -------------------
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# ------------------- fzf Configuration -------------------
source <(fzf --zsh)

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
alias ls="colorls -a --report  --gs"
alias sn="sudo nano"
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'
alias rkde='kquitapp5 plasmashell && kstart5 plasmashell'
alias dmb="delete_merged_branches"

# ------------------- PATHs -------------------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH="/home/murtaza/.local/share/gem/ruby/3.2.0/bin:$PATH"

# -------------------- CUDA --------------------
export PATH=/opt/cuda/bin:$PATH
export LD_LIBRARY_PATH=/opt/cuda/lib64:$LD_LIBRARY_PATH

# ------------------- SNAP ---------------------
export PATH=$PATH:/var/lib/snapd/snap/bin
