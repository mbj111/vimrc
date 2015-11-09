" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif


" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

syntax enable
set background=dark
colorscheme solarized

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set clipboard=unnamedplus "Behave seamless for copy and paste outside of editor
set number	
set tabstop=4
set shiftwidth=4
set cindent
set expandtab 
set autoindent
set undolevels=500
set background=dark

nnoremap <leader>cc= :0r /home/mitesh/Documents/template.cpp
nnoremap <leader>srm= :0r /home/mitesh/Documents/topcoder/srm.cpp
nnoremap <leader>gcj= :0r /home/mitesh/Documents/gcj/gcj.cpp
" fast compile and run
" here % is for current file
map <F6> :w<CR>:!g++ -std=c++11 % -g && (ulimit -c unlimited; ./a.out < ~/input.txt) <CR>
map <F5> :w<CR>:!g++ -std=c++11 % -g <CR>
map <F7> :w<CR>:! ./a.out < 
map <F8> :!gdb ./a.out -c core <CR>
execute pathogen#infect()
" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

