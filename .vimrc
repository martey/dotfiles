set autoindent
set expandtab
set number
set shiftwidth=4
set softtabstop=4
set tabstop=4
set textwidth=79

syntax enable

augroup markdown
    autocmd BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:>
augroup END

" from http://news.ycombinator.com/item?id=2006511
augroup GPG
    au!
    " decrypt before reading
    au BufReadPre *.gpg       set bin viminfo= noswapfile
    " decrypted; prepare for editing
    au BufReadPost *.gpg      %!gpg
    au BufReadPost *.gpg      set nobin

    " encrypt
    au BufWritePre *.gpg      set bin
    au BufWritePre *.gpg      %!gpg -ear martey@marteydodoo.com
    " encrypted; prepare for continuing to edit the file
    au BufWritePost *.gpg     silent undo | set nobin
augroup END
