"-------- General --------
set clipboard=unnamedplus
set cursorline
set expandtab
set expandtab
set ignorecase
set iskeyword-=@,48-57,_,192-255
set linebreak
set mouse=a
set number
set relativenumber
set shiftround
set scrolloff=8
set shiftwidth=2
set showmode
set sidescrolloff=8
set smartcase
set splitbelow
set splitright
set tabstop=2
"set termguicolors
set timeoutlen=300
set undofile
set undolevels=10000
set updatetime=200
set virtualedit=block
set wildmode=longest:full,full
set wrap

"-------- Keymap --------
inoremap jj <Esc>
vnoremap jj <Esc>
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>
inoremap ;; <Esc>A;
inoremap <esc> <cmd>noh<cr><esc>
nnoremap <esc> <cmd>noh<cr><esc>
vnoremap < <gv
vnoremap > >gv

"-- Scroll
nnoremap <C-e> <C-d>

"-- Window
nnoremap <A-n> <C-w>h
nnoremap <A-i> <C-w>l
nnoremap <A-u> <C-w>k
nnoremap <A-e> <C-w>j
nnoremap <leader>ws <C-W>v

"-- Buffer
nnoremap <S-n> <cmd>bprevious<cr>
nnoremap <S-i> <cmd>bnext<cr>

"-- Colemak
nnoremap k i
vnoremap k i
nnoremap K I
vnoremap K I
nnoremap l u
vnoremap l u
nnoremap L U
vnoremap L U
nnoremap h e
vnoremap h e
nnoremap H E
vnoremap H E
nnoremap n h
vnoremap n h
nnoremap N H
vnoremap N H
nnoremap E J
vnoremap E J
nnoremap U K
vnoremap U K
nnoremap I L
vnoremap I L
nnoremap i l
nnoremap j n
nnoremap J N
nnoremap <expr> u v:count == 0 ? 'gk' : 'k'
vnoremap <expr> u v:count == 0 ? 'gk' : 'k'
nnoremap <expr> e v:count == 0 ? 'gj' : 'j'
vnoremap <expr> e v:count == 0 ? 'gj' : 'j'
