let g:logbook_dir = "$HOME/.logbook/"

function! LogbookEditNewEntry()
  execute "edit " . g:logbook_dir . Trim(system("date +%s"))
endfunction

function! LogbookListEntries()
  let qfitems = []
  for entry in split(globpath(g:logbook_dir, "*"), "\n")
    let path = split(entry, '/')

    let filename = entry
    let pattern = Trim(system('date +"%m-%d-%Y (%r)" -d @' . path[len(path)-1]))
    let text = readfile(entry)[0]

    let qfitems += [{"pattern":pattern, "filename":filename, "text":text}]
  endfor

  call setqflist(qfitems)

  if len(qfitems) > 0
    execute "copen"
  endif
endfunction
