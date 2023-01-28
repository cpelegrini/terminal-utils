let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd /Volumes/ExtraData/Projects/CPelegrini/_git/terminal-utils
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +154 neovim/cpelegrini/My-Vim-Keymaps.md
badd +58 neovim/cpelegrini/lua/cpelegrini/packer.lua
argglobal
%argdel
edit /Volumes/ExtraData/Projects/CPelegrini/_git/terminal-utils
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 73 + 111) / 222)
exe 'vert 2resize ' . ((&columns * 73 + 111) / 222)
exe 'vert 3resize ' . ((&columns * 74 + 111) / 222)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd /Volumes/ExtraData/Projects/CPelegrini/_git/terminal-utils
wincmd w
argglobal
if bufexists(fnamemodify("/Volumes/ExtraData/Projects/CPelegrini/_git/terminal-utils/neovim/cpelegrini/My-Vim-Keymaps.md", ":p")) | buffer /Volumes/ExtraData/Projects/CPelegrini/_git/terminal-utils/neovim/cpelegrini/My-Vim-Keymaps.md | else | edit /Volumes/ExtraData/Projects/CPelegrini/_git/terminal-utils/neovim/cpelegrini/My-Vim-Keymaps.md | endif
if &buftype ==# 'terminal'
  silent file /Volumes/ExtraData/Projects/CPelegrini/_git/terminal-utils/neovim/cpelegrini/My-Vim-Keymaps.md
endif
balt /Volumes/ExtraData/Projects/CPelegrini/_git/terminal-utils/neovim/cpelegrini/lua/cpelegrini/packer.lua
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 154 - ((19 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 154
normal! 05|
lcd /Volumes/ExtraData/Projects/CPelegrini/_git/terminal-utils
wincmd w
argglobal
if bufexists(fnamemodify("/Volumes/ExtraData/Projects/CPelegrini/_git/terminal-utils/neovim/cpelegrini/lua/cpelegrini/packer.lua", ":p")) | buffer /Volumes/ExtraData/Projects/CPelegrini/_git/terminal-utils/neovim/cpelegrini/lua/cpelegrini/packer.lua | else | edit /Volumes/ExtraData/Projects/CPelegrini/_git/terminal-utils/neovim/cpelegrini/lua/cpelegrini/packer.lua | endif
if &buftype ==# 'terminal'
  silent file /Volumes/ExtraData/Projects/CPelegrini/_git/terminal-utils/neovim/cpelegrini/lua/cpelegrini/packer.lua
endif
balt /Volumes/ExtraData/Projects/CPelegrini/_git/terminal-utils/neovim/cpelegrini/My-Vim-Keymaps.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
11
normal! zo
let s:l = 60 - ((28 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 60
normal! 0
lcd /Volumes/ExtraData/Projects/CPelegrini/_git/terminal-utils
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 73 + 111) / 222)
exe 'vert 2resize ' . ((&columns * 73 + 111) / 222)
exe 'vert 3resize ' . ((&columns * 74 + 111) / 222)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
