" this is the config for graphical vim macvim or gvim
" Yuri Fieldman hexHighlight http://www.vim.org/scripts/script.php?script_id=2937
if exists('*HexHighlight()')
	  nmap <leader>h :call HexHighlight()<Return>
endif

"amenu icon=/usr/local/pixmaps/foo_icon.xpm ToolBar.Foo :echo "Foo"<CR>
"imenu ToolBar.b2u <Esc>:source ~/.vim/scripts/beta2unicode.vim<CR>

tmenu ToolBar.taglist Toggle display of the Taglist
amenu ToolBar.taglist :TlistToggle<CR>

tmenu ToolBar.latex Compile Part of a LaTeX file
amenu ToolBar.latex :TPartComp <CR>

tmenu ToolBar.view_tex View Part of a LaTeX file
amenu ToolBar.view_tex :TPartView <CR>
