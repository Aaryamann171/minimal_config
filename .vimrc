" qol settings
set belloff=all
set number
set noruler
set autoindent
set nobackup noundofile noswapfile
set clipboard^=unnamed,unnamedplus
set tabstop=4 shiftwidth=4 smarttab
filetype plugin indent on

" mappings
imap jj <esc>
map ` <Nop>

" colors
syntax enable
colorscheme delek
set background=dark
highlight Comment ctermfg=green
highlight LineNr ctermfg=grey
