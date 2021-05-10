" Detect a file as a Debian symbols file
au BufRead,BufNewFile symbols       setfiletype debsymbols
au BufRead,BufNewFile *.symbols     setfiletype debsymbols
