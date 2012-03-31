" Vim color file

set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "blackboard"

hi Normal		guifg=#ffffff ctermfg=15 guibg=#0D1021						 ctermbg=233

hi Comment	    guifg=#aeaeae ctermfg=145 gui=italic 
hi Constant	    guifg=#d7fa41 ctermfg=191 gui=none
hi String       guifg=#64ce3e ctermfg=77 gui=none
hi Statement    guifg=#f8de33 ctermfg=221 gui=none
hi Entity       guifg=#fa6513 ctermfg=202 gui=none
hi Support      guifg=#8fa6cd ctermfg=110 gui=none
hi LineNr       guifg=#aeaeae ctermfg=145 guibg=#000000 ctermbg=0 gui=none 
hi Title		guifg=#f6f3e8 ctermfg=7 guibg=NONE	gui=bold
hi NonText 		guifg=#808080 ctermfg=244 guibg=#0D1021	gui=none ctermbg=233

hi Visual       gui=reverse
hi VertSplit    guifg=#444444 ctermfg=238 guibg=#444444 ctermbg=238
hi StatusLine   guifg=#f6f3e8 ctermfg=7 guibg=#444444 ctermbg=238 gui=italic
hi StatusLineNC guifg=#857b6f ctermfg=243 guibg=#444444 ctermbg=238
hi SpecialKey	guifg=#808080 ctermfg=244 guibg=#343434 ctermbg=236 gui=none


hi link Define          Entity
hi link Function        Entity

hi link Structure       Support
hi link Special         Support
hi link Test            Support

hi link Character       Constant
hi link Number          Constant
hi link Boolean         Constant

hi link Float           Number

hi link Conditional     Statement
hi link StorageClass    Statement
hi link Operator        Statement
hi link Statement       Statement
