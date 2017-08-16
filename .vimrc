set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'rails.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'c.vim'
Plugin 'ruby.vim'
Plugin 'gtags.vim'

call vundle#end()            " required
filetype plugin indent on

syntax on

map <C-g> :Gtags 
map <C-h> :Gtags -f %<CR>
map <C-h> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>

if has("autocmd")
  augroup redhat
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  augroup END
endif

set expandtab
set autoindent
set smartindent

augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.c setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

""autocmd BufRead *.tex set tw=80
