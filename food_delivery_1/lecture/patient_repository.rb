require 'csv'
require_relative './patient'

class PatientRepository
  def initialize(csv_file_path, room_repository)
    @csv_file_path = csv_file_path
    @patients = []
    @room_repository = room_repository
    @next_id = 1
    load
  end

  def add(patient)
    # assign some unique id to a patient and add
    patient.id = @next_id
    @patients << patient
    @next_id += 1
    # save to csv -> in the challenge
  end

  private

  def load
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:cured] = row[:cured].downcase == 'true'
      row[:room] = @room_repository.find(row[:room_id].to_i)
      patient = Patient.new(row)
      # assign a room toa patient
      @patients << patient
      row[:room].add(patient)
    end
    @next_id = @patients.empty? ? 1 : @patients.last.id + 1
  end
end
