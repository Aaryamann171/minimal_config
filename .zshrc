# Disable system beep
unsetopt BEEP

# Set vim as editor
export VISUAL=vim
export EDITOR=vim

# Prompt
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

# History management
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_all_dups
setopt share_history
setopt append_history
setopt hist_reduce_blanks
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_save_no_dups

# Completion system
autoload -Uz compinit
compinit -C
zstyle :autocomplete:tab: widget-style autosuggest-accept
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' menu select=2
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' verbose true
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Quality of Life Aliases
alias v="vim"
alias python="python3"
alias mv="mv -iv"
alias cp="cp -riv"
alias mkdir="mkdir -vp"
alias ls="eza --icons --group-directories-first"
alias t="tmux attach || tmux new-session"
alias ta="tmux attach -t"
alias tn="tmux new-session"
alias tl="tmux list-sessions"
alias cat="bat"
alias wifi='echo "Mojo Dojo Casa House Network" | pbcopy && echo "copied to clipboard"'
alias downloads="cd ~/Downloads"

# Custom Navigation
alias lc="cd ~/code/compe/leetcode/misc"
alias lt="cd ~/code/compe/leetcode/misc"
alias dsa="cd ~/code/fun/python"

# Git Aliases
alias g="git"
alias ga="git add"
alias gc="git commit -v"
alias gca="git commit -v --amend"
alias gcl="git clone"
alias gd="git diff"
alias gf="git fetch"
alias gl="git pull"
alias gp="git push"

# Misc Aliases
alias seer="fortune | cowsay | lolcat"
alias grep="grep -i"
alias llm="ollama run llama3.2"

# Ctrl + Arrow to skip words
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

# BMI Calculator
alias bmi="~/code/scripts/bmi.sh"

# Load Docker & GHCup if available
[ -f "$HOME/.docker/init-zsh.sh" ] && source "$HOME/.docker/init-zsh.sh"
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env"

# Export Paths
export BAT_THEME="Visual Studio Dark+"
export GOPATH="$HOME/code/fun/go"

# Speed up loading by precompiling .zshrc
if [[ ! -f ~/.zshrc.zwc || ~/.zshrc -nt ~/.zshrc.zwc ]]; then
  zcompile ~/.zshrc
fi
