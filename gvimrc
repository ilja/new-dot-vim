" Gvim config

" Set the guifont
if has("gui_macvim")
  "set guifont=Monaco:h14
  set guifont=Inconsolata-dz\ for\ Powerline:h14
else
  "set guifont=Inconsolata\ 14
  set guifont=Inconsolata-dz\ for\ Powerline\ Medium\ 14
endif

" ?
set antialias

" Hide mouse pointer on insert mode.
set mousehide

" Hide toolbar and menus.
set guioptions-=T
set guioptions-=m

" Scrollbar is always off.
 set guioptions-=rL

" Enable gui tab labels
set guioptions+=e

" Don't highlight search result.
set nohlsearch

" Control-Shift-F for Ack
map <C-F> :Ack<space>

if has("gui_macvim")
  macmenu &File.New\ Tab key=<D-T>
  map <D-t> :CommandT<CR>
  imap <D-t> <Esc>:CommandT<CR>
endif
