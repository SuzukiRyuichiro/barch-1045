require_relative '../citizen'

describe Citizen do
  describe "#can_vote?" do
    it 'should return true if citizen is older than 18' do
      leo = Citizen.new("leonidas", "taousanis", 20)
      expect(leo.can_vote?).to eq(true)
    end

    it 'should return false if citizen is 17 years old' do
      leo = Citizen.new("leonidas", "taousanis", 17)
      expect(leo.can_vote?).to eq(false)
    end
  end

  describe "#full_name" do
    it 'should return full name of the citizen in a string' do
      leo = Citizen.new("leonidas", "taousanis", 20)
      expect(leo.full_name).to eq("Leonidas Taousanis")
    end
  end
end
