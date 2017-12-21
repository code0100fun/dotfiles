"NeoBundle Scripts-----------------------------

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif
set runtimepath+=$HOME/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('$HOME/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'vim-scripts/bufexplorer.zip'
NeoBundle 'vim-scripts/bufkill.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'ervandew/supertab'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'gregsexton/gitv'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'w0rp/ale'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'prettier/vim-prettier'
NeoBundle 'editorconfig/editorconfig-vim'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck
"End NeoBundle Scripts-------------------------

syntax on
filetype plugin indent on
silent! colorscheme SlateDark

let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|DS_Store\|git\|tmp'
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
set tabstop=4
set shiftwidth=4
set expandtab

set exrc
set secure

if has('persistent_undo')
  set undofile
  set undodir=$HOME/.vim/undo
endif

let g:ale_pattern_options = {
\   '.*dist/.*$': {'ale_enabled': 0},
\}

let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tslint'],
\}
"let g:ale_fixers = {}
"let g:ale_fixers['javascript'] = ['prettier']
"let g:ale_fixers['typescript'] = ['prettier']
"let g:ale_fixers['javascript.jsx'] = ['prettier']
"let g:ale_fixers['typescript.tsx'] = ['prettier']
"let g:ale_javascript_prettier_use_local_config = 1

let g:ale_fix_on_save = 0
let g:ale_completion_enabled = 1
let g:ale_maximum_file_size = 300000

map ta :ALEToggle<CR>
