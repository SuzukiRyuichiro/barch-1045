require_relative 'building'

class SkyScraper < Building
  attr_accessor :height

  def initialize(name, width, length, height)
    super(name, width, length)
    @height = height
  end

  def type_of_owner
    if @height > 50
      # This self is redundant. But keep in mind that we're calling
      # capitalize_name instance method on the instance that we're
      # calling type_of_owner
      "#{self.capitalize_name} is a skyscraper for Spider-man"
    else
      "#{self.capitalize_name} is a skyscraper for a beginner super hero"
    end
  end

  private

  def capitalize_name
    # TODO: capitalize every word in the name
    words = @name.split(' ') # => ['one', 'world']
    capitalized_word = words.map { |word| word.capitalize } # => ['One', 'World']
    capitalized_word.join(' ')  # => One World
  end
end
