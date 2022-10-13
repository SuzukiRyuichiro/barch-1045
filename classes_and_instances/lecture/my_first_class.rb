require_relative 'car'

ferarri = Car.new('red', 'ferarri')

puts "#{ferarri.brand} is #{ferarri.color}"

puts "we're re-painting it to green"

ferarri.color = "green"

puts "#{ferarri.brand} is now #{ferarri.color}"

ferarri.gas
ferarri.gas
ferarri.gas
ferarri.gas
ferarri.gas
ferarri.gas

ferarri.start_engine

puts "engine is on" if ferarri.engine_started?
