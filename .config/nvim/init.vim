" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'colepeters/spacemacs-theme.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

call plug#end()

" Leader
let mapleader = " "

set backspace=2   " Backspace deletes like most programs in insert mode
set ruler         " Show the cursor position all the time
set showcmd       " Display incomplete commands
set incsearch     " Do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
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
  " For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
" Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
"   < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has('termguicolors'))
  set termguicolors
endif

