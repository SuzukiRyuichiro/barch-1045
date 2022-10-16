# frozen_string_literal: true

class Building
  attr_reader :name, :width, :length

  def initialize(name, width, length)
    puts 'hello from building initialize'
    @name = name
    @width = width
    @length = length
  end

  def floor_area
    @width * @length
  end
end
