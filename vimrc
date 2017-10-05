let mapleader = ","
set nu
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2
set laststatus=2
set smarttab
set colorcolumn=80
set conceallevel=0
set clipboard=unnamedplus
set conceallevel=0

execute pathogen#infect()
syntax on
filetype plugin indent on

map <leader>n :NERDTreeToggle<CR>
map <leader>g :YcmGenerateConfig<CR>

let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_extra_conf_globlist = ['~/.ycm_extra_conf.py']
let g:ycm_confirm_extra_conf = 0

let g:indentLine_enabled = 1
let g:rainbow_active = 1

call glaive#Install()
Glaive codefmt plugin[mappings]

" Remove trailling spaces
" autocmd BufWritePre * :%s/\s\+$//e

let g:rainbow_conf = {
  \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
  \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
  \   'operators': '_,_',
  \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
  \   'separately': {
  \       '*': {},
  \       'tex': {
  \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
  \       },
  \       'lisp': {
  \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
  \       },
  \       'vim': {
  \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
  \       },
  \       'html': {
  \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
  \       },
  \       'css': 0,
  \   }
  \}
