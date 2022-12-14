"======================================================================
"
" menu_init.vim -
"
" Created by skywind on 2019/12/26
" Last Modified: 2019/12/26 16:23:48
"
"======================================================================

if has('patch-8.1.2292') == 0 && exists('*nvim_open_win') == 0
	finish
endif

call quickui#menu#reset()

call quickui#menu#install("&1. File", [
			\ [ "Open file\t(\\\\f)", 'call feedkeys("\\\\f")'],
			\ [ "Open grep\t(\\\\g)", 'call feedkeys("\\\\g")'],
			\ [ "Open buffer\t(\\\\b)", 'call feedkeys("\\\\b")'],
			\ [ "View recent files", 'browse oldfiles'],
			\ [ "--", ],
			\ [ "Save\t(:w)", 'write'],
			\ [ "Save all\t(:wa)", 'write'],
			\ [ "--", ],
			\ [ "Exit\t (:qa)|", 'qa' ],
			\ ])

call quickui#menu#install("&2. Symbols", [
		\ [ "Signature help\t(C-k)", 'call feedkeys("\<C-k>")' ],
			\ [ "Definition preview\t(gp)", 'call feedkeys("gp")' ],
			\ [ "Goto declaration\t(gd)", 'call feedkeys("gd")' ],
			\ [ "Show implementations\t(gi)", 'call feedkeys("gi")' ],
			\ [ "--", ],
			\ [ "Show line diagnostic\t(gL)", 'call feedkeys("gL")' ],
			\ [ "Show all diagnostics\t(]d)", 'call feedkeys("gG")' ],
			\ [ "Next diagnostic\t(]d)", 'call feedkeys("]d")' ],
			\ [ "Previous diagnostic\t([d)", 'call feedkeys("[d")' ],
			\ [ "Diagnostic toggle\t(\\dt)", 'call feedkeys("\\dt")' ],
			\ [ "--", ],
			\ [ "Toggle reference highlight\t(\\k)", 'call feedkeys("\\k")' ],
			\ [ "--", ],
			\ [ "Code action\t(<Space>ca)", 'call feedkeys(" ca")' ],
			\ [ "Rename\t(<Space>rn)", 'call feedkeys(" rn")' ],
			\ ])

call quickui#menu#install("&3. View", [
			\ [ "Open 3 splits\t(vsp4)", 'vsp<CR>vsp<CR>vsp<CR>' ],
			\ [ "--", ],
			\ [ "Close all buffers", 'BufferLineGroupClose ungrouped' ],
			\ [ "Close all splits\t(on)", 'on' ],
			\ ])
" call quickui#menu#install("Edit", [
" 			\ ['Copyright &Header', 'call feedkeys("\<esc> ec")', 'Insert copyright information at the beginning'],
" 			\ ['&Trailing Space', 'call StripTrailingWhitespace()', ''],
" 			\ ['Update &ModTime', 'call UpdateLastModified()', ''],
" 			\ ['&Paste Mode Line', 'PasteVimModeLine', ''],
" 			\ ['Format J&son', '%!python -m json.tool', ''],
" 			\ ['--'],
" 			\ ['&Align Table', 'Tabularize /|', ''],
" 			\ ['Align &Cheatsheet', 'MyCheatSheetAlign', ''],
" 			\ ])

" call quickui#menu#install('&Symbol', [
" 			\ [ "&Grep Word\t(In Project)", 'call MenuHelp_GrepCode()', 'Grep keyword in current project' ],
" 			\ [ "--", ],
" 			\ [ "Find &Definition\t(GNU Global)", 'call MenuHelp_Gscope("g")', 'GNU Global search g'],
" 			\ [ "Find &Symbol\t(GNU Global)", 'call MenuHelp_Gscope("s")', 'GNU Gloal search s'],
" 			\ [ "Find &Called by\t(GNU Global)", 'call MenuHelp_Gscope("d")', 'GNU Global search d'],
" 			\ [ "Find C&alling\t(GNU Global)", 'call MenuHelp_Gscope("c")', 'GNU Global search c'],
" 			\ [ "Find &From Ctags\t(GNU Global)", 'call MenuHelp_Gscope("z")', 'GNU Global search c'],
" 			\ [ "--", ],
" 			\ [ "Goto D&efinition\t(YCM)", 'YcmCompleter GoToDefinitionElseDeclaration'],
" 			\ [ "Goto &References\t(YCM)", 'YcmCompleter GoToReferences'],
" 			\ [ "Get D&oc\t(YCM)", 'YcmCompleter GetDoc'],
" 			\ [ "Get &Type\t(YCM)", 'YcmCompleter GetTypeImprecise'],
" 			\ ])

