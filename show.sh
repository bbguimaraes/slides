#!/bin/sh

# Commands in order:
# - enable forward navigation using space.
# - macro to filter lines through bash. Considers only text from the second word
#   on. This is so the line "    $ ls" is executed just as "ls". See the macro
#   for details.

vim slides/* \
    -c 'nnoremap <space> :n<cr>' \
    -c 'let @b = "yyp_wd0V:!bash\<cr>\<c-l>"'
