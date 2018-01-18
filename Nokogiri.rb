require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
doc = Nokogiri::HTML(open('http://annuaire-des-mairies.com/95/vaureal.html').read)

doc.search('.Style22').each do |link|
  puts link.content
end




