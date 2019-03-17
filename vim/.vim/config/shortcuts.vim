" Shortcuts
" Reload .vimrc
nnoremap <leader>r :source ~/.vimrc<CR>:nohl<CR>

" Easier direct split navigation with ctrl + homerow keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Cycle through splits with tab
nmap <Tab> <C-w>w

" Maximize current split
nnoremap <leader>- <C-W>_
" Equalize splits
nnoremap <leader>= <C-W>=

" Open Ack search on `Command + /`
nnoremap <d-/> :Ack!<Space>
nnoremap <leader>/ :Ack!<Space>

" Toggle comments on `Leader + \`
nnoremap <leader>\ :TComment<cr>
vnoremap <leader>\ :TComment<cr>

" Toggle spellcheck with F6
noremap <F6> :set spell! spell?<CR>

" Easier start/end of line navigation
nnoremap H ^
nnoremap L g_
vnoremap H ^
vnoremap L g_

" Copy line without line ending
nmap <leader>yl 0y$
nmap <leader>cl 0d$"_dd

" Remove full line with <leader>d
nmap <leader>d "_dd
vmap <leader>d "_d

" Use F for formatting the current paragraph (or selection)
" Source: http://nvie.com/posts/how-i-boosted-my-vim/
vmap F gq
nmap F gqap

" Go to next editor row instead of wrapped line
" Source: http://nvie.com/posts/how-i-boosted-my-vim/
nnoremap j gj
nnoremap k gk

" Map D+[ and D+] to change indenting
" Source: https://github.com/carlhuda/janus/blob/68a5d818d2ef99a2e224657394adc79d909180df/janus/vim/core/before/plugin/mappings.vim#L58-68
" imap <D-[> <C-O><<
" imap <D-]> <C-O>>>
vmap <D-[> <gv
vmap <D-]> >gv
nmap <D-[> <<
nmap <D-]> >>
" Stay in visual mode while indenting with < and >
vmap < <gv
vmap > >gv

" Open previous edited file
nnoremap <leader><leader> :e #<CR>

" Disable K command. Don't use the feature.
map K <Nop>

" Paste without overwriting the clipboard with selection
vnoremap <leader>p "_dP

" Send single characters to black hole on deletion
nnoremap x v"_d
" Send selection characters to black hole on deletion
vnoremap x "_d

" Duplicate a selection in visual mode without overwriting the clipboard
xnoremap D "ky"kp

" Use %% as shortcut for %:h (gets the current files' dir)
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
