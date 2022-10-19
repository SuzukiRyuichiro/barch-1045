require 'pry-byebug'

def capitalize(first_name, last_name)
  # capitalize the first and last name and return as a full name string
  # capitalize(ryuichiro, suzuki) -> 'Ryuichiro Suzuki'
  binding.pry
  first_name = first_name.capitalize
  last_name = last_name.capitalize

  "#{first_name} #{last_name}"
end

puts capitalize('ryuichiro', 'suzuki')
