require 'nokogiri'
require 'open-uri'
require_relative 'recipe'

keyword = 'greek food'
url = "https://www.bbc.co.uk/food/search?q=#{keyword}"

html = URI.open(url).read # (String)

doc = Nokogiri::HTML(html)

recipes = []

doc.search('a.promo').each do |element|
  # get the title
  title_element = element.search('.promo__title')
  name = title_element.inner_text

  # get desc
  url = element.attr('href') # get individual website links for the recipe
  html = URI.open("https://www.bbc.co.uk#{url}").read # open them (String)
  doc = Nokogiri::HTML(html) # parse html
  description = doc.search('.recipe-description__text').inner_text # look for the description element

  recipes << Recipe.new(name, description)
end
