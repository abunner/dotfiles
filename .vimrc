:set ttimeoutlen=10
:imap jj <Esc>
set winminheight=0
" Tab configuration
:nmap <C-J> <C-W>j<C-W>_
:nmap <C-K> <C-W>k<C-W>_
:nmap <C-W>m <C-W>_
:nmap + <C-W>+
:ab ldb LOG4CXX_DEBUG(_logger,
:ab linfo LOG4CXX_INFO(_logger,
:ab lwarn LOG4CXX_WARN(_logger,
:ab lerr LOG4CXX_ERROR(_logger,
:ab lfatal LOG4CXX_FATAL(_logger,
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
" Go
au BufNewFile,BufRead *.go                      setf go
au BufNewFile,BufRead *.esx                     setf javascript