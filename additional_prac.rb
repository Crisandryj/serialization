# # fname = "sample.txt"
# # somefile = File.open(fname, "w")
# # somefile.puts "Hello file!"
# # somefile.close

# File.open("sample.txt","w") {|somefile| somefile.puts "Hello file!"}

require 'rubygems'
require 'rest-client'

wiki_url = "http://en.wikipedia.org/"
wiki_local_filename = "wiki-page.html"

File.open(wiki_local_filename, "w") do |file| 
    file.write(RestClient.get(wiki_url))
end 