" Include the system settings
:if filereadable( "/etc/vimrc" )
   source /etc/vimrc
:endif

" Enable 256 colors in terminal
set t_Co=256

syntax on
" Use default colorscheme
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

behave xterm
set selectmode=mouse

" allow tilde (~) to act as an operator -- ~w, etc.
set tildeop

" set hidden
set backspace=2

set exrc
set formatoptions=croq
set isfname=@,48-57,/,.,-,_,+,,,$,~

set incsearch
set hlsearch
set ignorecase
set smartcase
set nowrapscan
set infercase

set report=0
set nostartofline
set guioptions-=T
set cmdheight=2

set laststatus=2           " always show statusline 
set statusline=[%02n]%f%m%r%h%w%=[%l,%v]\ [Total=%L]\ [%P]
set title                  " Enable default VIM title

" The first tab completes as much as it can, second tab displays a list of 
" options, and the third tab will present a list that allows you to scroll 
" through and select filenames beginning with that prefix.
set wildmode=longest,list,full
set wildmenu
   
set colorcolumn=85
" Colors 232 - 255 are various shades of gray
highlight ColorColumn ctermbg=24

set viminfo='20,\"50	" read/write a .viminfo file, don't store more
			" than 50 lines of registers

set tagrelative
set ruler
set showmatch
set showcmd
set shortmess=atI
" set showfulltag
set includeexpr=fnamemodify(v:fname,':t')

set errorfile=kop.q
set errorformat=%f:%l:%m
" set highlight=8r,db,es,hs,mb,Mr,nu,rs,sr,tb,vr,ws
set sessionoptions=blank,buffers,curdir,options,winsize,resize,winpos

" Don't include ( as a part of word while searching
set iskeyword-=(

" Function key mapping

nnoremap <silent> <F2> :nohlsearch<CR>

nnoremap <silent> <F5> :BufExplorer<CR>
let g:bufExplorerSortBy = "number"

"nnoremap <silent> <F6> :call QuickfixToggle()<CR>
"nnoremap <silent> <F6> :python toggleQuickfix()<CR>

map + <c-w>s   " Split horizontally
map ) <c-w>v   " Split vertically

map gj <C-W>j
map gk <C-W>k
map gh <C-W>h
map gl <C-W>l
map gw <C-W>w
map g= <C-W>=

map go <C-W>o  " Make this only window available

map g> <C-W>15>  " Increase width of current window
map g< <C-W>15<  " Decrease width of current window
map g+ <C-W>15+  " Increase height of current window
map g- <C-W>15-  " Decrease height of current window

" It is painful to type ':'
map ,w :w<CR>
map ,qq :q!<CR>
map ,mc :MarkClear<CR>

" Switch buffers
nnoremap ,a <C-^>

" Hit these key sequence before and after pasing to avoid 'stepping' 
" effect when pasting buffer
set pastetoggle=,tp

"   always show the buffernumber when using ^G
noremap <C-G> 2<C-G>

"   Unset K that makes a loookup of word under cursor (do nothing)
noremap K     :<BS>

" Minimal number of columns for the current window.
set winwidth=86

" vim-maximizer
let g:maximizer_default_mapping_key = '\<space>'

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'

Plug 'airblade/vim-gitgutter'

Plug 'inkarkat/vim-mark'
Plug 'inkarkat/vim-ingo-library'

" Initialize plugin system
call plug#end()

let g:mwDefaultHighlightingPalette = 'extended'

