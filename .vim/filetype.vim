" markdown filetype file
if exists("did\_load\_filetypes")
 finish
endif
 augroup markdown
  au! BufRead,BufNewFile *.markdown   setfiletype markdown
  au! BufRead,BufNewFile *.md         setfiletype markdown
augroup END
