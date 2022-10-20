class Butler
  def initialize(castle) # Instance of castle
    @castle = castle
  end

  def clean_castle
    "#{@castle.name} is cleaned!!!"
  end
end
