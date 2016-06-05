#!/Users/AbuDavid/.rvm/rubies/ruby-head/bin/ruby
require 'fileutils'
require 'active_support/all' #needed for the !include operator
list = Dir.glob('*.pdf')
list.each_with_index { |src, index|
puts "   Source file: #{src}"

puts "Index in array: #{index}"
  b = ["1","my","1999"]
  match = /^(?<author>[a-z-]+).*_(?<year>[\d()]+)/i.match(src)
  c = b[1]+b[2]+".pdf"
  d = match[1]+match[2]+".pdf"   #this failed for 30 mins if any files have no final year
newList=[]
# newList[index] = d
aleph = ("a".."z").to_a
counter=1
if newList.!include?(d) #File name is unique, will not overwrite
  newList[index] = d
  puts "New file name : #{newList[index]}"
  puts "#########################"
  File.rename(src, newList[index])
elsif newList.include?(d)  # increment once more
  counter +=1
  d = d + aleph[counter]
  newList[index] = match[1] +match[2] + aleph[counter]+".pdf"
  puts "New file name : #{newList[index]}" # should produce AuthorDateb.pdf
  counter +=1
  puts "#########################"

  File.rename(src, newList[index])
else newList.include?(d)  #check again if AuthorDateb.pdf is already in the list
  d = d + aleph[counter]
  newList[index] = match[1] +match[2] + aleph[counter]+".pdf"

  puts "New file name : #{newList[index]}" #should produce AuthorDatec.pdf
  puts "#########################"

  File.rename(src, newList[index])
end
}
#   unless list.include?(d)
#     puts " #{index} ok to rename"
#   else
#     puts "can't rename, multiple Author####.pdf s detected"
# end
#   end
# #










# pseudo code
#   # if  Dir contains newFileName.pdf  then append a or b or c to name then rename

#  # else File.rename(src,newFileName)



# end

  #end
#   def myRename (c)
#     counter = 0
#   if
#     File.file?(c)
#     [suffix = ("a".."z").to_a
#     d = b[1]+b[2]+suffix[counter]+".pdf"
#     counter = counter +1  #increment
#     File.rename(src,d)
#     ]
#   else[


#     File.rename(src, c)
#     ]
#   end
# end
# end
