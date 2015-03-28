" My Vim filetypes

if exists("did_load_filetypes")
    finish
endif

augroup filetypedetect

" Markdown
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.md setf markdown 

" JQuery
au BufNewFile,BufRead jquery.*.js set ft=javascript syntax=jquery

" CoffeeScript
au BufWritePost *.coffee silent CoffeeMake! -b | redraw!

" Markdown
au BufNewFile,BufRead *.eyaml setf eyaml 

augroup END

