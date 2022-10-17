# frozen_string_literal: true

require_relative 'building'
require_relative 'butler'

class Castle < Building
  attr_accessor :butler

  # When initializing, we want to assign a new butler automatically
  def initialize(name, width, length, ruler)
    super(name, width, length)
    @ruler = ruler
    @butler = Butler.new(self) # We have to give an instance of a castle
  end

  # We want to add a butler (instance variable) to castle
  # Check if a castle has a butler
  def has_a_butler?
    !@butler.nil?
  end

  # A castle always has a garden of 300 sq. m
  # castle.floor_area -> width * length + 300
  def floor_area
    super + 300
  end

  # Class method.
  def self.categories
    %w[Medieval Norman Ancient]
  end

  def ownership_details
    "#{@name} is ruled by #{ruler_name}"
  end

  private

  def ruler_name
    @ruler.capitalize
  end
end
