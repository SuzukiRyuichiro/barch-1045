require 'nokogiri'
require 'pry-byebug'
require 'awesome_print'
require 'open-uri'

doc = File.open('pumpkin.html').read

html = Nokogiri::HTML(doc) # equal to calling Nokogiri::HTML4::Document.parse

recipes = html.search('a.promo').first(5)

titles_and_recipes = recipes.map do |recipe|
  title = recipe.search('.promo__title').inner_text.strip.gsub(/\n/, '').gsub(/\s{2,}/, ' ')
  link = "https://www.bbc.co.uk#{recipe.attr('href')}"
  doc = URI.open(link).read
  # get
  { title: title, link: link }
end

ap titles_and_recipes
