require_relative '../lion'

describe Lion do
  describe "#talk" do
    it 'returns a string saying that it roars with the name' do
      lion = Lion.new("Simba")
      expect(lion.talk).to eq("Simba roars")
    end
  end

  describe "#eat" do
    it 'returns string with the name of the animal and the food, and with law of the jungle!' do
      lion = Lion.new("Simba")
      expect(lion.eat("pumba")).to eq("Simba eats a pumba. Law of the jungle!")
    end
  end
end
