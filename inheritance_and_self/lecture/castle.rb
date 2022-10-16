# frozen_string_literal: true

require_relative 'building'

class Castle < Building
  attr_accessor :butler

  # We want to add a butler (instance variable) to castle
  # Check if a castle has a butler
  def has_a_butler?
    !@butler.nil?
  end

  # A castle always has a garden of 300 sq. m
  # castle.floor_area -> width * length + 300
  def floor_area
    puts "hey, we're calling super!!!"
    super + 300
  end

  # Class method.
  def self.categories
    %w[Medieval Norman Ancient]
  end
end
