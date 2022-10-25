require_relative 'patient'
require_relative 'room'

arthur = Patient.new({ cured: true, name: 'arthur' })
laura = Patient.new({ cured: false, name: 'laura' })

room = Room.new({ capacity: 2 })

room.add_patient(arthur)
room.add_patient(laura)
