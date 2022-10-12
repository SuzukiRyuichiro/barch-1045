class Car # mold / factory of cars
  attr_reader :color, :brand, :engine_started

  def initialize(color, brand)
    # This is called on Car.new
    # Here, we assign state / data / attributes of the insatnce
    @color = color
    @brand = brand
    @engine_started = false
  end

  def start_engine
    @engine_started = true
  end

  def engine_started?
    return @engine_started
  end
end
