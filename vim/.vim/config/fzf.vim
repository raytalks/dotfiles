" FZF
let $FZF_DEFAULT_OPTS="--color=dark --layout=reverse"
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.4 } }
nmap <leader>p :Files<CR>
nmap <c-p> :Files<CR>
nmap <c-\> :Buffers<CR>
