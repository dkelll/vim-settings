# My current vim setup

Uses [Pathogen](https://github.com/tpope/vim-pathogen).  I may convert to Vundle sometime soon, just to compare the two.

## Requirements
* Vim
* Git
* NodeJS/NPM

## Common Commands
Search: `space` <br>
Escape insert mode: `jj` <br>
Toggle spell check: `\s,\S` <br>
Runs :CtrlPMixed: `ctrl-p` <br>
Runs :CtrlPBuffer: `ctrl-n` <br>
Runs :NerdTreeToggle: `ctrl-e+f` <br>
Move around windows: `ctrl-h,j,k,l` <br>
Search and display entries: `Ack WORD` <br>

## Ack Plugin
Install via: http://beyondgrep.com/install <br>
You might also need to put `alias ack="ack-grep"` in your `.bashrc` file.

## Adding Custom Commands Per Directory
If you have a `.vim.custom` file in the CWD, it will be evaluated (last).

## Desktop Wallpaper
I attended a js user group meetup where [@johnmosesman](https://twitter.com/johnmosesman/status/602852544952467456) demo'd his vim setup, which included a fantastic desktop wallpaper piece.  Set this as your desktop for a quick reference to common vim commands.
![alt text](/vimgbfullsize.png "vim desktop wallpaper")

## Other References

* http://yavin4.anshul.info/2006/05/18/spell-check-in-vim-7/
* http://vim.cybermirror.org/runtime/vimrc_example.vim
* http://amix.dk/vim/vimrc.html
* http://vim.wikia.com/wiki/Vim_Tips_Wiki
