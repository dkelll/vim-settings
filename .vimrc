" Basics
set nocompatible " explicitly get out of vi-compatible mode
filetype on " I think this pulls filetype
syntax on " enable syntax highlighting

" pathogen
set rtp^=.vim/autoload/pathogen.vim
 execute pathogen#infect()

" General
set history=9999 " large history
set formatoptions+=n " recognize numbered lists
set formatlistpat=^\\s*\\(\\d\\\|[-*]\\)\\+[\\]:.)}\\t\ ]\\s* "and bullets, too
set nomore " turns off pagination; no 'More' prompts
set encoding=utf-8 " Necessary to show Unicode glyphs
set backspace=2	" more powerful backspacing
set ignorecase " Ignore case when searching
set smartcase " When searching try to be smart about cases
set hlsearch " Highlight search resultsh
set ruler " Always set the mouse cursor position
set number " Always show line numbers
set magic " For regular expressions
set showmatch " shows matching brackets when cursor is on it
set mat=3 " How many tenths of a second to blink when matching the brackets
set nobackup " Turn off backups
set nowb " More turning off of backups
set noswapfile " Turn off swap file
set autoread " Auto-show changes if the file is modded outside of vim
set incsearch " be like search in modern browsers

" Map jj to replace escape key
:imap jj <Esc>

command TRAIL %s/\s\+$// " remove trailing spaces

" color and syntax settings
" colorscheme base16-tomorrow
colors twilighted
set background=dark " use a dark background in the buffer

" Map space bar to / (search)
map <space> /

" enable mouse functionality
if has('mouse')
    set mouse=a
  endif

"  NERD Tree
" enable via 'mm'
let NERDTreeShowHidden=1
nnoremap <silent> mm :NERDTreeToggle<CR>

" Load in a custom config in CWD?
if filereadable(".vim.custom")
    so .vim.custom
endif

" Cool git thing from tpope:  https://github.com/tpope/vim-fugitive
