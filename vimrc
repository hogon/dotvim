" vimrc de O. K.
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


set nocompatible
syntax on
colorscheme OK_scheme 	 "OK_scheme My own colorsheme
set number       " numeroter les lignes 
set showcmd      " printer les commandes utilisées
set ignorecase   " ignorer les minuscules et majuscules
set incsearch    " activer la recherche actives, le texte cherché s'active lorsque lors de la saisie
"set smartcase   " cherche toutes les combinaisons du mot cherché et est sensible au majuscule
set mouse=a      " utilisation de la souris
"set smartindent


set cursorline   " pour colorer la ligne ou se trouve le curseur
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

hi CursorLine   cterm=bold

set hidden
set foldmethod=syntax " to use folding


"set modeline
set laststatus=2    "this enable the status line show the status line
" now set it up to change the status line based on mode
if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
  au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
endif
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 


" Spell check
function! ToggleSpell_english()
    if !exists("b:spell")
        setlocal spell spelllang=en_us
        let b:spell = 1
    else
        setlocal nospell
        unlet b:spell
    endif
endfunction

nmap <F3> :call ToggleSpell_english()<CR>
imap <F3> <Esc>:call ToggleSpell_english()<CR>a


function! ToggleSpell_french()
if !exists("b:spell")
        setlocal spell spelllang=fr
        let b:spell = 1
    else
        setlocal nospell
        unlet b:spell
    endif
endfunction

nmap <F4> :call ToggleSpell_french()<CR>
imap <F4> <Esc>:call ToggleSpell_french()<CR>a

nmap ,s i\section{}<ESC>
imap ,s \section{}

" To insert timestamp, press F3.
nmap <F2> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F2> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" To save, press ctrl-s.
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" Show autocomplete menus.
set wildmenu

" Indentation automatique
set ai

" pour inclure des fichiers additionnels
"if filereadable("~/.vimrc_ok")
"source ~/.vimrc_ok
"endif

":map <MouseDown> <C-Y>
":map <S-MouseDown> <C-U>
":map <MouseUp> <C-E>
":map <S-MouseUp> <C-D>

"set nocompatible
"filetype plugin indent on


"if has("gui_running")
"	 set fuoptions=maxvert,maxhorz
"	 au GUIEnter * set fullscreen
"	 else
"	let Tlist_Inc_Winwidth=0
"endif




"# from vimcast.org
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
  
" Use the same symbols as TextMate for tabstops and EOLs
 set listchars=tab:▸\ ,eol:¬

" Source the vimrc file after saving it
 if has("autocmd")
	 autocmd bufwritepost .vimrc source $MYVIMRC
 endif

 let mapleader = ","
 nmap <leader>v :tabedit $MYVIMRC<CR>


 " set cc=132 " for fortran

 "REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
 filetype plugin on

 " IMPORTANT: win32 users will need to have 'shellslash' set so that latex
 " can be called correctly.
 set shellslash

 " IMPORTANT: grep will sometimes skip displaying the file name if you
 " search in a singe file. This will confuse Latex-Suite. Set your grep
 " program to always generate a file-name.
 set grepprg=grep\ -nH\ $*

 " OPTIONAL: This enables automatic indentation as you type.
 filetype indent on

 " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
 " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
 " The following changes the default filetype back to 'tex':
 let g:tex_flavor='latex'

 " configure tags - add additional tags here or comment out not-used ones
 set tags+=~/.vim/tags/cpp

 " build tags of your own project with Ctrl-F12
 map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

 " OmniCppComplete
 let OmniCpp_NamespaceSearch = 1
 let OmniCpp_GlobalScopeSearch = 1
 let OmniCpp_ShowAccess = 1
 let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
 let OmniCpp_MayCompleteDot = 1 " autocomplete after .
 let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
 let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
 let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

 " automatically open and close the popup menu / preview window
 au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
 set completeopt=menuone,menu,longest,preview


 " Utilisation des taglist
 nnoremap <silent> <F8> :TlistToggle<CR>
 "map <F7> :vertical wincmd f<CR>


 " To use copy paste with vim
 " nmap <C-V> "+gP
 " imap <C-V> <ESC><C-V>i
 " vmap <C-C> "+y 

 " don't auto-close <> pair in shell files
 autocmd FileType typoscript,zsh,sh let b:AutoClosePairs = AutoClose#DefaultPairsModified("", "<")
 " don't auto-close <<>> pair in c file
 autocmd FileType c,cpp let b:AutoClosePairs = AutoClose#DefaultPairsModified("", "<<")

 " to print in pdf
 set pdev=pdf
 set printoptions=paper:A4, syntax:y

 nmap <silent> <F7> :NERDTreeToggle<CR>

 command! Status echo "All systems are go!"

let Tlist_Use_Right_Window = 1

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title"

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


