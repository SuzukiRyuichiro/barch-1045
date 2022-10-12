class Car # mold / factory of cars
  def initialize(color, brand)
    # This is called on Car.new
    # Here, we assign state / data / attributes of the insatnce
    @color = color
    @brand = brand
    @engine_started = false
  end
end
