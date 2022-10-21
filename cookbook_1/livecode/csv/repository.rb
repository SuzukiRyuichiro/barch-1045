require 'csv'
require_relative 'recipe'

# load the csv file
# put them into an array
recipes = []

# load the csv file
csv_file_path = File.join(__dir__, 'recipes.csv')
# parse and make an instance of recipe row by row
CSV.foreach(csv_file_path) do |row|
  p row
  name = row[0] # string
  description = row[1] # string
  recipe = Recipe.new(name, description)
  recipes.push(recipe) # recipes << recipe
end

# goal array of recipe instances (recipes)
p recipes
