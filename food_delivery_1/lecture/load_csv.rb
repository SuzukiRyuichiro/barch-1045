# let's load patients
require 'csv'
require_relative './patient'

patients = []
csv_file_path = './patients.csv'

CSV.foreach(csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
  row[:cured] = row[:cured] == 'true'
  row[:room_id] = row[:room_id].to_i
  patients << Patient.new(row)
end

p patients
