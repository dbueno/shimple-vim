if exists("b:current_syntax")
    finish
endif

syn region String start=+"+ skip=+\\"+ end=+"+ 
