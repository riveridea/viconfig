" Vim
" An example for a gvimrc file.
" The commands in this are executed when the GUI is started.
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.gvimrc
"             for Amiga:  s:.gvimrc
"  for MS-DOS and Win32:  $VIM\_gvimrc
" Make external commands work through a pipe instead of a pseudo-tty
" set noguipty
" set the X11 font to use
" set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1
" Make command line two lines high
"set ch=2
set ch=1
" Open searched result in new tab
map <C-Enter> <C-w><C-]><C-w>T

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
" Only do this for Vim version 5.0 and later.
if version >= 500
  " I like highlighting strings inside C comments
  let c_comment_strings=1
  " Switch on search pattern highlighting.
  "set hlsearch
  " while typing a search pattern show it
  set is
  hi IncSearch guibg=yellow guifg=black gui=NONE

  " For Win32 version, have "K" lookup the keyword in a help file
  "if has("win32")
  "  let winhelpfile='windows.hlp'
  "  map K :execute "!start winhlp32 -k <cword> " . winhelpfile <CR>
  "endif

  set splitright

  " Hide the mouse pointer while typing
  set mousehide
  " Line numbers
  set number
  
  set wildmenu
  set lazyredraw 

  " move vertically by visual line
  nnoremap j gj
  nnoremap k gk

  " unix font
  "set guifont=
  "set guifont=Courier\ 10\ Pitch\ 12 
  "set guifont=Fira\ Mono\ 11.6 
  set guifont=Source\ Code\ Pro\ Regular\ 10.5 
  " windows font
  "set guifont=Lucida_Console:h8:cANSI
  set lines=70
  set columns=170
  set guioptions=agimrtT
  set autoindent    "always set autoindenting on
  set ts=8 sw=4 smarttab
  set autoread
  "set ruler
  set laststatus=2  "Always
  cnoremap Tab <C-L><C-D>
  " allow switching between buffers without saving
  set hidden
  " Set nice colors

  set backup
  set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
  set backupskip=/tmp/*,/private/tmp/*
  set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
  set writebackup

  " Constants are not underlined but have a slightly lighter background
  " ---- old stuff
  "highlight Normal guibg=beige
  "highlight Cursor guibg=Black guifg=Green

  " ---- never used
  "highlight Normal guibg=grey90
  "highlight Cursor guibg=Green guifg=NONE
  "highlight NonText guibg=grey80
  "highlight Constant gui=NONE guibg=grey95
  "highlight Special gui=NONE guibg=grey95

  " ---- new stuff
  syntax enable
  "set background=light
  " colorscheme solarized
  "colorscheme torte
 set number
"set guifont=Consolas\ 11.6 
"set guifont=Courier\ 10\ Pitch\ 11
"set guifont=fixed\ 11
"set guifont=Droid\ Sans\ Mono\ 12
"set guifont=PT\ Mono\ 11
"colorscheme murphy
"colorscheme vividchalk 
"colorscheme pablo 
"colorscheme summerfruit256 
"colorscheme delek 
"colorscheme github 
"colorscheme pyte 
  "highlight Normal guifg=#f0f0f0 guibg=#48613d
  "highlight Cursor guibg=Black guifg=Green
  "highlight Comment guifg=#dd689f
  "highlight Comment guifg=Cyan
  "highlight Constant guifg=#ff8000
  "highlight Special guifg=#dd689f
  "highlight Statement guifg=#d798f8
  "highlight Statement guifg=#d79800
  "highlight PreProc guifg=#7984ce
  "highlight PreProc guifg=#d6b0a0
  "highlight Type guifg=#ece84a
  "highlight Search guifg=Black guibg=Yellow
  "highlight Visual guifg=grey55 guibg=Yellow
  "highlight Directory guifg=yellow
  "highlight NonText guifg=yellow
  "highlight Normal guifg=white guibg=black
  
  "highlight   Pmenu         guibg=salmon4 gui=bold
  "highlight   PmenuSel      ctermfg=0 ctermbg=7
  "highlight   PmenuSbar     ctermfg=7 ctermbg=0
  "highlight   PmenuThumb    ctermfg=0 ctermbg=7
endif

set visualbell

"execute pathogen#infect()
