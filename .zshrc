# editor alias
alias vi=vim

# set vim as editor
export VISUAL=vim
export EDITOR=vim

# .zshrc
fpath+=($HOME/.zsh/pure)

# pure prompt - https://github.com/sindresorhus/pure
autoload -U promptinit; promptinit
prompt pure

# highlights dirs during tab completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# qol
alias python=python3
alias ls='ls --color'
alias mv="mv -iv"
alias cp="cp -riv"
alias mkdir="mkdir -vp"
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# history settings
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt appendhistory
setopt hist_reduce_blanks
