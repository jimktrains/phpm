nnoremap <F2> :echomsg system("phpm --short ".shellescape(expand("<cword>")))<CR>
nnoremap <F3> :execute ("!phpm  ".shellescape(expand("<cword>")))<CR>

