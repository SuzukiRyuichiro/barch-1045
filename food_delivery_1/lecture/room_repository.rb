require 'csv'
require_relative './room'

class RoomRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @rooms = [] # array of patient instances
    @next_id = 1
    load_csv
  end

  def find(id) # get an instance of room that has the given id
    @rooms.find { |room| room.id == id }
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:capacity] = row[:capacity].to_i
      @rooms << Room.new(row)
    end

    # update the @next_id to match the loaded database
    @next_id = @rooms.empty? ? 1 : @rooms.last.id + 1
  end
end
