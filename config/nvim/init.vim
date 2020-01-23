set encoding=utf-8

" Load plugins
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Leader
let mapleader = " "

set backspace=2   " Backspace deletes like most programs in insert mode
set ruler         " Show the cursor position all the time
set showcmd       " Display incomplete commands
set incsearch     " Do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

set background=dark
colorscheme spacemacs-theme

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Use python3 mode
let g:pymode_python = 'python3'

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Numbers
set number
set numberwidth=5

if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has('termguicolors'))
  set termguicolors
endif

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

