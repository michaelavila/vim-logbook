let g:logbook_dir         = "$HOME/.logbook/"
let g:logbook_entry_file  = g:logbook_dir . "entry"

function! Trim(string)
  return substitute(a:string, '\n\+$', '', '')
endfunction

function! LogbookEditNewEntry()
  execute "edit "  . g:logbook_entry_file
endfunction

function! LogbookSignEntry()
  let signedEntry = g:logbook_dir . Trim(system("date +%s")) . ".asc"
  execute "!gpg --output " . signedEntry . " --clearsign " . g:logbook_entry_file
  silent execute "!echo '' > " . g:logbook_entry_file
endfunction

function! LogbookListEntries()
  let entries = []
  for entry in split(globpath(g:logbook_dir, "*.asc"), "\n")
    let path = split(entry, '/')
    let timestamp = path[len(path)-1][0:9]

    let filename = entry
    let pattern = Trim(system('date +"%m/%d/%Y (%r)" -d @' . timestamp))
    let text = readfile(entry)[3]

    let entries = [{"pattern":pattern, "filename":filename, "text":text}] + entries
  endfor

  call setqflist(entries)
  if len(entries) > 0
    execute "copen"
  endif
endfunction
