" Basics
set nocompatible " explicitly get out of vi-compatible mode
filetype on " I think this pulls filetype
syntax on " enable syntax highlighting

" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
call pathogen#helptags()

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
" set ruler " Always set the mouse cursor position
set number " Always show line numbers
set title " set xterm title
set magic " For regular expressions
set showmatch " shows matching brackets when cursor is on it
let g:rainbow_active=1 " Rainbow parentheses
set mat=3 " How many tenths of a second to blink when matching the brackets
set nobackup " Turn off backups
set nowb " More turning off of backups
set noswapfile " Turn off swap file
set autoread " Auto-show changes if the file is modded outside of vim
set incsearch " be like search in modern browsers
set autoindent " Indentation settings
autocmd FileType * set tabstop=2|set shiftwidth=2 " smaller indents
autocmd FileType text setlocal textwidth=78 " for git commits

" Map jj to replace escape key
:imap jj <Esc>

command TRAIL %s/\s\+$// " remove trailing spaces

" color and syntax theme settings
colors twilighted
set background=dark " use a dark background in the buffer
let g:solarized_termcolors = 256

" airline settings
set laststatus=2
let g:airline_theme="solarized"
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_inactive_collapse=1
let g:airline_powerline_fonts=1
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#branch#displayed_head_limit = 10
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1


  " powerline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''


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
