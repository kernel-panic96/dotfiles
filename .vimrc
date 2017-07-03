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
Plugin 'OmniSharp/omnisharp-vim'

call vundle#end()
filetype plugin indent on

syntax on


colorscheme default
"colorscheme monokai
hi Folded ctermbg=NONE
set hlsearch
set foldmethod=marker
set number
set relativenumber
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)

"Cursor shape based on mode
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

let mapleader = " "

nnoremap <F4> :NERDTreeToggle<CR>
nnoremap <CR> :nohlsearch<CR><CR>

"Move lines with the arrow keys
inoremap <Down> <ESC>ddpi
inoremap <Up> <ESC>ddkkpi
nnoremap <Down> ddp
nnoremap <Up> ddkkp

"C comments
imap // /*  */<Esc>hhi

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

nmap o o<Esc>
nmap O O<Esc>
nmap 0 ^

"Replace tabs with spaces
set tabstop=4 shiftwidth=4 expandtab
set backspace=indent,eol,start

"make mappings
"nnoremap <Leader>t :!make && gdb -batch -ex tests<CR>
nnoremap <F5> :make<CR><CR>
nnoremap <F6> :clist<CR>
nnoremap <F7> :cnext<CR>:clist<CR>
nnoremap <F8> :cprevious<CR>:clist<CR>

nnoremap ; :