" call quickui#menu#install('&Move', [
" 			\ ["Quickfix &First\t:cfirst", 'cfirst', 'quickfix cursor rewind'],
" 			\ ["Quickfix L&ast\t:clast", 'clast', 'quickfix cursor to the end'],
" 			\ ["Quickfix &Next\t:cnext", 'cnext', 'cursor next'],
" 			\ ["Quickfix &Previous\t:cprev", 'cprev', 'quickfix cursor previous'],
" 			\ ])

" call quickui#menu#install("&Build", [
" 			\ ["File &Execute\tF5", 'AsyncTask file-run'],
" 			\ ["File &Compile\tF9", 'AsyncTask file-build'],
" 			\ ["File E&make\tF7", 'AsyncTask emake'],
" 			\ ["File &Start\tF8", 'AsyncTask emake-exe'],
" 			\ ['--', ''],
" 			\ ["&Project Build\tShift+F9", 'AsyncTask project-build'],
" 			\ ["Project &Run\tShift+F5", 'AsyncTask project-run'],
" 			\ ["Project &Test\tShift+F6", 'AsyncTask project-test'],
" 			\ ["Project &Init\tShift+F7", 'AsyncTask project-init'],
" 			\ ['--', ''],
" 			\ ["T&ask List\tCtrl+F10", 'call MenuHelp_TaskList()'],
" 			\ ['E&dit Task', 'AsyncTask -e'],
" 			\ ['Edit &Global Task', 'AsyncTask -E'],
" 			\ ['&Stop Building', 'AsyncStop'],
" 			\ ])

" call quickui#menu#install("&Git", [
" 			\ ['&View Diff', 'call svnhelp#svn_diff("%")'],
" 			\ ['&Show Log', 'call svnhelp#svn_log("%")'],
" 			\ ['File &Add', 'call svnhelp#svn_add("%")'],
" 			\ ])


" if has('win32')has('win64') || has('win16') || has('win95')
" 	call quickui#menu#install("&Git", [
" 				\ ['--',''],
" 				\ ["Project &Update\t(Tortoise)", 'call svnhelp#tp_update()', 'TortoiseGit / TortoiseSvn'],
" 				\ ["Project &Commit\t(Tortoise)", 'call svnhelp#tp_commit()', 'TortoiseGit / TortoiseSvn'],
" 				\ ["Project L&og\t(Tortoise)", 'call svnhelp#tp_log()',  'TortoiseGit / TortoiseSvn'],
" 				\ ["Project &Diff\t(Tortoise)", 'call svnhelp#tp_diff()', 'TortoiseGit / TortoiseSvn'],
" 				\ ['--',''],
" 				\ ["File &Add\t(Tortoise)", 'call svnhelp#tf_add()', 'TortoiseGit / TortoiseSvn'],
" 				\ ["File &Blame\t(Tortoise)", 'call svnhelp#tf_blame()', 'TortoiseGit / TortoiseSvn'],
" 				\ ["File Co&mmit\t(Tortoise)", 'call svnhelp#tf_commit()', 'TortoiseGit / TortoiseSvn'],
" 				\ ["File D&iff\t(Tortoise)", 'call svnhelp#tf_diff()', 'TortoiseGit / TortoiseSvn'],
" 				\ ["File &Revert\t(Tortoise)", 'call svnhelp#tf_revert()', 'TortoiseGit / TortoiseSvn'],
" 				\ ["File Lo&g\t(Tortoise)", 'call svnhelp#tf_log()', 'TortoiseGit / TortoiseSvn'],
" 				\ ])
" endif

" call quickui#menu#install('&Tools', [
" 			\ ['Compare &History', 'call svnhelp#compare_ask_file()', ''],
" 			\ ['&Compare Buffer', 'call svnhelp#compare_ask_buffer()', ''],
" 			\ ['--',''],
" 			\ ['List &Buffer', 'call quickui#tools#list_buffer("FileSwitch tabe")', ],
" 			\ ['List &Function', 'call quickui#tools#list_function()', ],
" 			\ ['Display &Messages', 'call quickui#tools#display_messages()', ],
" 			\ ['--',''],
" 			\ ["&DelimitMate %{get(b:, 'delimitMate_enabled', 0)? 'Disable':'Enable'}", 'DelimitMateSwitch'],
" 			\ ['Read &URL', 'call menu#ReadUrl()', 'load content from url into current buffer'],
" 			\ ['&Spell %{&spell? "Disable":"Enable"}', 'set spell!', 'Toggle spell check %{&spell? "off" : "on"}'],
" 			\ ['&Profile Start', 'call MonitorInit()', ''],
" 			\ ['Profile S&top', 'call MonitorExit()', ''],
" 			\ ["Relati&ve number %{&relativenumber? 'OFF':'ON'}", 'set relativenumber!'],
" 			\ ["Proxy &Enable", 'call MenuHelp_Proxy(1)', 'setup http_proxy/https_proxy/all_proxy'],
" 			\ ["Proxy D&isable", 'call MenuHelp_Proxy(0)', 'clear http_proxy/https_proxy/all_proxy'],
" 			\ ])

