" Disable compatibility with vi which can cause unexpected issues."
set nocompatible

" Enable line number"
set number

"Enable mouse"
set mouse=a

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype off

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

"colorscheme setting"
:colorscheme ron
:syntax enable

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugins:"
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'morhetz/gruvbox'
"Plugin 'ThePrimeagen/vim-be-good'"

call vundle#end()
filetype plugin indent on

"NERDTree shortcuts"
nnoremap <C-n> : NERDTree<CR>
nnoremap <C-t> : NERDTreeToggle<CR>
nnoremap <C-f> : NERDTreeFind<CR>
nnoremap <leader>nt :NERDTreeClose<CR>
"gruvbox config"

:colorscheme gruvbox
let g:gruvbox_contrast_dark 
set background=dark
