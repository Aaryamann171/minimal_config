set belloff=all
set number
set noruler
set autoindent
filetype plugin indent on
set nobackup noundofile noswapfile
set clipboard^=unnamed,unnamedplus
set tabstop=4 shiftwidth=4 smarttab
set background=dark
syntax enable
imap jj <esc>
map ` <Nop>

let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
	    augroup WSLYank
			        autocmd!
					        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
							    augroup END
							endif
