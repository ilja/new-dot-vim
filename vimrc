" Yet another new .vimrc

call pathogen#infect()
syntax on
filetype plugin on
filetype plugin indent on
set nocompatible

" Basic options
set encoding=utf-8                                      " Set encoding inside vim to 32bit UTF-8 encoded Unicode
set modelines=0                                         " Prevent (some) modelines security exploits
set autoindent                                          " Copy indent from current line when CR or o/O commands used
set copyindent                                          " Autoindent copies indent format of previous line
set nosmartindent                                       " Explicity don't try to guess how I want my indents
set showmode                                            " Put a message on last line showing edit mode
set showcmd                                             " Show partial commands
set cursorline                                          " Highlight current row
set ttyfast                                             " Improves smoothness w/ multiple windows
set ruler                                               " Show ruler at bottom
set backspace=indent,eol,start                          " Nothing can stop the backspace !
set number                                              " Turn on line numbers
set laststatus=2                                        " Always show status bar (w/ filename)
set history=1000                                        " Remember 1000 lines of command line history
set undoreload=10000                                    " Save whole buffer for undo when reloading it
set undofile                                            " Specify new location for vim7.3 persistent undo file
set undodir=~/.vim/.undo                                " Put undo history into ~/.vim/undo
set backup                                              " turn backups on
set backupdir=~/.vim/.backup                            " Where to keep backup files
set directory=~/.vim/.tmp                               " Where to keep swap files
set lazyredraw                                          " Don't redraw screen when executing macros/untyped cmds
set splitbelow splitright                               " Use sane window splitting. To right and below
set autoread                                            " Automatically read file when changed outside vim
set title                                               " Title of window set to value of 'titlestring'
set mouse=a                                             " Use mouse everywhere
set noerrorbells                                        " Don't make noise
set clipboard+=unnamed                                  " Put contents of unnamed register in system clipboard
set foldmethod=syntax                                   " Syntax highlighting items specify folds

" Whitespace 
set nowrap                                              " No word wrapping
set tabstop=2                                           " Tabs count for 2 spaces
set shiftwidth=2                                        " Use 2 spaces for each step of autoindent
set softtabstop=2                                       " Tabs count for 2 spaces in insert mode
set expandtab                                           " Expand tabs to spaces
set list listchars=tab:>-,trail:·,extends:>,precedes:<  " Show tabs as >- and trailing space as ~
"set textwidth=80                                        " Break line after 80 characters (on whitespace only)

" Colorscheme
set background=light
colorscheme desert
