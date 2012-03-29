" [O., K.]=0 color scheme

"
" Name:         OK_scheme.vim
" Maintainer:   O. K.
" Last Change:  2012-03-29 Jeu 02:16 
" Version:      0.0

set number
"highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "Mali_Light"

"highlight vimString guifg=#009900

" TODO: override default 'TODO' colors
"highlight Todo guifg=#990000 guibg=NONE gui=NONE
"set cul cuc

if has("gui_running")

	set background=dark
	"GUI Colors
	highlight Normal guifg=White   guibg=#0B1022 ctermbg=233
	highlight Cursor guifg=Black   guibg=Yellow
	highlight CursorLine guibg=#191E2F ctermbg=235
	highlight LineNr guibg=#323232 ctermbg=236 guifg=#888888 ctermfg=102
	highlight Folded guifg=#f1f3e8 ctermfg=7 guibg=#444444 ctermbg=238
	highlight Pmenu guibg=#84A7C1 ctermbg=109

	"General Colors
	highlight Comment guifg=#AEAEAE ctermfg=145
	highlight Constant guifg=#CAFE1E ctermfg=190
	highlight Keyword guifg=#FFDE00 ctermfg=220
	highlight String guifg=#00D42D ctermfg=40
	highlight Type guifg=#84A7C1 ctermfg=109
	highlight Identifier guifg=#00D42D ctermfg=40 gui=NONE
	highlight Function guifg=#FF5600 ctermfg=202 gui=NONE
	highlight clear Search
	highlight Search guibg=#1C3B79 ctermbg=24
	highlight PreProc guifg=#FF5600 ctermfg=202

	highlight htmlH1 guifg=#990000 guibg=NONE gui=NONE
	highlight link htmlH4 htmlH1

end
