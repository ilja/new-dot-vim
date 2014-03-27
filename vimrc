" Yet another new .vimrc
" Stolen / copied from around the interwebs
"
" Use ':source $MYVIMRC' to quickley see changes

" Disable vi compatibility mode
set nocompatible

" for vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Text object helpers
Bundle 'kana/vim-textobj-entire'
Bundle 'kana/vim-textobj-user'

" Git client
Bundle 'tpope/vim-fugitive'

" Ruby on Rails power tools
Bundle 'tpope/vim-rails'

" Pairs of handy bracket mappings
Bundle 'tpope/vim-unimpaired'

" Quoting/parenthesizing made simple
Bundle 'tpope/vim-surround'

" Markdown support
Bundle 'tpope/vim-markdown'

" Wisely add 'end' in after if, do etc
Bundle 'tpope/vim-endwise'

" Comment / uncomment
Bundle 'tpope/vim-commentary'

" Supercharge . repeating
Bundle 'tpope/vim-repeat'

" Asynchronous build and test dispatcher
Bundle 'tpope/vim-dispatch'

" Easy navigation
Bundle 'Lokaltog/vim-easymotion'

" Nice statusline
Bundle 'bling/vim-airline'

" Directory browser
Bundle 'scrooloose/nerdtree'

" Open files with control-p
Bundle 'kien/ctrlp.vim'

" Search with the silver searcher
Bundle 'rking/ag.vim'

" List, select and switch between buffers
Bundle 'jeetsukumaran/vim-buffergator'

" Displays tags in a window, ordered by scope
Bundle 'majutsushi/tagbar'

" Show git info in the gutter
Bundle 'airblade/vim-gitgutter'

" Relative / absolute line numbers toggle
Bundle 'jeffkreeftmeijer/vim-numbertoggle'

" Delete buffers without closing the window
Bundle 'ilja/vim-bclose'

" Align text
Bundle 'godlygeek/tabular'

" A custom text object for selecting ruby blocks.
Bundle 'nelstrom/vim-textobj-rubyblock'

" Emmet for vim (formerly zencoding)
Bundle 'mattn/emmet-vim'

" Prevent tab completion from showing gitignored files
Bundle 'vitaly/vim-gitignore'

" Snippets engine
Bundle 'SirVer/ultisnips'

" Inline css/less/sass/html color preview
Bundle 'gorodinskiy/vim-coloresque.git'

" Control rspec from within vim
Bundle 'thoughtbot/vim-rspec'

" Sublime text like multiple cursors
Bundle 'terryma/vim-multiple-cursors'

" Insert or delete brackets, parens, quotes in pair
Bundle 'jiangmiao/auto-pairs'

" Language support
Bundle 'vim-ruby/vim-ruby'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'othree/html5.vim'

" Themes
Bundle 'ilja/Vim-Tomorrow-Theme'
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/base16-vim'

" Enable matchit
runtime macros/matchit.vim

" Enable filetype specific plugins and indenting
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Basic options
set encoding=utf-8                                      " Set encoding inside vim to 32bit UTF-8 encoded Unicode
"set modelines=0                                         " Prevent (some) modelines security exploits
"set autoindent                                          " Copy indent from current line when CR or o/O commands used
"set copyindent                                          " Autoindent copies indent format of previous line
"set nosmartindent                                       " Explicity don't try to guess how I want my indents
"set showmode                                            " Put a message on last line showing edit mode
"set showcmd                                             " Show partial commands
"set ttyfast                                             " Improves smoothness w/ multiple windows
"set ruler                                               " Show ruler at bottom
"set backspace=indent,eol,start                          " Nothing can stop the backspace !
set hlsearch
set incsearch
set ignorecase smartcase                                 " Make searches case insensitive only if they contain upper-case characters

" Clear the search buffer when hitting return
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()


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
set undolevels=1000

" Activate backups
set backup
set backupdir=~/.vim/.backup

" Global swap file dir
set directory=~/.vim/.tmp

" Automatically read file when changed outside vim
set autoread

"set lazyredraw                                          " Don't redraw screen when executing macros/untyped cmds
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

" Highlight column 80
set colorcolumn=80

" Minimal width of the current window
set winwidth=85

