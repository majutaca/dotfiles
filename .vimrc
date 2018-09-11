"*****************************************************************************
"" Chris Majuta's .vimrc
"*****************************************************************************

"" package manager
packadd minpac
call minpac#init()

"" Required Plugins
call minpac#add('tpope/vim-unimpaired')

"" Fuzzy file finder
call minpac#add('junegunn/fzf')

"" Semantic file finder
call minpac#add('tpope/vim-projectionist')

call minpac#add('tpope/vim-dispatch')

"" Otpional plugins
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-scriptease', {'type': 'opt'})

"" Update commands
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

let mapleader = ','

set pastetoggle=<f5>

"" FZF Remapping
nnoremap <C-p> :<C-u>FZF<CR>

