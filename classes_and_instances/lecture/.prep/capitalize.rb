require "pry-byebug"

def capitalize(first_name, last_name)
  # capitalize the first and last name and return as a full name string
  # capitalize(ryuichiro, suzuki) -> 'Ryuichiro Suzuki'
  first_name = first_name.capitalize
  last_name = last_name.capitalize

  return "#{first_name} #{last_name}"
end

puts capitalize('ryuichiro', 'suzuki')
