function! neomake_python_config#before() abort
let g:neomake_python_enabled_makers = ['flake8']
let g:neomake_python_python_exe = 'python3'
endfunction
