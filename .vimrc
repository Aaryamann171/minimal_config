" General Settings
set number
set belloff=all
set ignorecase
set smartindent autoindent
set nobackup noundofile noswapfile
set clipboard+=unnamed,unnamedplus
set tabstop=4 shiftwidth=4 expandtab
set termguicolors
set laststatus=0
set autoread
set background=dark
set mouse=a
set wildmenu
set cursorline
set splitbelow splitright " Proper splits behavior

" Plugin Manager (vim-plug)
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'tomasiser/vim-code-dark'
Plug 'nordtheme/vim'
call plug#end()

" Syntax & Colors
syntax on
colorscheme codedark
let g:codedark_modern=1
let g:codedark_transparent=1

" Leader Key
let mapleader=" "
map <Space> <Leader>

" Key Mappings
imap jj <Esc> " jj to escape
map ` <Nop> " Disable backticks

" Copy all lines to clipboard
nnoremap <Leader>ca :%y+<CR>

" Cursor Settings (Block cursor in Normal Mode)
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" Window Management
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>k <C-w>k
nnoremap <Leader>j <C-w>j

nnoremap <C-h> <C-w>H
nnoremap <C-j> <C-w>J
nnoremap <C-k> <C-w>K
nnoremap <C-l> <C-w>L

" Friendly Split Resizing
nnoremap <silent> <C-Left>  :vertical resize +3<CR>
nnoremap <silent> <C-Right> :vertical resize -3<CR>
nnoremap <silent> <C-Up>    :resize +3<CR>
nnoremap <silent> <C-Down>  :resize -3<CR>

" Reopen Last Tab
nnoremap <C-S-T> :vs<bar>:b#<CR>

" Move Visual Selection
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Enable Spellcheck (Toggle)
nnoremap <F5> :setlocal spell! spelllang=en_us<CR>
