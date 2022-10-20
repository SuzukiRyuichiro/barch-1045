require_relative 'building'
require 'pry-byebug'

class SkyScraper < Building
  attr_accessor :height

  def initialize(name, width, length, height)
    super(name, width, length)
    @height = height
  end

  def type_of_owner
    if @height > 50
      "#{self.capitalize_name} is a skyscraper for Spider-man"
    else
      "#{self.capitalize_name} is a skyscraper for a beginner super hero"
    end
  end

  private

  def capitalize_name
    # TODO: capitalize every word in the name
    words = @name.split(' ')
    capitalized_word = words.map { |word| word.capitalize }
    capitalized_word.join(' ')
  end
end
