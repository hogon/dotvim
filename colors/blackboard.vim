" Vim color scheme
"
" Name:         blackboard.vim
" Maintainer:   Ben Wyrosdick <ben.wyrosdick@gmail.com> 
" Last Change:  20 August 2009
" License:      public domain
" Version:      1.4

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let g:colors_name = "blackboard"

if has("gui_running")
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

  "HTML Colors
  highlight link htmlTag Type
  highlight link htmlEndTag htmlTag
  highlight link htmlTagName htmlTag

  "Ruby Colors
  highlight link rubyClass Keyword
  highlight link rubyDefine Keyword
  highlight link rubyConstant Type
  highlight link rubySymbol Constant
  highlight link rubyStringDelimiter rubyString
  highlight link rubyInclude Keyword
  highlight link rubyAttribute Keyword
  highlight link rubyInstanceVariable Normal

  "Rails Colors
  highlight link railsMethod Type
end
