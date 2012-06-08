" Yet another new .vimrc
" Stolen / copied from around the interwebs
"
" Use ':source $MYVIMRC' to quickley see changes

" Initialize pathogen
call pathogen#infect()

" Disable vi compatibility mode
set nocompatible

" Enable syntax highlighting
syntax on

" Enable filetype specific plugins and indenting
filetype plugin indent on


" Basic options
set encoding=utf-8                                      " Set encoding inside vim to 32bit UTF-8 encoded Unicode
"set modelines=0                                         " Prevent (some) modelines security exploits
"set autoindent                                          " Copy indent from current line when CR or o/O commands used
"set copyindent                                          " Autoindent copies indent format of previous line
"set nosmartindent                                       " Explicity don't try to guess how I want my indents
"set showmode                                            " Put a message on last line showing edit mode
"set showcmd                                             " Show partial commands
"set cursorline                                          " Highlight current row
"set ttyfast                                             " Improves smoothness w/ multiple windows
"set ruler                                               " Show ruler at bottom
"set backspace=indent,eol,start                          " Nothing can stop the backspace !

" Use 256 color mode in terminal
set t_Co=256

" Line numbers 3 spaces wide
set number
set numberwidth=3

" Highlight cursor line
set cursorline

" Status bar
set laststatus=2                                        " Always show status bar (w/ filename)

" Remember 1000 lines of command line history
set history=1000

" Save whole buffer for undo when reloading it
set undoreload=10000

" Use persistent undo file
set undofile
set undodir=~/.vim/.undo

" Activate backups
set backup
set backupdir=~/.vim/.backup

" Global swap file dir
set directory=~/.vim/.tmp

"set lazyredraw                                          " Don't redraw screen when executing macros/untyped cmds
"set autoread                                            " Automatically read file when changed outside vim
"set title                                               " Title of window set to value of 'titlestring'
"set mouse=a                                             " Use mouse everywhere
"set noerrorbells                                        " Don't make noise
"set clipboard+=unnamed                                  " Put contents of unnamed register in system clipboard
"set foldmethod=syntax                                   " Syntax highlighting items specify folds

" Whitespace
set nowrap                                              " No line wrapping
set list listchars=tab:>-,trail:·,extends:>,precedes:<  " Show tabs as >- and trailing space as ·

" show at least 3 lines above/below cursor
set scrolloff=3

" and at least 7 columns next to cursor
set sidescrolloff=7
set sidescroll=1

" Indent 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"set textwidth=80                                        " Break line after 80 characters (on whitespace only)

" Highlight column 100
" set colorcolumn=100

" Powerline
let g:Powerline_symbols = 'fancy'

" Wildignore
" Ignore .git etc dirs
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*   " for Linux/MacOSX
set wildignore+=.git\*,.hg\*,.svn\*         " for Windows
" Disable output, slite and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.class,.svn,*.gem,*.sqlite3,Gemfile.lock
" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
" Ignore bundler binstubs and rails script
set wildignore+=*/bin/*,*/script/*
" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" Reverse order of ctrlp
let g:ctrlp_match_window_reversed=0

" Disable noise
set vb t_vb=

" Change leader from \ to ,
let mapleader = ","

" Keybindings


" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" H jumps to first non whitespace char on line, L to last (aka fake Home/End)
noremap H ^
noremap L g_

" Remove trailing spaces when exiting file
autocmd BufWritePre * :%s/\s\+$//e

" Open new horizontal split windows below current
set splitbelow

" Open new vertical split windows to the right
set splitright

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Colorscheme
set background=light
colorscheme Tomorrow

" Nerdtree config
" Enable nice colors (not compatible with arrows)
" let NERDChristmasTree = 1

" Make it easy to see where we are
let NERDTreeHighlightCursorline = 1

" Make bookmarks visible
" let NERDTreeShowBookmarks = 1

" Show hidden files
let NERDTreeShowHidden = 1

" Don't hijack NETRW
let NERDTreeHijackNetrw = 0
let NERDTreeIgnore=['\.$', '\~$']

" No 'help?' and 'up a dir' etc.
let NERDTreeMinimalUI=1

" Use arrows for directories
let NERDTreeDirArrows=1

" Make F2 open NERDTree
map <F2> :NERDTreeToggle<CR>

" Start with a empty file when starting in a directory given on the command
" line. (stolen from janus)
augroup AuNERDTreeCmd
autocmd AuNERDTreeCmd VimEnter * call s:CdIfDirectory(expand("<amatch>"))

" If the parameter is a directory, cd into it
function s:CdIfDirectory(directory)
  let explicitDirectory = isdirectory(a:directory)
  let directory = explicitDirectory || empty(a:directory)

  if explicitDirectory
    exe "cd " . fnameescape(a:directory)
  endif

  " Allows reading from stdin
  " ex: git diff | mvim -R -
  if strlen(a:directory) == 0
    return
  endif

  if directory
   " NERDTree
    wincmd p
    bd
  endif

  if explicitDirectory
    wincmd p
  endif
endfunction

" NERDCommenter
let NERDDefaultNesting = 0
let NERDRemoveExtraSpaces = 1
let NERDSpaceDelims = 1

" Control-space to toggle comments
map <C-space> <plug>NERDCommenterToggle<CR>
imap <C-space> <Esc><plug>NERDCommenterToggle<CR>i

" Bclose; do not let NERDTree take the whole window after closing the last
" buffer. See: http://www.reddit.com/r/vim/comments/m4cjp/i_have_this_issue_i_keep_running_into_with/
cmap bc Bclose
nmap <Leader>q :Bclose<CR>

" Buffergator
nmap <F3> :BuffergatorToggle<CR>
let g:buffergator_suppress_keymaps=1 "disable the default keybindings
let g:buffergator_viewport_split_policy="R"
let g:buffergator_split_size=40
let g:buffergator_autoexpand_on_split=0

" Tagbar
nmap <F4> :TagbarToggle<CR>

" Rotates through open buffers with various keybindings
nmap <silent> ,. :bnext<CR>
nmap <silent> ,m :bprev<CR>

map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>

map <C-PageUp> :bprevious<cr>
map <C-PageDown> :bnext<cr>

" For quick vimrc editing
nmap <F10> :e $MYVIMRC<CR>
nmap <F12> :source $MYVIMRC<CR>

let g:NumberToggleTrigger="<F6>"

" Indent with Alt-]/[
vmap <A-]> >gv
vmap <A-[> <gv

nmap <A-]> >>
nmap <A-[> <<

omap <A-]> >>
omap <A-[> <<

imap <A-]> <Esc>>>i
imap <A-[> <Esc><<i

" Disable arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

