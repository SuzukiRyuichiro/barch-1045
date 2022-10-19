class Car
  attr_reader :brand
  attr_accessor :color

  def initialize(color, brand)
    @engine_started = false
    @color = color
    @brand = brand
    @cylinder = 0
  end

  # def color=(new_color) # writer method. equivalent to attr_writer :color
  #   @color = new_color
  # end

  # def color # reader method. equivalent to attr_reader :color
  #   @color
  # end

  def engine_started?
    @engine_started
  end

  def start_engine
    pump_fuel
    ignite
    @engine_started = true
  end

  private

  def pump_fuel
    @cylinder += 10
  end

  def ignite
    puts "ignite!!!!!"
  end
end
