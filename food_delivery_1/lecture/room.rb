class Room
  attr_accessor :id

  def initialize(attr = {})
    @id = attr[:id]
    @capacity = attr[:capacity]
    @patients = attr[:patients] || []
  end

  class FullRoom < Exception; end

  def add(patient) # expects an instance of Patient
    # before adding, check if the room is full
    if full?
      raise FullRoom, 'oops, too many peeps in the room'
    else
      patient.room = self
      @patients << patient
    end
  end

  private

  def full?
    @patients.count >= @capacity
  end
end
