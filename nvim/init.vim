set nocompatible " uncompatible for vi
set nowrap " no linebreak

set number
set cul " Cursorline highlights the screen column of the cursor
set hls " Highlight all search pattern matches

scriptencoding utf-8
set encoding=utf-8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

set tabstop=4
set shiftwidth=4
set softtabstop=4

set ruler
set showcmd
set ignorecase

set expandtab
set smarttab
set autoindent
set smartindent

" clipboard settings
set clipboard=unnamed " when press y copy text to clipboard
set mouse= "use mouse select text copy to clipboard


"""""""""""""""""""""
"      Plugins      "
"""""""""""""""""""""
" be stored in ~/.local/share/nvim/
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }

" tabline and statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" color scheme
Plug 'fatih/molokai'

" insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" comment, use gc comment, use gcc to comment out 
Plug 'tpope/vim-commentary'

" multiple cursors plugin for vim/neovim, select words with Ctrl-N
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" text filtering and alignment
Plug 'godlygeek/tabular'
" markdown
Plug 'preservim/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
" Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}

" TODO optimize git
Plug 'lewis6991/gitsigns.nvim'

" golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" using nerdcommenter
Plug 'preservim/nerdcommenter'
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" tagbar
Plug 'majutsushi/tagbar'
map <silent> <F9> :TagbarToggle<CR>

" show recently used files
Plug 'mhinz/vim-startify'

" auto-complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" TODO config snip with lua
Plug 'SirVer/ultisnips'
" Plug 'L3MON4D3/LuaSnip'
Plug 'honza/vim-snippets'
" lua require("luasnip.loaders.from_snipmate").lazy_load({paths = "~/.config/nvim/snippets"})
" lua require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})


" Plug 'ycm-core/YouCompleteMe'

call plug#end()


"""""""""""""""""""""""""""""
"      Plugin settings      "
"""""""""""""""""""""""""""""
" scheme settings
syntax enable
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai

" nerdtree settings
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <silent> <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeMouseMode=2
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=30

" airline settings
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#left_sep = ' '

" vim-go settings
let g:go_fmt_command = 'goimports'
let g:go_autodetect_gopath = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1

