require_relative 'house'
require_relative 'castle'
require_relative 'sky_scraper'
require_relative 'building'
require_relative 'butler'

white_house = House.new('white house', 1000, 1000)
one_world = SkyScraper.new('one world', 500, 500, 100)
death_star = Castle.new('death star', 100000, 100000)

# death_star.butler = "Darth Vader"

# puts "#{white_house.name} is #{white_house.width} m * #{white_house.length} m and the floor area is #{white_house.floor_area} m^2"
# puts "#{one_world.name} is #{one_world.width} m * #{one_world.length} m and the floor area is #{one_world.floor_area} m^2"
# puts "#{death_star.name} is #{death_star.width} m * #{death_star.length} m and the floor area is #{death_star.floor_area} m^2"
# puts "#{death_star.name} has a butler? #{death_star.has_a_butler? ? 'Yes' : 'No'}"
# puts "#{death_star.name}'s butler is #{death_star.butler}"

# p death_star.categories # !=> ['Medieval', 'Norman', 'Ancient'] not natural
# p Castle.categories # => ['Medieval', 'Norman', 'Ancient']

# p one_world.type_of_owner
# p one_world.capitalize_name

castle = Castle.new("white castle", 100, 100) # => this automatically creates a butler in a castle

p castle.butler # => this returns an INSTANCE of a butler.
p castle.butler.clean_castle
