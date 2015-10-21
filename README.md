logbook
=======

A logbook for software engineers.

Let's loosely define a logbook as:

  A record of important events.

0. Install using your method of choice: `michaelavila/vim-logbook`
0. Create the logbook directory: `mkdir $HOME/.logbook`
0. Map the two logbook functions to the keyboard:

    nnoremap <leader>le :call LogbookEditNewEntry()<cr>
    nnoremap <leader>ll :call LogbookListEntries()<cr>

how it works
------------

All log entries are stored in `$HOME/.logbook`. Each entry is a plain text file 
named using the timestamp of the moment the entry was started. The
`LogbookEditNewEntry` function will create this file for you. The
`LogbookListEntries` function will populate vim's quickfix list with all of the
entries in your logbook. You can use the quickfix commands to navigate the
entries.
