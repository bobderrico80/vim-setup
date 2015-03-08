execute pathogen#infect()
syntax on
filetype plugin indent on
set number
set smartindent
set smarttab
set showmatch
set foldmethod=marker
set foldlevel=0
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set omnifunc=javascriptcomplete#CompleteJS
set omnifunc=csscomplete#CompleteCSS
set omnifunc=htmlcomplete#CompleteTags
set omnifunc=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "\<c-x>\<c-o>"
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
iabbrev <// </<C-X><C-O>
