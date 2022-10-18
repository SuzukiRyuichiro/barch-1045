class Animal
  attr_reader :name

  def initialize(name)
    @name = name.capitalize
  end

  def self.phyla
    %w[Deuterostomia Ecdysozoa Lophotrochozoa Radiata]
  end

  def eat(food)
    "#{@name} eats a #{food}."
  end
end
