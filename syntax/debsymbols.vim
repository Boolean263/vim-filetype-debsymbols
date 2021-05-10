" Vim syntax file
" Language: Debian dpkg symbols files
" Maintainer: DAP
" Latest Revision: 2021-05-10
"
if exists("b:current_syntax")
    finish
endif


syn match dsymSrcLib    '[^[:space:]]\+'  display contained
syn match dsymLib       '^[^[:space:]]\+' display nextgroup=dsymSrcLib skipwhite

syn match dsymSymbolLine '^ .*'           display contains=dsymSymbolTag,dsymSymbolName,dsymSymbolVer,dsymSymbolLibVer,dsymAt
syn match dsymSymbolName '[^@]\+'         display contained nextgroup=dsymAt
syn match dsymAt        '@'               display contained nextgroup=dsymSymbolVer
syn match dsymSymbolVer '[^[:space:]]\+'  display contained nextgroup=dsymSymbolLibVer skipwhite
syn match dsymSymbolLibVer '[^[:space:]]\+$' display contained
syn match dsymSymbolTag '^[[:space:]]\+([^)]\+)' display contained nextgroup=dsymSymbolName


syn match dsymMissing   '^#MISSING: .*#'  display
syn match dsymComment   '^#.*' display contains=dsymMissing
syn match dsymInclude   '^#include.*' display
syn match dsymBad       '^[[:space:]]#.*'

hi def link dsymComment     Comment
hi def link dsymMissing     Todo
hi def link dsymInclude     Include

hi def link dsymLib         Statement
hi def link dsymSrcLib      Constant

hi def link dsymSymbolTag   Special
hi def link dsymSymbolName  Identifier
hi def link dsymAt          Operator
hi def link dsymSymbolVer   Constant
hi def link dsymSymbolLibVer Type

hi def link dsymBad         Error

let b:current_syntax = "debsymbols"
