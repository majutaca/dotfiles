" Enter this mellenium
set nocompatible

"enable syntax and plugins (netrw)
syntax enable 
filetype plugin on

"Search Into Subfolders
"Provides tab-completion for all file related tasks
set path+=**

"Display all matching files when we tab-complete
set wildmenu

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'


set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set number
set nrformats=    " Make vim treat all numerals as decimals, regardless of whether they are padded with zeros

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops ans EOLs
set listchars=tab:▸\ ,eol:¬

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" default tab spaces: 2
set ts=2 sts=2 sw=2 expandtab

"Pathogen plugin
execute pathogen#infect()
