require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://www.udacity.com'))

links = doc.css('a')

links.each do |link|
  puts link['href']
end