# fname = "sample.txt"
# somefile = File.open(fname, "w")
# somefile.puts "Hello file!"
# somefile.close

# File.open("sample.txt","w") {|somefile| somefile.puts "Hello file!"}

# require 'rubygems'
# require 'rest-client'

# wiki_url = "http://en.wikipedia.org/"
# wiki_local_filename = "wiki-page.html"

# File.open(wiki_local_filename, "w") do |file| 
#     file.write(RestClient.get(wiki_url))
# end \

#Write a program that:

# Reads hamlet.txt from the given URL
# Saves it to a local file on your hard drive named "hamlet.txt"
# Re-opens that local version of hamlet.txt and prints out every 42nd line to the screen

require 'open-uri'

url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
fname = "hamlet.txt"

File.open(fname, "w"){|file| file.write(URI.open(url).read)}

File.open(fname, "r") do |file| 
  file.readlines.each_with_index do |line,index|
    puts line if index % 42 == 41
  end
end
