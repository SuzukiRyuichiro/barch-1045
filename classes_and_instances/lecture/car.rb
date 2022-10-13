class Car # mold / factory of cars
  attr_reader :color, :brand, :engine_started
  attr_writer :color

  def initialize(color, brand)
    # This is called on Car.new
    # Here, we assign state / data / attributes of the insatnce
    @color = color
    @brand = brand
    @engine_started = false
  end

  # # Readers - because it reads an attribute of an instance
  # def color
  #   @color
  # end

  # # Writers - because it writes (override) an attribute of an instance
  # def color=(new_color)
  #   @color = new_color
  # end

  def start_engine
    battery
    gas
    ignite
    @engine_started = true
  end

  def engine_started?
    return @engine_started
  end

  private

  def battery
    puts "sending electricity"
  end

  def gas
    puts "fuel into the cylinder"
  end

  def ignite
    puts "ingition!"
  end
end
