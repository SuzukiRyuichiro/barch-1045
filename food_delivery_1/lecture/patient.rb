class Patient
  attr_accessor :room, :id

  def initialize(attr = {})
    @id = attr[:id]
    @name = attr[:name]
    @cured = attr[:cured] || false
  end

  def cure!
    @cured = true
  end
end
