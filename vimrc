set autoindent
set encoding=utf-8
set expandtab
set modelines=0
set nocompatible
set number
set shiftwidth=4
set softtabstop=4
set tabstop=4
set textwidth=79
set wrap

hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red

syntax enable

augroup markdown
    autocmd BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:>
    autocmd BufRead *.md set ai formatoptions=tcroqn2 comments=n:>
augroup END
