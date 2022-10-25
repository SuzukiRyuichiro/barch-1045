class Patient
  attr_accessor :room, :id

  def initialize(attributes = {})
    # attributes = { :name => "arthur", cured: true }
    @id = attributes[:id]
    @name = attributes[:name]
    @cured = attributes[:cured] || false
    @room = attributes[:room]
  end

  def cured?
    @cured
  end

  def cure!
    @cured = true
  end
end
