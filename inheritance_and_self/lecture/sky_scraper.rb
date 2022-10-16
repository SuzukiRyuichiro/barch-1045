# frozen_string_literal: true

require_relative 'building'

class SkyScraper < Building
  def initialize(name, width, length, height)
    super(name, width, length)
    @height = height
  end

  def type_of_tower
    # return a string based on the height of the tower
    if @height > 50
      "#{capitalized_name} is high enough for spider man level super heroes"
    else
      "#{capitalized_name} is too heigh for beginner level heroes"
    end
  end

  def capitalized_name
    @name.capitalize
  end
end
