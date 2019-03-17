" Font/Text settings.
let &guifont=g:font_normal
set linespace=1

" Remove toolbar.
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Remove OSX dialogs, Use Vim's built-in ones instead.
set guioptions+=c

" If we have MacVim running, set some stuff
if has("gui_macvim")
  " Delete keyboard shortcut for print
  macmenu &File.Print key=<nop>

  " Switch between tabs with cmd+1, cmd+2,...
  map <D-1> :tabfirst<Cr>
  map <D-2> :tabfirst<Cr>gt
  map <D-3> :tabfirst<Cr>3gt
  map <D-4> :tabfirst<Cr>4gt
  map <D-5> :tabfirst<Cr>5gt
  map <D-6> :tabfirst<Cr>6gt
  map <D-7> :tabfirst<Cr>7gt
  map <D-8> :tabfirst<Cr>8gt
  map <D-9> :tabfirst<Cr>9gt

  imap <D-1> <esc>:tabfirst<Cr>
  imap <D-2> <esc>:tabfirst<Cr>gt
  imap <D-3> <esc>:tabfirst<Cr>3gt
  imap <D-4> <esc>:tabfirst<Cr>4gt
  imap <D-5> <esc>:tabfirst<Cr>5gt
  imap <D-6> <esc>:tabfirst<Cr>6gt
  imap <D-7> <esc>:tabfirst<Cr>7gt
  imap <D-8> <esc>:tabfirst<Cr>8gt
  imap <D-9> <esc>:tabfirst<Cr>9gt
endif
