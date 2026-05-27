# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/cachyos-zsh-config/cachyos-config.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(zoxide init zsh)"

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias tmux='tmux -u'
alias tk='pkill -f tmux'
alias open='xdg-open 2> /dev/null'
alias ff='fastfetch'

export PATH="$PATH:/home/oreo/scripts"

alias ls='eza --icons=always'
alias update='yay -Syu'

# Get fastest mirrors
alias mirror="sudo cachyos-rate-mirrors"

alias cat='bat'

export BAT_THEME="Visual Studio Dark+"

# tmux shorthands
alias ta="tmux attach -t"
alias tn="tmux new -s"
alias tl="tmux ls"
alias tks="tmux kill-server"

# Git - The "Lazy" but effective set
alias g="git"
alias gpl="git pull"
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gl="git log --oneline --graph --decorate"

# Create a dir and move into it immediately
mkd() { mkdir -p "$1" && cd "$1"; }

alias rm="rm -v"
alias cp="cp -v"
alias mv="mv -v"

# Search history instantly
alias hg="history | grep"

# IP addresses
alias myip="curl ifconfig.me"
alias localip="ip route get 1.2.3.4 | awk '{print \$7}'"

export COLORTERM=truecolor

# Create and move into directory
mkd() {
    mkdir -p "$1"
    cd "$1"
}

alias squarify='f() { magick "$1" -gravity center -background white -extent 1:1 "${1%.*}_square.${1##*.}"; }; f'

