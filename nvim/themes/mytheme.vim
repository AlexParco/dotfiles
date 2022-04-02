hi clear

set background=dark
set cursorline

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'mytheme'

let s:background='#101010'
let s:bg2='#323232'
let s:foreground='#dcd9c0'
let s:black='#525252'
let s:red='#e19090'
let s:orange='#e6b489'
let s:green='#99b99a'
let s:yellow='#e0db96'
let s:blue='#c1d0dc'
let s:magenta='#daa6c3'
let s:cyan='#a5d2d2'
let s:white='#dcd9c0'
let s:menubg='#262626'
let s:none='NONE' 


function! <sid>hi(group, fg, bg, attr, attrsp)
  " fg, bg, attr, attrsp
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" .  a:fg
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" .  a:bg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" .   a:attr
  endif
  if !empty(a:attrsp)
    exec "hi " . a:group . " guisp=" . a:attrsp
  endif
endfunction

" call <sid>hi(group, fg, bg, gui, guisp)
"
call <sid>hi('Bold',          '',             '',            'bold',    '')
call <sid>hi('Normal',        s:foreground,   s:background,  '',        '')
call <sid>hi('Comment',       s:black,        '',            '',        '')
call <sid>hi('Directory',     s:cyan,         '',            '',        '')
call <sid>hi('ErrorMsg',      s:background,   s:red,         '',        '')

" * visual
call <sid>hi('Visual',        '',             s:black,       '',        '')
call <sid>hi('VisualNOS',     s:red,          '',            '',        '')

" *saerch
call <sid>hi('IncSearch',     s:black,        s:foreground,  'NONE',    '')
call <sid>hi('Search',        s:foreground,   s:bg2,         '',        '')

" *menus
call <sid>hi('PMenu',         s:foreground,   s:menubg,      '',        '')
call <sid>hi('PMenuSel',      s:foreground,   s:black,       '',        '')
call <sid>hi('PmenuSbar',     '',             s:menubg,      '',        '')
call <sid>hi('PmenuThumb',    '',             s:menubg,      '',        '')
call <sid>hi('helpExample',   s:orange,       '',            '',        '')
call <sid>hi('helpCommand',   s:orange,       '',            '',        '')


" FolMethod
call <sid>hi('FoldColumn',    s:foreground,   s:bg2,         '',        '')
call <sid>hi('Folded',        s:foreground,   s:bg2,         '',        '')

" *Constant
call <sid>hi('String',        s:green,        '',            '',        '')
call <sid>hi('Character',     s:green,        '',            '',        '')
call <sid>hi('Number',        s:magenta,      '',            '',        '')
call <sid>hi('Boolean',       s:magenta,      '',            '',        '')
call <sid>hi('Float',         s:magenta,      '',            '',        '')

" *identifier
call <sid>hi('Identifier',    s:red,          '',            '',        '')
call <sid>hi('Function',      s:orange,       '',            '',        '')

" *statement
call <sid>hi('Conditional',   s:red,          '',            '',        '')
call <sid>hi('Repeat',        s:red,          '',            '',        '')
call <sid>hi('Label',         s:red,          '',            '',        '')
call <sid>hi('Exception',     s:red,          '',            '',        '')
call <sid>hi('Operator',      s:green,        '',            '',        '')
call <sid>hi('Keyword',       s:red,          '',            '',        '')

" *type
call <sid>hi('Type',          s:yellow,       '',            'bold',    '')
call <sid>hi('StorageClass',  s:orange,       '',            'bold',    '')
call <sid>hi('Structure',     s:orange,       '',            'bold',    '')
call <sid>hi('Typedef',       s:orange,       '',            'bold',    '')


call <sid>hi('MatchParen',    s:foreground,   s:black,       'bold',    '')

" *Preproc
call <sid>hi('PreProc',       s:foreground,   '',            '',        '')
call <sid>hi('Macro',         s:red,          '',            '',        '')
call <sid>hi('Include',       s:magenta,      '',            '',        '')
call <sid>hi('Define',        s:magenta,      '',            '',        '')
call <sid>hi('PreCondit',     s:magenta,      '',            '',        '')

" *
call <sid>hi('SpecialKey',    s:yellow,       '',            '',        '')
call <sid>hi('Title',         s:green,        '',            '',        '')
call <sid>hi('SignColumn',    s:none,         s:none,        '',        '')
call <sid>hi('VertSplit',     s:background,   s:bg2,  '',        '')

call <sid>hi('LineNr',        s:black,        s:background,  '',        '')
call <sid>hi('CursorLineNr',  s:yellow,       s:background,  '',        '')
call <sid>hi('CursorLine',    s:none,         s:none,  '',        '')
call <sid>hi('SignColumn',    s:none,         s:none,        '',        '')

call <sid>hi('ColorColumn',   '',             '',      '',        '')
call <sid>hi('CursorColumn',  '',             s:red,         '',        '')


call <sid>hi('WarningMsg',    s:red,          '',            '',        '')
call <sid>hi('EndOfBuffer',   s:black,        '',            '',        '')


" * Special
call <sid>hi('Special',       s:magenta,        '',            '',        '')
call <sid>hi('Delimiter',     s:white,        '',            '',        '')
call <sid>hi('Tag',           s:magenta,        '',            '',        '')
call <sid>hi('SpecialComment',s:magenta,        '',            '',        '')

call <sid>hi('SpellBad',      '',                 '',            'undercurl', '')
call <sid>hi('SpellLocal',    '',                 '',            'undercurl', '')
call <sid>hi('SpellCap',      '',                 '',            'undercurl', '')
call <sid>hi('SpellRare',     '',                 '',            'undercurl', '')

" * NvimTree
call <sid>hi('NvimTreeFolderIcon',     s:red,     '',            '',          '')
call <sid>hi('NvimTreeSymlink',        s:red,     '',            '',          '')

" 06080a
