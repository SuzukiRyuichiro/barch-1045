require_relative '../slot_machine_refactored'

def test_scenario(reels, expected_score)
  it "should return #{expected_score} when reels are #{reels}" do
    slot = SlotMachine.new(reels)
    expect(slot.score).to eq(expected_score)
  end
end

describe SlotMachine do
  describe "#score" do
    it "should return 0 when all of the reels are different" do
      slot = SlotMachine.new(['joker', 'bell', 'star'])
      expect(slot.score).to eq(0)
    end

    test_scenario(['joker', 'joker', 'joker'], 50)
    test_scenario(['star', 'star', 'star'], 40)
    test_scenario(['bell', 'bell', 'bell'], 30)
    test_scenario(['seven', 'seven', 'seven'], 20)
    test_scenario(['cherry', 'cherry', 'cherry'], 10)

    test_scenario(['joker', 'star', 'joker'], 25)
    test_scenario(['joker', 'bell', 'joker'], 25)
    test_scenario(['bell', 'joker' , 'joker'], 25)
    test_scenario(['star', 'star', 'joker'], 20)
    test_scenario(['bell', 'bell', 'joker'], 15)
    test_scenario(['seven', 'seven', 'joker'], 10)
    test_scenario(['cherry', 'cherry', 'joker'], 5)

    test_scenario(['cherry', 'cherry', 'bell'], 0)
  end
end
