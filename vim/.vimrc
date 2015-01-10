" set line numbers
set nu
set clipboard=unnamed

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
filetype plugin indent on

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

" customize airline tabline
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'

" add plugin for poweline to vim
set rtp+={/Users/som/Library/Fonts}/powerline/bindings/vim

" run php
:autocmd FileType php noremap <C-M> :w!<CR>:!/usr/bin/php %<CR>

" autocomplete in vim
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags " for HTML
autocmd FileType php set omnifunc=phpcomplete#CompletePHP " for PHP
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS " for javascript
autocmd FileType css set omnifunc=csscomplete#CompleteCSS " for CSS
" for Python
if has("autocmd")
        autocmd FileType python set complete+=k/home/shakir/.vim/pydiction-0.5/pydiction isk+=.,(
endif " has("autocmd"
