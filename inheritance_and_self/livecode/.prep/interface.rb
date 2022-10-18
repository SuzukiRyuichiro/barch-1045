require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

# Nala, Timon & Pumbaa
simba = Lion.new('simba')
nala = Lion.new('nala')
timon = Meerkat.new('timon')
pumbaa = Warthog.new('Pumbaa')

puts nala.talk
puts simba.talk
puts timon.talk
puts pumbaa.talk

# ↓

animals = []
animals << simba
animals << nala
animals << timon
animals << pumbaa

animals.each do |animal|
  puts animal.talk
end
