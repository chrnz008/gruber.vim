" Name:         gruber
" Description:  port of gruber-darker theme
" Author:       Charan Mandati <charancuz008@gmail.com>

highlight clear

if exists("syntax_on")
    syntax reset
endif

set background=dark
let g:colors_name = "gruber"

"links
hi! link SignColumn FoldColumn
hi! link Terminal Normal
hi! link Boolean Number
hi! link TitleBar Normal

"palette
let s:fgnd    = ["#e4e4ef", "254"]
let s:fg1     = ["#f4f4ff", "255"]
let s:fg2     = ["#f5f5f5", "255"]
let s:white   = ["#ffffff", "231"]
let s:black   = ["#000000", "16" ]
let s:bg_1    = ["#101010", "233"]
let s:bgnd    = ["#181818", "234"]
let s:bg1     = ["#282828", "235"]
let s:bg2     = ["#453d41", "238"]
let s:bg3     = ["#484848", "239"]
let s:bg4     = ["#52494e", "240"]
let s:red_1   = ["#c73c3f", "160"]
let s:red     = ["#f43841", "196"]
let s:red1    = ["#ff4f58", "203"]
let s:green   = ["#73c936", "76" ]
let s:yellow  = ["#ffdd33", "220"]
let s:brown   = ["#cc8c3c", "172"]
let s:quartz  = ["#95a99f", "108"]
let s:niagara2= ["#303540", "236"]
let s:niagara1= ["#565f73", "60" ]
let s:niagara = ["#96a6c8", "147"]
let s:wisteria= ["#9e95c7", "98" ]

let s:bold      = "bold"
let s:italic    = "italic"
let s:underline = "underline"
let s:undercurl = "undercurl"

function! s:hl(group, attrs) abort
    if has_key(a:attrs, "fg")
        let a:attrs["guifg"] = a:attrs["fg"][0]
        let a:attrs["ctermfg"] = a:attrs["fg"][1]
        unlet a:attrs["fg"]
    endif

    if has_key(a:attrs, "bg")
        let a:attrs["guibg"] = a:attrs["bg"][0]
        let a:attrs["ctermbg"] = a:attrs["bg"][1]
        unlet a:attrs["bg"]
    endif

    if has_key(a:attrs, "style")
        let a:attrs["gui"] = a:attrs["style"]
        let a:attrs["cterm"] = a:attrs["style"]
        unlet a:attrs["style"]
    endif

    let l:defaults = { "guifg": "NONE", "guibg": "NONE", "gui": "NONE", "guisp": "NONE",
                     \ "ctermfg": "NONE", "ctermbg": "NONE", "cterm": "NONE" }
    call extend(l:defaults, a:attrs)

    let l:command = "highlight" . " " . a:group
    for name in keys(l:defaults)
        let l:command .= " " . name . "=" . l:defaults[name]
    endfor

    execute l:command
endfunction

" :source $VIMRUNTIME/syntax/hitest.vim
" :help group-name
" :help highlight-default

call s:hl("ColorColumn",    { "bg": s:bg1 })
call s:hl("Constant",       { "fg": s:quartz })
call s:hl("CursorLine",     { "bg": s:bg1 })
call s:hl("DiffAdd",        { "fg": s:green })
call s:hl("DiffChange",     { "fg": s:niagara })
call s:hl("DiffDelete",     { "fg": s:red })
call s:hl("DiffText",       { "fg": s:niagara, "style": s:underline })
call s:hl("Directory",      { "fg": s:niagara, "style": s:bold })
call s:hl("EndOfBuffer",    { "fg": s:bgnd })
call s:hl("Error",          { "fg": s:red })
call s:hl("ErrorMsg",       { "fg": s:red })
call s:hl("FoldColumn",     { "fg": s:brown, "bg": s:bgnd})
call s:hl("Folded",         { "fg": s:brown, "bg": s:bg1, "style": s:italic })
call s:hl("Ignore",         { "fg": s:bgnd })
call s:hl("LineNr",			{ "fg": s:bg4})
call s:hl("MatchParen",     { "bg": s:bg4,"style": s:bold })
call s:hl("MoreMsg",        { "fg": s:green })
call s:hl("NonText",        { "fg": s:bg2 })
call s:hl("Normal",         { "fg": s:fgnd, "bg": s:bgnd })
call s:hl("Pmenu",          { "fg": s:fgnd, "bg": s:bg1 })
call s:hl("PmenuSbar",      { "bg": s:bg1 })
call s:hl("PmenuSel",       { "fg": s:bgnd, "bg": s:yellow, "style": s:bold })
call s:hl("PmenuThumb",     { "bg": s:bgnd })
call s:hl("Question",       { "fg": s:niagara })
call s:hl("Special",        { "fg": s:fgnd })
call s:hl("SpecialChar",    { "fg": s:quartz })
call s:hl("SpecialComment", { "fg": s:brown })
call s:hl("SpecialKey",     { "fg": s:niagara })
call s:hl("SpellBad",       { "guisp": s:red[0], "style": s:undercurl })
call s:hl("SpellCap",       { "guisp": s:yellow[0], "style": s:undercurl })
call s:hl("SpellLocal",     { "guisp": s:niagara[0], "style": s:undercurl })
call s:hl("SpellRare",      { "guisp": s:wisteria[0], "style": s:undercurl })
call s:hl("Statement",      { "fg": s:yellow, "style": s:bold })
call s:hl("StatusLine",     { "fg": s:fgnd, "bg": s:bg1, "style": s:bold })
call s:hl("StatusLineNC",   { "fg": s:fgnd, "bg": s:bg1 })
call s:hl("Title",          { "fg": s:fgnd })
call s:hl("Todo",           { "fg": s:brown, "style": s:italic })
call s:hl("Underlined",     { "style": s:underline })
call s:hl("VertSplit",      { "fg": s:bg1 })
call s:hl("WarningMsg",     { "fg": s:yellow })
call s:hl("WildMenu",       { "fg": s:bgnd, "bg": s:yellow, "style": s:bold })
call s:hl("diffAdded",      { "fg": s:green })
call s:hl("diffRemoved",    { "fg": s:red })
call s:hl("diffSubname",    { "fg": s:niagara })
call s:hl("TabLine",        { "fg": s:fgnd, "bg": s:bgnd })
call s:hl("TabLineSel",     { "fg": s:fgnd, "bg": s:bg4, "style": s:bold })
call s:hl("TabLineFill",    { "bg": s:bg1 })

"syntax
call s:hl("Comment",        { "fg": s:brown })
call s:hl("String",         { "fg": s:green })
call s:hl("Character",      { "fg": s:green })
call s:hl("Identifier",     { "fg": s:fg1 })
call s:hl("Function",       { "fg": s:niagara })
call s:hl("Keyword",        { "fg": s:yellow ,"style": s:bold })
call s:hl("PreProc",        { "fg": s:quartz })
call s:hl("Type",           { "fg": s:quartz })
call s:hl("Number",         { "fg": s:white  })
