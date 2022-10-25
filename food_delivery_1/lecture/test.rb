require_relative './patient'
# require_relative './room'

# room = Room.new({ capacity: 2 })
# room_2 = Room.new({ capacity: 5 })
# laura = Patient.new({ name: 'Laura', cured: false })
# leo = Patient.new({ cured: true, name: 'Leonidas' })
# carlos = Patient.new({ name: 'Carlos', cured: false })

# # begin
# #   room.add(laura)
# #   room.add(leo)
# #   room.add(carlos)
# # rescue Room::FullRoom
# #   puts "nah, don't try to put too many people"
# # end

# room.add(laura)
# room.add(leo)
# room_2.add(carlos)

# p room
# p room_2

require_relative './room_repository'
room_repository = RoomRepository.new('./rooms.csv')

require_relative './patient_repository'
patient_repository = PatientRepository.new('./patients.csv', room_repository)

p room_repository
p patient_repository

# scooter = Patient.new(name: 'Scooter')
# ruben = Patient.new(name: 'Ruben')

# patient_repository.add(scooter)
# patient_repository.add(ruben)
