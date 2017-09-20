"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax highlighting for this tutorial
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

if exists("b:current_syntax")
   finish
endif

" define keywords
" syntax keyword tcgKeyword autogenerate
syntax match commandLine "\$.*$"
highlight link commandLine Keyword

" define comments
syntax match tutorialPoint "[0-9]).*$"
syntax match tutorialHeader "\v/\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+/"   " C   style comments
highlight link tutorialPoint String
highlight link tutorialHeader Comment

let b:current_syntax = "tutorial"
