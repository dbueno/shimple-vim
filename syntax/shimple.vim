" Vim syntax file
" Language: shimple from Soot
" Modeled after java.vim and c.vim

" quit when a (custom) syntax file already loaded
if exists("b:current_syntax")
    finish
endif

syn case match

setlocal iskeyword+=@
setlocal iskeyword+=#
setlocal iskeyword+=$

syn region shimpleFold start="{" end="}" transparent fold


" Useful shimple keywords
syn keyword shimpleStatement goto return virtualinvoke interfaceinvoke specialinvoke staticinvoke exitmonitor entermonitor
syn keyword shimpleOperator new
syn keyword shimpleConditional if
syn keyword shimpleType boolean char byte short int long float double
syn keyword shimpleType void
syn keyword shimpleConstant null
syn keyword shimpleBoolean true false
syn keyword shimpleScopeDecl public protected private abstract
syn keyword shimpleMethodDecl synchronized throws
syn keyword shimpleClassDecl extends implements interface
syn keyword shimpleClassDecl enum
syn keyword shimpleStorageClass static synchronized transient volatile final strictfp serializable
syn keyword shimpleExceptions throw catch with from to
syn match shimpleThis "@this\>"
syn match shimpleCaught "@caughtexception\>"
syn match shimpleClassDecl "^class\>"
syn match shimpleClassDecl "[^.]\s*\<class\>"ms=s+1
syn match shimpleClassDecl "@interface\>"

" syn region shimplePhi start=+Phi(+ end=+)+
syn keyword shimplePhi Phi

syn region shimpleString start=+"+ skip=+\\"+ end=+"+

syn match shimpleNumber	"\<\(0[bB][0-1]\+\|0[0-7]*\|0[xX]\x\+\|\d\(\d\|_\d\)*\)[lL]\=\>"
syn match shimpleNumber	"\(\<\d\(\d\|_\d\)*\.\(\d\(\d\|_\d\)*\)\=\|\.\d\(\d\|_\d\)*\)\([eE][-+]\=\d\(\d\|_\d\)*\)\=[fFdD]\="
syn match shimpleNumber	"\<\d\(\d\|_\d\)*[eE][-+]\=\d\(\d\|_\d\)*[fFdD]\=\>"
syn match shimpleNumber	"\<\d\(\d\|_\d\)*\([eE][-+]\=\d\(\d\|_\d\)*\)\=[fFdD]\>"

" regions of a qualified name, like a method or field name 

hi def link shimpleStorageClass StorageClass
hi def link shimpleMethodDecl shimpleStorageClass
hi def link shimpleClassDecl shimpleStorageClass
hi def link shimpleScopeDecl shimpleStorageClass

hi def link shimpleConstant Constant
hi def link shimpleStatement Statement
hi def link shimpleOperator Operator
hi def link shimpleCaught Keyword
hi def link shimpleExceptions Exception
hi def link shimplePhi Operator
hi def link shimpleThis Special

hi def link shimpleType Type
hi def link shimpleString String
hi def link shimpleNumber Number
hi def link shimpleBoolean Boolean

let b:current_syntax = "shimple"