" call quickui#menu#install('&Plugin', [
" 			\ ["&NERDTree\t<space>tn", 'NERDTreeToggle', 'toggle nerdtree'],
" 			\ ['&Tagbar', '', 'toggle tagbar'],
" 			\ ["&Choose Window/Tab\tAlt+e", "ChooseWin", "fast switch win/tab with vim-choosewin"],
" 			\ ["-"],
" 			\ ["&Browse in github\trhubarb", "Gbrowse", "using tpope's rhubarb to open browse and view the file"],
" 			\ ["&Startify", "Startify", "using tpope's rhubarb to open browse and view the file"],
" 			\ ["&Gist", "Gist", "open gist with mattn/gist-vim"],
" 			\ ["&Edit Note", "Note", "edit note with vim-notes"],
" 			\ ["&Display Calendar", "Calendar", "display a calender"],
" 			\ ['Toggle &Vista', 'Vista!!', ''],
" 			\ ["-"],
" 			\ ["Plugin &List", "PlugList", "Update list"],
" 			\ ["Plugin &Update", "PlugUpdate", "Update plugin"],
" 			\ ])

" call quickui#menu#install('Help (&?)', [
" 			\ ["&Index", 'tab help index', ''],
" 			\ ['Ti&ps', 'tab help tips', ''],
" 			\ ['--',''],
" 			\ ["&Tutorial", 'tab help tutor', ''],
" 			\ ['&Quick Reference', 'tab help quickref', ''],
" 			\ ['&Summary', 'tab help summary', ''],
" 			\ ['--',''],
" 			\ ['&Vim Script', 'tab help eval', ''],
" 			\ ['&Function List', 'tab help function-list', ''],
" 			\ ['&Dash Help', 'call asclib#utils#dash_ft(&ft, expand("<cword>"))'],
" 			\ ], 10000)

" let g:quickui_show_tip = 1


"----------------------------------------------------------------------
" context menu
"----------------------------------------------------------------------
let g:context_menu_k = [
			\ ["&Peek Definition\tAlt+;", 'call quickui#tools#preview_tag("")'],
			\ ["S&earch in Project\t\\cx", 'exec "silent! GrepCode! " . expand("<cword>")'],
			\ [ "--", ],
			\ [ "Find &Definition\t\\cg", 'call MenuHelp_Fscope("g")', 'GNU Global search g'],
			\ [ "Find &Symbol\t\\cs", 'call MenuHelp_Fscope("s")', 'GNU Gloal search s'],
			\ [ "Find &Called by\t\\cd", 'call MenuHelp_Fscope("d")', 'GNU Global search d'],
			\ [ "Find C&alling\t\\cc", 'call MenuHelp_Fscope("c")', 'GNU Global search c'],
			\ [ "Find &From Ctags\t\\cz", 'call MenuHelp_Fscope("z")', 'GNU Global search c'],
			\ [ "--", ],
			\ [ "Goto D&efinition\t(YCM)", 'YcmCompleter GoToDefinitionElseDeclaration'],
			\ [ "Goto &References\t(YCM)", 'YcmCompleter GoToReferences'],
			\ [ "Get D&oc\t(YCM)", 'YcmCompleter GetDoc'],
			\ [ "Get &Type\t(YCM)", 'YcmCompleter GetTypeImprecise'],
			\ [ "--", ],
			\ ['Dash &Help', 'call asclib#utils#dash_ft(&ft, expand("<cword>"))'],
			\ ['Cpp&man', 'exec "Cppman " . expand("<cword>")', '', 'c,cpp'],
			\ ['P&ython Doc', 'call quickui#tools#python_help("")', 'python'],
			\ ]

let g:context_menu_F8 = [
			\ [ "--", ],
			\ [ "Signature\t(C-k)", 'call feedkeys("<C-k>")'],
			\ [ "Open grep\t(\\\\g)", 'call feedkeys("\\\\g")'],
			\ [ "Open buffer\t(\\\\b)", 'call feedkeys("\\\\b")'],
			\ [ "--", ],
			\ [ "Save\t(:w)", 'write'],
			\ [ "Save all\t(:wa)", 'write'],
			\ [ "--", ],
			\ [ "Exit\t", 'qa' ],
			\ [ "--", ],
			\ ]

let content = [
            \ [ 'echo 1                              ', 'echo 100' ],
            \ [ 'echo 2', 'echo 200' ],
            \ [ 'echo 3', 'echo 300' ],
            \ [ 'echo 4' ],
            \ [ 'echo 5', 'echo 500' ],
            \]
let opts = {'title': 'select one'}




"----------------------------------------------------------------------
" hotkey
"----------------------------------------------------------------------
nnoremap <silent><space><space> :call quickui#menu#open()<cr>
nnoremap <silent><F8> :call quickui#tools#clever_context('k', g:context_menu_F8, {})<cr>
nnoremap <silent><F9> :call quickui#listbox#open(content, opts)<cr>

