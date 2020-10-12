scriptencoding utf-8

if exists('g:loaded_stdodump')
	finish
endif
let g:loaded_stdodump = 1

set cpo&vim

" dump selected area into stdout
function! stdodump#dumpTextIntoStdout (mode)
	if a:mode == "v"
		let [line_start, column_start] = getpos("'<")[1:2]
		let [line_end, column_end] = getpos("'>")[1:2]
		let lines = getline(line_start, line_end)
		if len(lines) == 0
			echo ''
			return
		endif
		let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
		let lines[0] = lines[0][column_start - 1:]
		let s = join(lines, "\n")
		echo "\n\n\n" .s ."\n\n\n"

	elseif a:mode == "n"
		echo "\n\n\n" .getline('.') ."\n\n\n"
	endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo


