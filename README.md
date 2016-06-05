# bibTexUtils
ruby utils for bibtex

bibParse.rb 

creates a citekey from AuthorYYYY and sets the filename to citekey.pdf
If there are multiple files with the same citekey after this process, open in bibDesk where the duplicate citekeys
will be red.  Then fix by hand. Rename as AuthorYYYYb.pdf, AuthorYYYYc.pdf ....

rename.rb 

renames files from Mendeley format to AuthorYYYYb.pdf, AuthorYYYYc.pdf ....

Ganzeboom, Smith_1992.pdf  -> Ganzeboom1992.pdf
Ganzeboom_1992.pdf         -> Ganzeboom1992b.pdf
Ganzeboom, Smith, Jones_1992.pdf -> Ganzeboom1992c.pdf
Avraham, Smith_1930.pdf    -> Avraham1930.pdf
Arian, Smith_2002.pdf      -> Arian2002.pdf
