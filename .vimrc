set number
set belloff=all
set noruler
set ignorecase
set autoindent smartindent
set nobackup noundofile noswapfile
set clipboard^=unnamed,unnamedplus
set tabstop=4 shiftwidth=4 expandtab
setf dosini
set t_Co=256
set t_ut=
set termguicolors
set laststatus=0
set autoread
set background=dark
set mouse=a
set wildmenu
set cursorline

" plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'tomasiser/vim-code-dark'
call plug#end()

" colorscheme
let g:codedark_modern=1
let g:codedark_transparent=1
colorscheme codedark

" map jj to esc 
imap jj <esc>

" disable `
map ` <Nop>

" maps leader to SPACE
map <Space> <Leader>

" change cursor to block in normal mode
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" copy all lines to the clipboard
map <silent> <Leader>ca :%y<CR>

" splits properly
set splitbelow
set splitright

" friendly split resize
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" remap splits navigation to just leader + hjkl
noremap <leader>h <C-w>h
noremap <leader>l <C-w>l
noremap <leader>k <C-w>k
noremap <leader>j <C-w>j

" changing split orientation
nnoremap <C-h> <C-w>H
nnoremap <C-j> <C-w>J
nnoremap <C-k> <C-w>K
nnoremap <C-l> <C-w>L

" reopen last tab
nmap <c-s-t> :vs<bar>:b#<CR>

" Move visual selection
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" enable spellcheck
map <F5> :setlocal spell! spelllang=en_us<CR>
