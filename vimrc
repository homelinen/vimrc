" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"Pathogen 
call pathogen#infect()

"Fugitive - Git for Vim
nmap <LEADER>Gs :Gstatus<CR>
nmap <LEADER>Gc :Gcommit<CR>

"Gist-Vim
let g:gist_detect_filetype = 1

"Shows line numbers in the left column
set number
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
"colors Tomorrow-Night-Bright "I deleted this theme, wups
"
imap ;; <Esc>

set nobackup
set smarttab
set tabstop=4
set shiftwidth=4

set laststatus=2
set history=700 

set ai "Auto indent
set si "Smart indent

set lbr

set wildmenu "Turn on wildmenu

set ignorecase
set smartcase

set hlsearch
set incsearch

syntax enable

set magic

set showmatch

set showcmd "Show partial command in status line
set number

set statusline=%F%m%h\ %w\ \ [TYP=%Y]\ \ CWD=%{CurDir()}%h\ \ [POS=%l,%v][%p%%]\ \ %([%R%M]%)

set backspace=2

filetype plugin indent on

function! CurDir()
    let curdir = substitute(getcwd(), '/home/homelinen/', "~/", "g")
    return curdir
endfunction

"When vimrc is edited, reload it
autocmd! bufwritepost vimrc source /etc/vimrc
