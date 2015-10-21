logbook
=======

A logbook for software engineers.

Let's loosely define a logbook as:

  A record of important events.

0. Install using your method of choice: `michaelavila/vim-logbook`
0. Create the logbook directory: `mkdir $HOME/.logbook`
0. Map the two logbook functions to the keyboard:

```shell
nnoremap <leader>le :call LogbookEditNewEntry()<cr>
nnoremap <leader>ll :call LogbookListEntries()<cr>
```

why?
----

Your logbook is where you record important events. The length and detail of your entries will vary. Routine tasks might take just a sentence or two while larger tasks can take up to several pages. Learning when to be brief and when to spell out an entry in detail is a skill that, like any other, will take time to acquire. Here are some of the many great reasons (so-called prompts) to write an entry in your logbook:

- planning work
- working problems
- recording events
- "discussing" results (with yourself)
- checking progress
- revewing literature
- learning new tools and processes
- highlighting things you don't understand
- describing ideas
- tracking hours (if you're into that kind of thing)
- etc

This content will become your meetings, emails, commit messages, tools, blog posts, essays, books, and countless other things you generate from your hard-won information. Throughout the day, your logbook will provide two valuable benefits:

0. To help you not forget (obvious)
0. To free up your mind   (not obvious)

The moment you've written something down in a safe place, you've decreased your chances of losing that information. The peace of mind that comes with increasing the likelihood that you'll take care of the things you've written down will free up your mind to focus more attention on the probems in front of you.

how it works
------------

All log entries are stored in `$HOME/.logbook`. Each entry is a plain text file 
named using the timestamp of the moment the entry was started. The
`LogbookEditNewEntry` function will create this file for you. The
`LogbookListEntries` function will populate vim's quickfix list with all of the
entries in your logbook. You can use the quickfix commands to navigate the
entries.
