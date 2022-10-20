require_relative 'building'
require_relative 'butler'

class Castle < Building
  attr_accessor :butler

  def initialize(name, width, length)
    super(name, width, length)
    @butler = Butler.new(self)
  end

  def has_a_butler?
    @butler != nil?
  end

  def floor_area
    super + 500
  end

  def self.categories
    ['Medieval', 'Norman', 'Ancient']
  end
end
