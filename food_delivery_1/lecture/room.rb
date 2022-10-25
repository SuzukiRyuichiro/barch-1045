class Room
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @capacity = attributes[:capacity]
    @patients = attributes[:patients] || []
  end

  class RoomFull < Exception; end

  def add_patient(patient) # expects instance of patient
    # if theres a bed (space) left
    if full?
      raise RoomFull, 'room is too full!!!'
    else # adding scenario
      patient.room = self
      @patients << patient
    end
  end

  private

  def full?
    @patients.size >= @capacity
  end
end
