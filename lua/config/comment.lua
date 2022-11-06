vim.cmd([[
augroup commenting_blocks_of_code
	autocmd!
	autocmd FileType c,cpp,java,scala,php                    let b:comment_leader = '// '
	autocmd FileType sh,ruby,python,zsh,bash,cr,conf,fstab   let b:comment_leader = '# '
	autocmd FileType tex                                     let b:comment_leader = '% '
	autocmd FileType mail                                    let b:comment_leader = '> '
	autocmd FileType vim                                     let b:comment_leader = '" '
	autocmd FileType lua                                     let b:comment_leader = '-- '
    
augroup END
noremap <silent> ; :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> . :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
]])
