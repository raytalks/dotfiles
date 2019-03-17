" vim-test configuration

let g:test#strategy = 'iterm'

"" Configuration
let g:test#ruby#rspec#options = {
  \ 'file': '--format documentation',
\}

"" Mappings
map <silent> <Leader>t :TestFile<CR>
map <silent> <Leader>s :TestNearest<CR>
map <silent> <Leader>l :TestLast<CR>
map <silent> <Leader>a :TestSuite<CR>
