function! CocSetup(info)
  " Initial setup
  call coc#util#install()

  " Install extensions on installation, update otherwise
  if a:info.status == 'installed' || a:info.force
    call coc#add_extension('coc-css', 'coc-emoji', 'coc-highlight', 'coc-html', 'coc-json', 'coc-prettier', 'coc-eslint', 'coc-stylelint', 'coc-tslint-plugin', 'coc-tsserver', 'coc-ultisnips', 'coc-yaml')
  else
    execute 'CocUpdateSync'
  endif
endfunction

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
Plug 'neoclide/coc.nvim', {'do': function('CocSetup')}

" Initialize plugin system
call plug#end()

"End Vim-plug Scripts-------------------------

" make vim's completion like vs code
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-y>" :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" let g:coc_snippet_next = '<Tab>'
" let g:coc_snippet_prev = '<S-Tab>'

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

"allow comments in JSON docs (needed by coc.nvim)
autocmd FileType json syntax match Comment +\/\/.\+$+
