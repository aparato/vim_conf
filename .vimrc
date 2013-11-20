"--- Turn off vi compatibility ---"
set nocompatible
set mouse=a


"---- Color in terminal ----"
set term=screen-256color

"--- Have jj escape insert mode ---"
inoremap jj <Esc>

"--- vundle settings making your life easier ---"
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"------- Packages to use ------"
Bundle 'gmarik/vundle'
Bundle 'vim-scripts/delimitMate.vim.git'
Bundle 'vim-scripts/Gundo.git'
Bundle 'vim-scripts/L9.git'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'tpope/vim-surround.git'
Bundle 'vim-scripts/Tagbar.git'
Bundle 'mattn/emmet-vim.git'
Bundle 'Valloric/YouCompleteMe.git'
Bundle 'vexxor/zenburn.vim.git'
Bundle 'Lokaltog/vim-powerline.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'SirVer/ultisnips'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimproc.vim'

syntax on
filetype on
filetype plugin indent on

" --- SuperTab --- "
let g:SuperTabDefaultCompletionType = "context"

"--- easytags ---"
" let g:easytags_cmd = "/usr/local/Cellar/ctags/5.8/bin/ctags"
" set tags=./tags;
" let g:easytags_dynamic_files = 1

"--- GUI window configurations ---"
set winaltkeys=no
set guioptions-=T
set guifont=Ubuntu\ Mono\ 10


"---Remap key---"
let mapleader = ","

"---Fold Method---"
set foldmethod=indent
set foldlevel=99

"---compatibility and security---"
set nocompatible
set modelines=0
set ttimeoutlen=100

"---Set Color Scheme---"
colors zenburn

"---Tabs configuration---"
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"---Vim editor settings---"
set modelines=5
set mousemodel=popup
set pastetoggle=<F2>
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=longest:full,full
set cursorline
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
set nobackup
set noswapfile


"---Vim search improvements---"
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<CR>

"---Vim Longlines mess---"
set textwidth=100
set formatoptions=qrn1

"---Mappings to show hidden characters---"
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

"---Match it configuration---"
runtime macros/matchit.vim

"---filetype identification---"
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType c setlocal omnifunc=ccomplete#Complete
set completeopt=menuone,longest,preview,menu

"---Indentation according to filetype---"
autocmd FileType ruby set tabstop=2|set shiftwidth=2|set noexpandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

"---Working with windows---"
set winminheight=0
nnoremap <leader>wv <C-w>v<C-w>l
nnoremap <leader>ws <C-w>s<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"---Keybind NerdTree---"
map <leader>nt :NERDTreeToggle<CR>

"---keybind for tagbar---"
map <leader>tb :TagbarToggle<CR>

"--- Gundo mappings ---"
map <leader>g :GundoToggle<CR>

"--- ack ---"
nmap <leader>a <Esc>:Ack!

"---Store Backup files in a central place---"
set backup
set backupdir=~/tmp
set dir=~/tmp

"------ Misc. Bindings -----"
"- Codefolding remap -"
nnoremap <space> za

"--- Create mappings to edit and source vimrc ---"
nmap <leader>vr :tabedit $MYVIMRC<CR>

"--- Fuzzy Finder ---"
map <leader>ff :FufFile **/<CR>
map <leader>fb :FufBuffer<CR>

" --- Unite and stuff ---"
nnoremap <C-p> :Unite file_rec/async<cr>
nnoremap <space>/ :Unite grep:.<cr>
let g:unite_source_history_yank_enable=1
nnoremap <space>y :Unite history/yank<cr>
nnoremap <space> :Unite -quick-match buffer<cr>
