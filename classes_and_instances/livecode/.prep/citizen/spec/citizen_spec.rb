require_relative '../citizen'

describe Citizen do
  describe "#can_vote?" do
    it 'returns true when a citizen is older than 18' do
      citizen = Citizen.new("", "", 18)
      expect(citizen.can_vote?).to eq(true)
    end

    it 'returns false when a citizen is younger than 18' do
      citizen = Citizen.new("", "", 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  # Ask who wants to write a test for the full name
  describe "#full_name" do
    it 'returns full name' do
      citizen = Citizen.new("Ryuichiro", "Suzuki", 22)
      expect(citizen.full_name).to eq("Ryuichiro Suzuki")
    end
  end
end
