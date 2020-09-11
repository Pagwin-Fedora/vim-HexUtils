" Vim global plugin providing a few commands that make working with hex values slightly easier
" Maintainer:	Spencer Powell <pagwin@pagwin.xyz>
" License:      This file is placed in the public domain.

if exists("g:loaded_HexUtils")
    finish
endif

function! ProgramHex()
	let num = input("Hex you want to write: ")
	exe ":normal a0x" . num
endfunction

function! Hex2Decimal()
	let num = input("Hex you want written as decimal: ")
	exe "normal a" . str2nr(num,16)
endfunction

command Hex2Dec call Hex2Decimal()
command Phex call ProgramHex()
