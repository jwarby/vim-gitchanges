function! gitchanges#open()
  let changes = system("git diff --cached")

  " We're probably amending just a commit message, so show the commit's contents
  if empty(changes)
    let changes = system("git diff HEAD^")
  endif

  " Show changes in a new vsplit
  bo vnew

  " Give it a name so we can automatically close the buffer later
  :silent! file gitchanges

  " Show the changes, set the syntax and delete the leading blank line
  put=changes
  setlocal syntax=diff
  :normal ggdd

  " Set nomodified so that Vim doesn't prompt us when we try to close the file
  " without saving
  setlocal nohidden nomodified
endfunction

function! gitchanges#close()
  if buflisted('gitchanges') != 0
    :bunload! gitchanges
  endif
endfunction
