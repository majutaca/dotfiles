'dart-lang/dart-vim-plugin'
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

"" Closing brackets
call minpac#add('jiangmiao/auto-pairs')

"" VueJS
call minpac#add('posva/vim-vue')

"" VimDart
call minpac#add('dart-lang/dart-vim-plugin')

"" Themes
call minpac#add('dracula/vim')

"" Autocomplete plugin
call minpac#add('Valloric/YouCompleteMe')

"" Otpional plugins
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-scriptease', {'type': 'opt'})

"" Update commands
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

"" File type indent
filetype indent on

""" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary
set ttyfast

"" Fix backspace indent
set backspace=indent,eol,start

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

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

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


"" Set font only works for gui vim
set guifont=Tlwg\ Mono\ Bold\ 12

"" Set color scheme(Dracula)
color dracula

"" set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\


"" FZF Remapping
nnoremap <C-p> :<C-u>FZF<CR>

"" Nerdtree remapping
map <C-n> :NERDTreeToggle<CR>

"" Dispatch plugin compiler settings
let g:dispatch_compilers={}
let g:dispatch_compilers['npm run lint']='tslint'

"" YCM options
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
