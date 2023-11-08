" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000


" Set no spell checking.
set nospell

" Set line numbering.
set nu
set relativenumber

" Confirm before exiting if there are unsaved changes.
set confirm


set ffs=unix,dos,mac
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom
set fileformats=unix,dos,mac


"   if has('clipboard')
"     if has('unnamedplus')  " When possible use + register for copy-paste
"       set clipboard=unnamed,unnamedplus
"     else         " On mac and Windows, use * register for copy-paste
"       set clipboard=unnamed
"     endif
"   endif

" Do not create backup, and swap files.
set nobackup
set noswapfile
set nowritebackup


" set iskeyword-=_,.,=,-,:,

" Set folding based on indentation.
set foldmethod=indent
set nofoldenable " Do not fold :-)
set foldlevel=1
set foldlevelstart=99

" Set font.
set guifont="JuliaMono Medium:h10"

" Reread a file if it has been changed outside of Vim.
set autoread

" set lazyredraw      " don't update the display while executing macros
" set switchbuf=useopen           " reveal already opened files from the
"                                 " quickfix window instead of opening new
"                                 " buffers
" set wildmenu
" set copyindent
" set wildmode=list:longest,full
" set whichwrap=b,s,h,l,<,>,>h,[,]   " Backspace and cursor keys wrap too

" if !&scrolloff
"     set scrolloff=1           " Minimum lines to keep above and below cursor
"   endif
"   if !&sidescrolloff
"     set scrolloff=5
"   endif

set display+=lastline
set backspace=eol,start,indent

set textwidth=80
let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(120,999),",")
set colorcolumn=+1
set autoindent
set smartindent
set smarttab
set ruler

if has("gui_macvim")
  set fuoptions=maxvert,maxhorz
endif

" Highlight the current line.
set cursorline

" Change to the dir of the current file.
set autochdir

" Always show statusline.
set laststatus=2

" Always show tabline.
set showtabline=2

" 
set hidden

"
set noerrorbells novisualbell t_vb=

" Set autosaving.
set autowrite
set autowriteall

set statusline+=%*
set statusline+=%#warningmsg#
set shortmess+=filmnrxoOtT          " Abbrev. of messages (avoids 'hit enter')

set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set virtualedit=onemore " used with caution of breaking plugins
set completeopt=menuone,menu,preview,longest

set t_Co=256
set nomodeline

" allow mouse select and etc operation
set mouse=a

" no annoying sound on errors
set timeoutlen=500
set formatoptions+=t

" set formatoptions-=l " wrap long lines
" set wrapmargin=2 " 2 chars wrap margin from the right window border, hard wrap
set list
set lcs+=space:·
set guioptions=e "only show guitablabel
highlight CursorLine term=reverse

"
" Plugins
"
call plug#begin()
  Plug 'joshdick/onedark.vim'
  Plug 'dense-analysis/ale'
  Plug 'ervandew/supertab'
  Plug 'styled-components/vim-styled-components'
  Plug 'vim-airline/vim-airline'
call plug#end()

let g:airline_powerline_fonts = 1

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" file-name.ext
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

"
" Colorscheme
"
syntax on
colorscheme onedark

let g:airline_theme='onedark'