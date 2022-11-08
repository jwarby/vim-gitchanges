if exists("g:loaded_gitchanges")
  finish
endif

let g:loaded_gitchanges = '1.0.1'

augroup gitchanges
    " Automatically close all gitchanges buffers when closing files
    autocmd BufUnload COMMIT_EDITMSG silent call gitchanges#close()

    " Automatically open gitchanges when we start committing
    if !exists("g:gitchanges_auto_open_on_commit") || g:gitchanges_auto_open_on_commit != 0
      autocmd FileType gitcommit silent call gitchanges#open()
    endif
augroup END

" Add commands
command! GitChangesOpen call gitchanges#open()
command! GitChangesClose call gitchanges#close()