" Powerline fonts in airline
let g:airline_powerline_fonts = 1

" Wildignore
" Ignore .git etc dirs
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*   " for Linux/MacOSX
set wildignore+=.git\*,.hg\*,.svn\*         " for Windows
" Disable output, slite and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.class,.svn,*.gem,*.sqlite3,Gemfile.lock
" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*,*/coverage/*
" Ignore bundler binstubs and rails script
set wildignore+=*/bin/*,*/script/*
" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" Reverse order of ctrlp
let g:ctrlp_match_window_reversed=0
" Use git to list files
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']
" Keep caches between sessions - f5 to refresh
let g:ctrlp_clear_cache_on_exit = 0

" Disable noise
set vb t_vb=

" Keybindings

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" H jumps to first non whitespace char on line, L to last (aka fake Home/End)
noremap H ^
noremap L g_

" Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open new horizontal split windows below current
set splitbelow

" Open new vertical split windows to the right
set splitright

" Remove trailing spaces when exiting file
autocmd BufWritePre * :%s/\s\+$//e

" Use :w!! to save files with sudo
cmap w!! %!sudo tee > /dev/null %

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Colorscheme
set background=light
colorscheme base16-default

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
" let NERDTreeIgnore=['\.$', '\~$']

" No 'help?' and 'up a dir' etc.
let NERDTreeMinimalUI=1

" Use arrows for directories
let NERDTreeDirArrows=1

" Make F2 open NERDTree
map <F2> :NERDTreeToggle<CR>

" Ignore these files and dirs
let NERDTreeIgnore=['\.git$', '\~$', '\coverage$', '\bin$', '\.idea$']

" Start with a empty file when starting in a directory given on the command
" line. (stolen from janus)
augroup AuNERDTreeCmd
  autocmd AuNERDTreeCmd VimEnter * call s:CdIfDirectory(expand("<amatch>"))

  " If the parameter is a directory, cd into it
  function! s:CdIfDirectory(directory)
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
augroup END

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
nmap <silent> ,. :bnext<cr>
nmap <silent> ,m :bprev<cr>

map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprev<cr>

map <C-PageUp> :bprev<cr>
map <C-PageDown> :bnext<cr>

" For quick vimrc editing
nmap <F10> :e $MYVIMRC<CR>
nmap <F9> :source $MYVIMRC<CR>

" Automatically reload vim after saving vimrc
aug AutoloadVimrc
  au!
  au BufWritePost $MYVIMRC source $MYVIMRC
aug END

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

" Make j/k move up/down a screen line instead of a physical file line (for wrapped lines)
nmap k gk
nmap j gj

" Disable arrow keys
" use <Left> <Nop> if tired of complaining
map <Left> :echo "use h"<cr>
map <Right> :echo "use l"<cr>
map <Up> :echo "use k"<cr>
map <Down> :echo "use j"<cr>

" This function quits the window only if it is not the last window.
function! DonotQuitLastWindow()
  if NumberOfWindows() != 1
    let v:errmsg = ""
    silent! quit
    if v:errmsg != ""
      "echohl ErrorMsg | echomsg v:errmsg | echohl NONE
      "echoerr v:errmsg
      echohl ErrorMsg | echo v:errmsg | echohl NONE
    endif
  else
    :execute "Bclose"
    " echohl Error | echo "Can't quit the last window...use :q" | echohl None
  endif
endfunction

function! NumberOfWindows()
  let i = 1
  while winbufnr(i) != -1
    let i = i+1
  endwhile
  return i - 1
endfunction

nnoremap <silent> q :call DonotQuitLastWindow()<cr>

" map :wq :confirm quit

" remap F1 to Escape
map <F1> <Esc>
imap <F1> <Esc>

" remap kj and jj to Escape
inoremap kj <ESC>
inoremap jj <ESC>

" fat finger fix for W
command! W w

" blue insert cursor color and ver35 shape
highlight iCursor guifg=white guibg=#4271ae
set guicursor+=i:ver35-iCursor

highlight clear SignColumn

" Rspec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = "Dispatch zeus rspec {spec}"

" Use tab for snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Define custom snippets directory
let g:UltiSnipsSnippetsDir="~/.vim/custom_snippets"
