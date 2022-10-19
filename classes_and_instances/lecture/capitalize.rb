require 'pry-byebug'

def capitalize(first_name, last_name)
  # binding.pry
  first_name = first_name.capitalize
  last_name = last_name.capitalize

  "#{first_name} #{last_name}"
end

# capitalize('hello') -> "Hello"
# puts capitalize('hello')
puts capitalize('ryuichiro', 'suzuki')
# "Ryuichiro Suzuki"
