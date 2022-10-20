require_relative 'building'
require_relative 'butler'

class Castle < Building
  attr_accessor :butler

  def initialize(name, width, length)
    super(name, width, length) # Call the initialize on Building
    @butler = Butler.new(self) # self refers to the castle INSTANCE we're initializing
  end

  def has_a_butler? # This is unique to Castle instances. Not callable from a sky scraper instance or any other instances
    @butler != nil?
  end

  def floor_area
    # We use the floor area method in Building but add 500 to the result
    super + 500
  end

  def self.categories
    # Class method. We can only call it like Castle.categories
    ['Medieval', 'Norman', 'Ancient']
  end
end
