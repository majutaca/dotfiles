"*****************************************************************************
"" Chris Majuta's .vimrc
"*****************************************************************************

"" package manager
packadd minpac
call minpac#init()

"" Required Plugins
call minpac#add('tpope/vim-unimpaired')

"" File browser
call minpac#add('scrooloose/nerdtree')

"" Fuzzy file finder
call minpac#add('junegunn/fzf')

"" Semantic file finder
call minpac#add('tpope/vim-projectionist')

call minpac#add('tpope/vim-dispatch')

"" Status bar
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')

"" Otpional plugins
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-scriptease', {'type': 'opt'})

"" Update commands
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

""" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary
set ttyfast

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac

"*****************************************************************************
""" Visual Settings
"*****************************************************************************
set ruler
set number

" Status bar
set laststatus=2

" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

"" set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\


"" FZF Remapping
nnoremap <C-p> :<C-u>FZF<CR>

"" Nerdtree remapping
map <C-n> :NERDTreeToggle<CR>

"" Dispatch plugin compiler settings
let g:dispatch_compilers={}
let g:dispatch_compilers['npm run lint']='tslint'
