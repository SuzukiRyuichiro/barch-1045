require_relative 'car'

car = Car.new('red', 'ford')
car_2 = Car.new('white', 'suzuki')

# p car
# p car_2

# puts "car no 1 is #{car.color} and made by #{car.brand}"
# puts "car no 2 is #{car_2.color} and made by #{car_2.brand}"

# puts "we're repainting car 1 to green"

# car.color = "green"

# puts "now car no 1 is #{car.color}"

car.start_engine
car.pump_fuel
car.pump_fuel
car.pump_fuel
car.pump_fuel
car.pump_fuel
car.pump_fuel
car.pump_fuel
car.pump_fuel
car.pump_fuel

p car
