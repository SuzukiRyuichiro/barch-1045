# frozen_string_literal: true

require_relative '../slot_machine'

# Ask what are the part that is repetitive and what are changing -> just the array that goes in and score
def test_scenario(scenario, expected_score)
  it "returns #{expected_score} when the slot it #{scenario.join(', ')}" do
    slot_machine = SlotMachine.new(scenario) # i.e. ['joker', 'joker', 'joker']
    actual_score = slot_machine.score
    expect(actual_score).to eq(expected_score)
  end
end

describe 'SlotMachine' do
  describe '#score' do
    it 'returns 0 when all the symbols are different' do
      # What is the easiet or simplest result??
      set = %w[joker star bell]
      slot_machine = SlotMachine.new(set)
      expect(slot_machine.score).to eq(0)
    end

    test_scenario(%w[joker joker joker], 50)
    test_scenario(%w[star star star], 40)
    test_scenario(%w[bell bell bell], 30)
    test_scenario(%w[seven seven seven], 20)
    test_scenario(%w[cherry cherry cherry], 10)

    test_scenario(%w[joker joker seven], 25)
    test_scenario(%w[joker joker star], 25)
    test_scenario(%w[joker joker bell], 25)
    test_scenario(%w[joker joker cherry], 25)

    test_scenario(%w[star star joker], 20)
    test_scenario(%w[bell bell joker], 15)
    test_scenario(%w[seven seven joker], 10)
    test_scenario(%w[cherry cherry joker], 5)

    test_scenario(%w[cherry cherry seven], 0)
    test_scenario(%w[cherry cherry bell], 0)
    test_scenario(%w[bell cherry star], 0)
  end
end
