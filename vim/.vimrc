" set line numbers
set nu

" map keys
" map open nerdtree shortcut tree
map <C-n> :NERDTreeToggle<CR>
map <C-b> mzgg=G`z<CR>
nnoremap <silent> <F7> :bprev<CR> 
nnoremap <silent> <F9> :bnext<CR> 

" auto split windows into equal splits
autocmd VimResized * wincmd =

" pathogen execute command
execute pathogen#infect()
syntax on
filetype pluginindent on

" to enable the mouse reporting for all modes
if has("mouse")
    set mouse=a
endif

" to customize tabs
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" to copy paste
nnoremap <silent> <F8> :set invpaste paste?<CR> " Toggle paste mode for code that's already indented
set pastetoggle=<F8>

nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sv :source $MYVIMRC<CR>

" to see statusline of airline all the time
set laststatus=2

" automatically show all buffers when only one tab open
let g:airline#extensions#tabline#enabled = 1
"
" add plugin for poweline to vim
set rtp+={/Users/som/Library/Fonts}/powerline/bindings/vim

" run php
:autocmd FileType php noremap <C-M> :w!<CR>:!/usr/bin/php %<CR>

