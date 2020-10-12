scriptencoding utf-8

if exists('g:loaded_stdodump')
    finish
endif
let g:loaded_stdodump = 1

let s:save_cpo = &cpo
set cpo&vim

vnoremap <Space><Space>y :<C-U>call stdodump#dumpTextIntoStdout('v')<CR>
nnoremap <Space><Space>y :call stdodump#dumpTextIntoStdout('n')<CR>


let &cpo = s:save_cpo
unlet s:save_cpo
