" http://vim.wikia.com/wiki/Example_vimrc
" Markdown correclty detected and highlighted
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
" Enforces default theme
colorscheme default
" Enables every out-of-the-box available plugins (netrw most notably)
filetype plugin indent on
" A few configuration lines for netrw
let g:netrw_banner=0
let g:netrw_liststyle=0
let g:netrw_winsize=15
" Automatically change working directory according to currently edited
" file location
set autochdir
" Enforces dark background (most colorschemes support both dark and
" light backgrounds)
set background=dark
" Workaround weird backspace interpretations under old terminal
" emulators
set backspace=2
" Enforces a fixed height for the menu buffer
set cmdheight=1
" Asks to overwrite/close a buffer instead of displaying an error
set confirm
" Underline the line on which the cursor is
set cursorline
" Enforces proper file encoding
set encoding=UTF-8
set fileencoding=UTF-8
" Highlights matched elements when searching
set hlsearch
" Starts searching before the user hits Enter
set incsearch
" Case insensitive search by default
set ignorecase
" Displays extra information on the command bar
set laststatus=2
" Allows pasting with mouse
set mouse=a
" Totally overrides old vi compatibility mode
set nocompatible
" Displays line number
set number
" Language specific, plugins-and-macros-based autocompletion
set omnifunc=syntaxcomplete#Complete
" Always displays the command/menu bar
set ruler
" Sets how many spaces a tab should be replaced by when using the
" `retab` command
set shiftwidth=4
set expandtab
" Displays currently typed command in the command/menu bar
set showcmd
" Highlights matching bracket/braces
set showmatch
" Displays current mode in command/menu bar
set showmode
" Case insensitive search/replace by default
set smartcase
" Almost automatic indentation
set smartindent
" Enforces 256 colors terminal interpretation
set t_Co=256
" Each new typed tab is actually interpreted as x (here 4) spaces
set tabstop=4
" Eases the use of the mouse
set ttyfast
set ttymouse=sgr
" Commands and filenames autocompletion
set wildmenu
" Enforces syntax highlighting for supported (i.e. most languages)
syntax on
" PEP8 reminder
set colorcolumn=73,80
" simple yet useful macros
let @e='ggVGd'
let @l=':set expandtab:retab:%s/\s\+$//g:set ff=unix'
let @p=':set paste'
let @s=':sort u'
