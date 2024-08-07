# My Vim Keymaps
 
[quickref](https://neovim.io/doc/user/quickref.html)
[explorer](https://gist.github.com/danidiaz/37a69305e2ed3319bfff9631175c5d0f)


### My remaps
```sh
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
    C-w |                              resize current window to all width
    C-s _                              resize current window to all height
    C-w =                              resize all windows to equal size
    C-w r                              rotate windows
    C-w x                              swap windows
    C-w c | :close                     close window
    C-w n | :new                       new window
    C-w v | :vnew                      new vertical window
    :echo @% | C-g                     show current file
    :e <file> | .                      opens buffer
    :b Tab                             show list of buffers
    :b1                                opens buffer number 1 at :ls
    :bd                                closes buffer
    :bufdo bd                          closes all buffers
    C-^                                alternate to last buffer
    :buffers                           show buffer list
    :ls                                show buffer list
    <leader>bf                         show buffer list on Telescope (use dd to kill buffer)  
    :sp +10                            Split from line 10
    C-w T                              moves current window to new tabpage
    C-w gf                             goes to definition on new tabpage
    :topleft vs                        creates vertical window top left
    :botright sp                       creates horizontal split on bottom
```

##### Resizing
```sh
    :res 10 | +10                      resizes split
    :vert res 10 | +10                 resizes vertical split
```

##### Scroll
````sh
    :set scrollbind                    turn on scroll sync with another windows
    :set noscrollbind                  turn off scroll
````

### Tab Pages
```sh
    C-w T                              open current split to new Tab
    Alt+j                              go to previous tab
    Alt+h                              got to next tab
    Alt+"+"                            new tab
    Alt+"-"                            close current tab
    :h tabpage                         help about tabpages
    :tabs                              list of tab pages
    :tab split                         opens current buffer in new tab page 
    :tab help tabpage                  opens command at new tab page
    :tabnew | r !ls                    create new tab and output ls command to there
    :tabnew (A-t)                      new tab
    :tabc (A-c)                        close current tab
    :tabo                              close all others tab
    gt (A-l)                           go to next tab
    gT (A-h)                           go to previous tab
    :tabn (A-t)                        go to next tab
    :tabfir (A-f)                      go to first tab
    :tablas (A-g)                      go to last tab
    :tabm 1 (A-k)                      move tab to the right
    :tabm -1 (A-j)                     move tab to the left
```
##### Full window for current split
```sh
:tabm $                            moves current tabpage to end
:tab split                         creates a new tabpage for current window
:wq                                closes tabpage e return to last tabpage
```

### Editing

##### Find, change, repeat
Using gn
````sh
    /text                              find text
    cgnText2                           changes to Text2
.                                  repeats to next occurrence
``````

##### Insert Mode
```sh
    C-d                                indent to left
    C-t                                indent to right
    C-ox                               execute a command "x" and return to insert mode
    C-w                                deletes word before cursor
    C-u                                deletes all line before cursor
    C-r <register>                     inserts register contents
    C-r =                              Expression register, ex: =system('ls')
    C-r <register>                     Inserts register content to buffer
```

### Normal Mode
```sh
    Enter                              Moves next line in first character
    +                                  Moves next line in first character
    - (minus)                          Moves previous line in first character
    H                                  cursor to top of screen
    L                                  cursor to bottom of screen
    M                                  cursor to middle of screen
    ZZ                                 write and close window
    ZQ                                 discard changes and close window
    ~                                  toggle case of char or selection 
    %                                  jumps to the matching ({[]})
    G                                  moves to last line
    gg                                 moves to first line
    3gg                                moves to line 3
    zz                                 moves current line to middle of screen
    zt                                 moves current line to top of screen
    zb                                 moves current line to bottom of screen
    z=                                 show spelling corrections
    C-g                                shows current file path
    C-y                                Moves screen up one line
    C-e                                Moves screen down one line
    C-u                                Moves cursor & screen up ½ page
    C-d                                Moves cursor & screen down ½ page
    C-b                                Moves screen up one page, cursor to last line
    C-f                                Moves screen down one page, cursor to first line
    %                                  Moves to end or begin of structure (tag or function)
    gu<space>                          Lower case current char (can be guw to lower case a word)
    gU<space>                          Upper case current char (can be guw to lower case a word)
    gw                                 Formats text to wrap text witdh. Keeps cursor
    gq                                 Same gw but moves cursor to the end 
    ga                                 shows details about the character under cursor
    c/test                             Deletes until "test" word and insert mode
    [{                                 jumps to beginning general function
    ]}                                 jumps to end of general function
    [m                                 jumps to previous function beginning
    ]m                                 jumps to next function beginning
    [M                                 jumps to previous function end
    ]M                                 jumps to next function end
    g_                                 jumps to last char of line
    f(                                 moves cursor to next (
    t(                                 moves cursor before (
    ;                                  repeats last f or t motion
```

#### Indent text
```sh
    >>                                 indent (move right) line one shiftwidth
    <<                                 de-indent (move left) line one shiftwidth
    >%                                 indent a block with () or {} (cursor on brace)
    <%                                 de-indent a block with () or {} (cursor on brace)
    >ib                                indent inner block with ()
    >at                                indent a block with <> tags
    3==                                re-indent 3 lines
    =%                                 re-indent a block with () or {} (cursor on brace)
    =iB                                re-indent inner block with {}
    gg=G                               re-indent entire buffer
    ]p                                 paste and adjust indent to current line
```

### Visual Mode
```sh
    gq                                 formats text with textwidth setting
    vg_                                selects until last char in line
    0vg_                               selects from 0 to last printable char of line
    ^vg_                               selects from first char until last printable of line
    v0                                 selects until 0 position
    v_                                 selects until first char
    vi{                                selects content within {}
```

### Command Mode
```sh
    q:                                 shows command history
    :com                               shows user commands
    :norm <commands>                   executes commands like normal mode
    :'<,'>norm I//                     inserts comment at selection lines
    /<enter>                           repeat last search
    :silent put=execute('reg')       fill curent buffer with internal vim command
```
#### Run external commands
````sh
    :%!jq .                            formats json file with jq external command
``````

### Terminal Mode
```sh
    :term                              opens a terminal
    C-\ C-n                            exits from insert in terminal mode 
```

### Substitution
```sh
    :10,11s#^#//                       insert commentary // in lines 10 and 11
```
* To copy and paste text to command:
- Yank text, type C-r" to paste at command line

### Tips
##### Abbreviations
```sh
    :ab ycp Claudinei                  creates abbreviation for the text
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
    C-K                                (ins mode)hover documentation
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
    Leader q                           set loclist.
```

### Recordings
```sh
    Exemple to generate todo list:
    Type:
    1. [ ] 
    Record: q a y y C-a C-a q
    Execute: 10@a
    Result: Numbered list
```

### Marks
```sh
    :marks                             shows all marks.
    :marks abc                         shows a,b,c marks
    :delmarks!                         deletes all lowercase marks
    ma                                 creates a mark with name "a"
    'a                                 jumps to mark "a"
    dma                                deletes mark "a"
    mZ                                 creates global marks (upper case) to use between buffers
```

### Changes
Allow show every changes and navigate one by one.
```sh
    :changes                               shows change list
    g;                                     jumps to the last change you made
    g,                                     jumps forward through the change list
```

### Folding
```sh
    :set foldlevel=2                   sets fold level to show
    za                                 toggles current open fold   
    zc                                 closes the curent fold
    zo                                 opens the current fold
```

### Registers
Registers:
- 0:                               last cutted text
- 1-9:                             last 9 cutted 
- a-z:                             custom registers
```sh
    :h registers                       shows help about registers
    :dis                               shows all registers content
    :Telescope registers               shows all registers
    :let @a=“content”                  sets register content manually
    “xp                                paste from register x
    “xy                                yank to refister x
    C-r<register>                      paste register in insert mode
    "0p                                paste, the coppied text, multile times
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

### Surround
```sh
    ysw'                               surround word with '
    yss{                               surrounds line with { }
    cs"'                               change current surround from " to '
    cst                                changes surround tag
    ds'                                deletes surround '
    dst                                deletes surround tag
    S'                                 surrounds selection by '
    S{                                 surrounds selection and indent content
    Sb                                 surrounds selection with braces "()"
```

### Explorer (netrw)
[commands](https://gist.github.com/danidiaz/37a69305e2ed3319bfff9631175c5d0f)
```sh
    i                                  show banner
    :Ex                                open explore
    :Ve                                open explore in vertical split
    :He                                open explore in horizontal split at bottom
    :Se                                open explore in horizontal split at top
    %                                  new file
    d                                  new directory
    R                                  rename file or directory
    D                                  delete
    v                                  open current file at new vertical 
    gh                                 toggles the hidden files
    mt                                 assign "target directory"
    mf                                 marks a file or dir to multiple actions 
    mu                                 unmark all items
    mc                                 copy the marked items to "target dir" 
    mm                                 move the marked items to "target dir" 
    mx                                 runs a external command on marked items 
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
