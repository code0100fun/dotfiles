"Vim-plug Scripts-----------------------------
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'vim-scripts/bufkill.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'ervandew/supertab'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-eunuch'
Plug 'ntpeters/vim-better-whitespace'
Plug 'w0rp/ale'
Plug 'leafgarland/typescript-vim'
Plug 'prettier/vim-prettier'
Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-editors/vim-elixir'
Plug 'tpope/vim-obsession'

" Initialize plugin system
call plug#end()

"End Vim-plug Scripts-------------------------

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
