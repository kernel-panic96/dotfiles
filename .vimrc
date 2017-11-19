set nocompatible
filetype off

set encoding=utf-8
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'sickill/vim-monokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
"Plugin 'OmniSharp/omnisharp-vim'

call vundle#end()
filetype plugin indent on

syntax on


colorscheme default
"colorscheme monokai

set hlsearch
set nowrap
set foldmethod=indent
set number
set relativenumber
set ruler
set foldmethod=syntax
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)

"Cursor shape based on mode
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

let mapleader = " "
nnoremap <CR> :nohlsearch<CR><CR>
filetype plugin indent on    " required

syntax on

"Move lines with the arrow keys
inoremap <Down> <ESC>ddpi
inoremap <Up> <ESC>ddkkpi
nnoremap <Down> ddp
nnoremap <Up> ddkkp

"C comments
imap ** /*  */<Esc>hhi

"Open the file under the cursor in a vertical split (like <Ctrl-W> f)
map gv :vertical wincmd f<CR>
map gs <C-W>f

nmap <F1> ^i//<Esc>
nmap <F2> ^xx


""Tabs bindings
nmap <Leader>l :tabnext<CR>
nmap <Leader>h :tabprevious<CR>
nmap <Leader>n :tabnew<CR>
"nmap td :tabclose<CR>

nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>t :NERDTreeToggle<CR>
nmap <C-Home> :tabnew<CR>

""Window bindings
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l
nmap <C-h> <C-W>h
nmap <C-n>h :vsp 
nmap <C-n>v :sp 

nmap O O<Esc>
nmap 0 ^
"Tabs bindings
nnoremap <C-PageUp> :tabnext<CR>
nnoremap <C-PageDown> :tabprevious<CR>

nnoremap tl :tabnext<CR>
nnoremap th :tabprevious<CR>
nnoremap tn :tabnew<CR>
nnoremap td :tabclose<CR>

nnoremap <C-End> :tabclose<CR>
nnoremap <C-Home> :tabnew<CR>

"Display line numbering
set number
set relativenumber

"Replace tabs with spaces
set tabstop=4 shiftwidth=4 expandtab
set backspace=indent,eol,start

"nnoremap <Leader>t :!make && gdb -batch -ex tests<CR>
"Display time and date in the ruler bar
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)

"make mappings
nnoremap <F5> :make<CR><CR>
nnoremap <F6> :clist<CR>
nnoremap <F7> :cnext<CR>:clist<CR>
nnoremap <F8> :cprevious<CR>:clist<CR>

nnoremap ; :
"set laststatus=2
"set statusline=%f "tail of the filename

hi Folded ctermbg=NONE

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
