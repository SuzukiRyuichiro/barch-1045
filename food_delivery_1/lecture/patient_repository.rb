require 'csv'
require_relative './patient'

class PatientRepository
  def initialize(csv_file_path, room_repository)
    @csv_file_path = csv_file_path
    @patients = [] # array of patient instances
    @next_id = 1
    @room_repository = room_repository # we need this because patients belongs to a room
    load_csv
  end

  def add(patient) # expects a patient instance
    # assign him a unique id
    patient.id = @next_id
    @patients << patient
    @next_id += 1
    # save -> that's your challenge today!!
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:cured] = row[:cured] == 'true'
      # row[:room_id] = row[:room_id].to_i -> convert this id into room instance
      row[:room] = @room_repository.find(row[:room_id].to_i) # get the room instance from room repo
      # instantiate a patient with a proper @room attribute
      patient = Patient.new(row) # row -> i.e. { id: 1, name: 'arthur', cured: true, room: <#Room 00000abc> }
      @patients << patient
      # add the patient into the room
      row[:room].add_patient(patient)
    end

    # update the @next_id to match the loaded database
    @next_id = @patients.empty? ? 1 : @patients.last.id + 1
  end
end
