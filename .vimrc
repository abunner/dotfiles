:set ttimeoutlen=10
:imap jj <Esc>
set winminheight=0
" Tab configuration
:nmap <C-J> <C-W>j<C-W>_
:nmap <C-K> <C-W>k<C-W>_
:nmap <C-W>m <C-W>_
:nmap + <C-W>+
filetype on
filetype plugin on
syntax on
set nohlsearch
set showmatch
set binary noeol
set backspace=indent,eol,start
set number
set autoindent
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set ruler
:highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
