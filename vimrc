let mapleader = ","
set nu
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2
set laststatus=2
set smarttab
set colorcolumn=80

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

" Remove trailling spaces
autocmd BufWritePre * :%s/\s\+$//e
