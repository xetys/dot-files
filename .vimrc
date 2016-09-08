if has('vim_starting')
	if &compatible
		set nocompatible               " Be iMproved
	endif
endif

call plug#begin('~/.vim/plugged')

Plug 'Shougo/vimproc', { 'do': 'make' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer --tern-completer' }
Plug 'tpope/vim-sensible' "Think of sensible.vim as one step above 'nocompatible'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/syntastic' "must
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'

" Add plugins to &runtimepath
call plug#end()

let mapleader=","
nmap <C-\> :NERDTreeFind<CR>
nmap <silent> <leader><leader> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeWinSize = 40
set rtp+=~/.fzf

" Command-T binding to fzf
"
map <C-p> :FZF<CR>
map <C-t> :FZF<CR>
" Toggle line numbers {{{
nnoremap <silent><Leader>l :call ToggleRelativeAbsoluteNumber()<CR>
function! ToggleRelativeAbsoluteNumber()
if !&number && !&relativenumber
set number
set norelativenumber
elseif &number && !&relativenumber
set nonumber
set relativenumber
elseif !&number && &relativenumber
set number
set relativenumber
elseif &number && &relativenumber
set nonumber
set norelativenumber
endif
endfunction
" }}}
syntax on
filetype plugin indent on

set softtabstop=4 tabstop=4 shiftwidth=4 expandtab
