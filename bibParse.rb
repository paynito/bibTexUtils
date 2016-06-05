#!/Users/AbuDavid/.rvm/rubies/ruby-head/bin/ruby
require 'fileutils'
require 'active_support/all' #needed for the !include operator
require 'bibtex'
# list = Dir.glob('*.pdf')
b = BibTeX.open('./ofer-class.bib')
fileFirst = ":Users/AbuDavid/school/bibliography/bibtex-pdf/"
fileLast = ".pdf:pdf"
for i in b
  puts i.author
  puts i.year
  i.key = i.author.split(",")[0]+i.year
  file = fileFirst + i.key + fileLast
end
b.save
 # put b[i].year
       # b[i].key = b[i].author.split(",")[0]+b[i].year
 # puts "key = #{b[i].key}"
 # b[i].file = fileFirst+key+fileLast
 # puts "file = #{b[i].file}"
#end
