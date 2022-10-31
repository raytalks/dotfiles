set nocompatible

call plug#begin('~/.vim/plugged')

" Themes
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'

" Navigation
Plug 'bling/vim-airline'
Plug 'mileszs/ack.vim', { 'on': 'Ack' }
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'], 'commit': '5782b22' }

" Languages
Plug 'othree/html5.vim', { 'for': ['html', 'eruby'] }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }

" Useful tools
Plug 'tpope/vim-repeat', { 'commit': '7a6675f' }
Plug 'tpope/vim-surround', { 'commit': '2d05440' }

Plug 'airblade/vim-gitgutter', { 'commit': 'b27ee4d' }
Plug 'janko-m/vim-test', { 'on': ['TestFile', 'TestNearest', 'TestLast', 'TestSuite'] }
Plug 'tomtom/tcomment_vim', { 'commit': 'f5ca095', 'on': 'TComment' }

Plug '/opt/homebrew/opt/fzf'
Plug 'junegunn/fzf.vim', { 'on': ['Files', 'Buffers', 'Tags', 'Commands', 'Ag', 'History', 'Marks', 'Snippets'] }
Plug 'sirver/ultisnips', { 'commit': '423f264' }
Plug 'jiangmiao/auto-pairs'
Plug 'lifepillar/vim-mucomplete', { 'commit': '8e1ddf51f47cd5351cb37a622c5eec1c9c6d2130' }

call plug#end()

set encoding=utf-8
set path+=**

set showcmd                       " Display incomplete commands.
set noshowmode                    " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.
set hidden                        " Handle multiple buffers better.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.
set cursorline                    " Highlight the line of the cursor.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set spelllang=en,nl
set spellfile=$HOME/.vim/spell/en.utf-8.add
set complete+=kspell

set wrap                          " Turn on line wrapping.
set linebreak                     " Break lines.
set breakindent                   " Add indenting after break.
let &showbreak="↳ "               " Line break indicator.

set list                          " `set list` disables linebreak.
set listchars=nbsp:␣,tab:▸\ ,extends:»,precedes:«,trail:·,space:·
set scrolloff=5                   " Line scroll offset from top and bottom.

set title                         " Set the terminal's title
set visualbell                    " No beeping.

set noswapfile                    " Disable .swp file creation.
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.

set history=1000                  " Remember last 1000 commands.
set undolevels=1000               " Remember last 1000 undos.
set wildignore=*.swp,*.swo,*.bak,*.class

set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set shiftround
set expandtab                     " Use spaces instead of tabs.
set autoread
au FocusGained,BufEnter * checktime

set clipboard=unnamed             " Enable OS clipboard to properly paste in to VIM buffer.
set pastetoggle=<F2>

let &colorcolumn="80,100"         " Highlight column 80 and 100
let c_space_errors=1              " Highlight trailing spaces
set splitbelow                    " Open vsplits to below
set splitright                    " Open hsplits to the right

set lazyredraw

let mapleader=","
let g:font_normal="Meslo\ LG\ M\ Regular\ for\ Powerline:h18"
let g:font_focus="Meslo\ LG\ M\ Regular\ for\ Powerline:h20"

" Color theme
if (has("termguicolors"))
  set termguicolors
endif
syntax on
colorscheme onedark

" FOR LATER
set shortmess+=IF
" Load config from config files
runtime! config/**/*.vim
