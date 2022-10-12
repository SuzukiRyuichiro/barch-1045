require_relative 'car'

ferarri = Car.new('red', 'ferarri')
tesla = Car.new('white', 'tesla')

puts "#{ferarri.brand} is #{ferarri.color}"
puts "#{tesla.brand} is #{tesla.color}"
