# My Vim Keymaps

[quickref](https://neovim.io/doc/user/quickref.html)
[explorer](https://gist.github.com/danidiaz/37a69305e2ed3319bfff9631175c5d0f)


### My remaps
```sh
,                                  enter in command mode (:)
```
### Neovim Parameters
```sh
nvim -O3                           opens vim with 3 windows split vertically
nvim -v                            show version
```
### Windows & Buffers
```sh
C-w s | :sp                        splits horizontally
C-w v | :vs                        splits vertically
C-w q | :wq                        quit window
C-w r                              rotate windows
C-w x                              swap windows
C-w c | :close                     close window
C-w n | :new                       new window
C-w v | :vnew                      new vertical window
:echo @% | C-g                     show current file
:e <file> | .                      opens buffer
:b Tab                             show list of buffers
:bd                                closes buffer
C-^                                alternate to last buffer
:buffers                           show buffer list
:ls                                show buffer list
:sp +10                            Split from line 10
C-w T                              moves current window to new tabpage
```
##### Resizing
```sh
:res 10 | +10                      resizes split
:vert res 10 | +10                 resizes vertical split
```
### Tab Pages
```sh
:h tabpage                         help about tabpages
:tabs                              list of tab pages
:tab split                         opens current buffer in new tab page 
:tabnew                            new tab
:tabc                              close current tab
:tabo                              close all others tab
gt                                 go to next tab
gTab                               go to last accessed tab
:tabn                              go to next tab
:tabm 1                            move tab to the right
```
### Explorer
```sh
:Ex                                open explore
:Ve                                open explore in vertical split
:He                                open explore in horizontal split at bottom
:Se                                open explore in horizontal split at top
%                                  new file
d                                  new directory
R                                  rename file or directory
D                                  delete
v                                  open current file at new vertical 
```
### Telescope
```sh
telescope.nvim
Normal mode + ?
Leader Space                       buffer list
Leader tf                          Search file
Leader th                          Search help
Leader tw                          Grep current word
Leader tw                          Grep
Leader tg                          Diagnostics
Leader ?                           Recent opened files
Leader n                           Next item
Leader p                           Previous item
```
### Editing
##### Insert Mode
```sh
C-d                                indent to left
C-t                                indent to right
C-o                                execute a command and return to insert mode
```
### Normal Mode
```sh
H                                  cursor to top of screen
L                                  cursor to bottom of screen
M                                  cursor to middle of screen
ZZ                                 write and close window
ZQ                                 discard changes and close window
~                                  toggle case of char or selection 
zz                                 moves current line to middle of screen
zt                                 moves current line to top of screen
zb                                 moves current line to bottom of screen
C-y                                Moves screen up one line
C-e                                Moves screen down one line
C-u                                Moves cursor & screen up ½ page
C-d                                Moves cursor & screen down ½ page
C-b                                Moves screen up one page, cursor to last line
C-f                                Moves screen down one page, cursor to first line
%                                  Moves to end or begin of structure (tag or function)
```
### Visual Mode
```sh
gq                                 formats text with textwidth setting
```
##### Command Mode
```sh
q:                                 shows command history
```
### Tips
##### Abbreviations
```sh
:ab ycp Claudinei                  creates abbreviation for the text
```
##### Full window for current split
```sh
:tabm $                            moves current tabpage to end
:tab split                         creates a new tabpage for current window
:wq                                closes tabpage e return to last tabpage
```
### Language and Completion
##### LSP
```sh
Leader rn                          rename object
Leader ca                          code action
gd                                 goto definition
gr                                 show references
gI                                 goto implementation
Leader D                           type definition
Leader rs                          list of document symbols
Leader ws                          list of workspace symbols
K                                  hover documentation
C-K (ins mode)hover documentation
C-k                                signature help
gD                                 goto declaration
Leader wa                          add folder to workspace
Leader wr                          remove folder from workspace
Leader wl                          list folder of workspace
:Format                            format buffer
```
##### CMP
```sh
C-Space                            complete 
[d                                 goto prev diagnostic
]d                                 goto next diagnostic
Leader e                           open float
Leader q                           set loclist
```
### Registers
```sh
:h registers                       shows help about registers
:dis                               shows all registers content
:Telescope registers               shows all registers
:let @a=“content”                  sets register content manually
```
### Syntax
```sh
“xp                                paste from register x
“xy                                yank to refister x
```
### Sessions
```sh
‘0                                 opens last position when close vim
:mksession <name>                  saves complete current session
nvim -S <name>                     opens session
```
### Views
```sh
:mkview                            save current view for current file
:loadview                          load saved view for the current file
:mkview 1                          specify 1-9 views for file
```
