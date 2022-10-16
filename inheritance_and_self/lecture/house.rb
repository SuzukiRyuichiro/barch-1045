class House
  attr_reader :name, :width, :length
  def initialize(name, width, length)
    @name = name
    @width = width
    @length = length
  end

  # def name
  #   @name
  # end

  def area
    @width * @length
  end
end
