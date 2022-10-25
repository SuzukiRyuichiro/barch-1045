# room -------------------------------

require_relative './room_repository'

ROOM_CSV_FILE_PATH = './rooms.csv'

room_repository = RoomRepository.new(ROOM_CSV_FILE_PATH)

# patients --------------------------

require_relative './patient_repository'
require_relative './patient'

PATIENT_CSV_FILE_PATH = './patients.csv'

patient_repository = PatientRepository.new(PATIENT_CSV_FILE_PATH, room_repository)

p patient_repository
