set nospell
set nu
set relativenumber
set ffs=unix,dos,mac
set hlsearch
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom
set fileformats=unix,dos,mac
set linespace=0             " No extra spaces between rows
set showmatch               " Show matching brackets/parenthesis
set confirm                 " Confirm before vim exit

  if has('clipboard')
    if has('unnamedplus')  " When possible use + register for copy-paste
      set clipboard=unnamed,unnamedplus
    else         " On mac and Windows, use * register for copy-paste
      set clipboard=unnamed
    endif
  endif

set nobackup
set noswapfile
set nowritebackup

set iskeyword-=_,.,=,-,:,
set foldmethod=indent
set tabstop=2  softtabstop=2 shiftwidth=2 expandtab
" set guifont="JuliaMono Medium:h10"
set autoread
set wildignore=*.o,*~,*.pyc,*.swp,*.bak,*.class

  if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
  else
    set wildignore+=.git\*,.hg\*,.svn\*
  endif

set lazyredraw      " don't update the display while executing macros
set switchbuf=useopen           " reveal already opened files from the
                                " quickfix window instead of opening new
                                " buffers
set wildmenu
set copyindent
set wildmode=list:longest,full
set whichwrap=b,s,h,l,<,>,>h,[,]   " Backspace and cursor keys wrap too

if !&scrolloff
    set scrolloff=1           " Minimum lines to keep above and below cursor
  endif
  if !&sidescrolloff
    set scrolloff=5
  endif

set display+=lastline
set nowrap      " Do not wrap long lines
set backspace=eol,start,indent
  if has('syntax')
    syntax enable
  endif

set textwidth=80
let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(120,999),",")
set colorcolumn=+1
set autoindent
set smartindent
set smarttab
set ruler

  if has("gui_macvim")            "autocmd GUIEnter * set fullscreen
    set fuoptions=maxvert,maxhorz
  endif

" set cursorcolumn
set cursorline
set autochdir
set laststatus=2  " always show statusline
set showtabline=2 " always show tabline
set hidden

  " enables filetype based indentation
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

set noerrorbells novisualbell t_vb=
set autowrite
set autowriteall "Auto-write all file changes

set statusline+=%*
set statusline+=%#warningmsg#
filetype on
set shortmess+=filmnrxoOtT          " Abbrev. of messages (avoids 'hit enter')
set showmode                        " Display current mode
set showcmd                         " Show partial commands in status line and
                                    " Selected characters/lines in visual mode
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set virtualedit=onemore " used with caution of breaking plugins
set completeopt=menuone,menu,preview,longest
set tags=./tags;/,~/.vimtags

" Make tags placed in .git/tags file available in all levels of a repository
  let gitroot = substitute(system('git rev-parse --show-toplevel'), '[\n\r]', '', 'g')
  if gitroot != ''
    let &tags = &tags . ',' . gitroot . '/.git/tags'
  endif

set t_Co=256
set nofoldenable                  " Auto fold code
set foldlevel=1
set foldlevelstart=99
set nomodeline                  " disable mode lines (security measure)

" allow mouse select and etc operation
set mouse=a

set history=1000
  
" no annoying sound on errors
  set timeoutlen=500
  set formatoptions+=t
  
if v:version > 703 || v:version == 703 && has("patch541")
    set formatoptions+=j " Delete comment chars when join comment lines
  endif

set formatoptions-=l " wrap long lines
set wrapmargin=2 " 2 chars wrap margin from the right window border, hard wrap
set list
set lcs+=space:·
set guioptions=e "only show guitablabel
syntax on
highlight CursorLine term=reverse
highlight CursorColumn term=reverse


call plug#begin()
Plug 'patstockwell/vim-monokai-tasty'
Plug 'styled-components/vim-styled-components'
Plug 'vim-airline/vim-airline'
call plug#end()

let g:vim_monokai_tasty_italic = 1                    " allow italics, set this before the colorscheme
let g:vim_monokai_tasty_machine_tint = 1              " use `mahcine` colour variant
let g:vim_monokai_tasty_highlight_active_window = 1   " make the active window stand out
colorscheme vim-monokai-tasty

let g:airline_theme='monokai_tasty'                   " airline theme
let g:lightline = { 'colorscheme': 'monokai_tasty' }  " lightline theme
