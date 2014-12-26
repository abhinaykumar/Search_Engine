# Write Python code that assigns to the 
# variable url a string that is the value 
# of the first URL that appears in a link 
# tag in the string page.
# Your code should print http://udacity.com
# Make sure that if page were changed to
# page = '<a href="http://udacity.com">Hello world</a>'
# that your code still prints the same thing.

# page = contents of a web page

require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open('https://www.udacity.com'))

links = page.css('a')

links.each do |link|
  puts link['href']
end