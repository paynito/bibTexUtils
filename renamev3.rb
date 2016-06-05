#! /usr/bin/ruby
require 'bibtex'
require 'fileutils'
require 'active_support/all'


Dir.getwd
Dir.glob("*")

b = BibTeX.open('references.bib')
fileFirst = "{:Users/AbuDavid/school/bibliography/bibtex-pdf/"
fileLast = ".pdf:pdf}"
for i in b 
  if i.year == nil
    i.year = 2016
  end
end
b.save()
for i in b
  puts i.author
 # i.key = i.author.split(",")[0]+i.year
 # file = fileFirst + i.key + fileLast
end
b.save

