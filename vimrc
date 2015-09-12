"
" Author: Calum Gilchrist
" Version: 0.1.1

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

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"Pathogen 
call pathogen#infect()

" leader
let mapleader = ","

" Fugitive - Git for Vim
nmap <LEADER>Gs :Gstatus<CR>
nmap <LEADER>Gc :Gcommit<CR>
nmap <leader>Gd :Gdiff<CR>

"Gist-Vim
let g:gist_detect_filetype = 1

"Tagbar
nmap <LEADER>l :TagbarToggle<CR>

"Tabularize
vmap <Leader>ad :Tabularize /^[^=]*\zs=><CR> " Tab 
nmap <Leader>ad :Tabularize /^[^=]*\zs=><CR>

"Configure ctags to use Homebrew
let g:tagbar_ctags_bin='/usr/local/bin/ctags'

let g:tagbar_width=26 

"NERDTree
nmap <LEADER>N :NERDTree<CR>

"Slime
let g:slime_target = "tmux"

"You Complete Me
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_use_ultisnips_completer = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Some Nice Snippets from: https://github.com/amix/vimrc
" --

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing tabs
map <leader>tN :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<CR>
map <leader>tn :tabnext<CR>
map <leader>tp :tabp<CR>

" Make moving around move between wrapped lines
nnoremap j gj
nnoremap k gk

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"-- EOF Snippets

"Add visible tabs
set list
set listchars=tab:\|\ 

map YY :!xclip -f -sel clip<CR>

"Shows line numbers in the left column
set number
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

imap ;; <Esc>

set nobackup
set smarttab
set tabstop=4
set shiftwidth=4

set laststatus=2
set history=700 

set ai "Auto indent
set si "Smart indent

"Break lines that are too long
set lbr

set wildmenu "Turn on wildmenu

set ignorecase
set smartcase

set hlsearch
set incsearch

syntax enable

" Syntastic 

" Use pyflakes for a tiny speed bump over pylint
let g:syntastic_python_checkers = ['python', 'pyflakes', 'flake8']

set magic

set showmatch

set showcmd "Show partial command in status line

set statusline=%F%m%h\ %w\ \ [TYP=%Y]\ \ CWD=%{CurDir()}%h\ \ [POS=%l,%v][%p%%]\ \ %([%R%M]%)

"What does this do?
set backspace=2

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

function! CurDir()
    let curdir = substitute(getcwd(), '/home/homelinen/', "~/", "g")
    return curdir
endfunction

"When vimrc is edited, reload it
autocmd! bufwritepost vimrc source /etc/vimrc

colors Tomorrow-Night-Eighties
" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark
