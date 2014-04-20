set nocompatible
set fileformats=unix,dos,mac
set vb t_vb=
set backspace=indent,eol,start
set nobackup
set writebackup
set history=100
set ignorecase
set smartcase
set wrapscan
set noincsearch
set title
set nonumber
set showcmd
set laststatus=2
set showmatch
set matchtime=2
syntax on
set hlsearch
highlight Comment ctermfg=Grey
set wildmenu
set textwidth=0
set wrap
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/
set statusline=%n\:%y%F\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}%m%r%=<%l/%L:%p%%>
highlight StatusLine   term=NONE cterm=NONE ctermfg=black ctermbg=white
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set noautoindent
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,euc-jp,cp932,iso-2022-jp
set fileencodings+=,ucs-2le,ucs-2
set hidden
set shortmess+=I
set formatoptions-=ro 

map <C-g> :Gtags 
map <C-h> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>

set nocompatible               " be iMproved
filetype off


""if has('vim_starting')
""  set runtimepath+=~/.vim/bundle/neobundle.vim
""  call neobundle#rc(expand('~/.vim/bundle/'))
""endif
""" originalrepos on github
""NeoBundle 'Shougo/neobundle.vim'
""NeoBundle 'Shougo/vimproc'
""NeoBundle 'VimClojure'
""NeoBundle 'Shougo/vimshell'
""NeoBundle 'Shougo/unite.vim'
""NeoBundle 'Shougo/neocomplcache'
""NeoBundle 'jpalardy/vim-slime'
""NeoBundle 'scrooloose/syntastic'
""NeoBundle 'ruby-matchit'
""NeoBundle 'https://bitbucket.org/kovisoft/slimv'

filetype plugin indent on     " required!
filetype indent on
" syntax on

set textwidth=0
if exists('&colorcolumn')
    set colorcolumn=+1
    autocmd FileType c,sh,cpp,perl,vim,ruby,python,haskell,scheme setlocal textwidth=80
endif
autocmd BufWritePre * :%s/\s\+$//e
