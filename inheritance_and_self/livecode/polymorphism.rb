require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

lion = Lion.new("Simba")
warthog = Warthog.new("Pumba")
meerkat = Meerkat.new("Timon")

[lion, warthog, meerkat].each do |animal|
  puts animal.talk
end
