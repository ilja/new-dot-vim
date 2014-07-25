" Gvim config

" Set the guifont
if has("gui_macvim")
  "set guifont=Monaco:h14
  set guifont=Inconsolata-dz\ for\ Powerline:h14
  set lines=47 columns=178
  macmenu &File.New\ Tab key=<D-T>
  " map <F2> :maca toggleFileBrowser:<cr>

  " Use Marked.app to preview Markdown files...
  function! s:setupMarkup()
    nnoremap <leader>p :silent !open -a Marked.app '%:p'<cr>
  endfunction

  " Use \d on top of a word to look it up in Dictionary.app
  nmap <silent> <Leader>d :!open dict://<cword><CR><CR>

else
  " use gui to set font: set guifont=*
  " show current font: set guifont?
  "set guifont=Inconsolata\ 14
  " set guifont=Inconsolata-dz\ for\ Powerline\ Medium\ 14
  " set guifont=Source\ Code\ Pro\ For\ Powerline\ 14
  set guifont=Source\ Code\ Pro\ Light:h15
  set lines=41 columns=148
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

" Control-Shift-F for Ag
map <C-F> :Ag<space>

" Temporarily disable :wq until I learn not to close the damn app the whole
" time when I only want to save
" :cmap wq w

" Set gui background
set background=dark

