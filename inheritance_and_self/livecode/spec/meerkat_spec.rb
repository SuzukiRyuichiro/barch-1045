require_relative '../meerkat'

describe Meerkat do
  describe "#talk" do
    it 'returns a string saying that it barks with the name' do
      meerkat = Meerkat.new("Timon")
      expect(meerkat.talk).to eq("Timon barks")
    end
  end

  describe "#eat" do
    it 'returns string with the name of the animal and the food' do
      meerkat = Meerkat.new("Timon")
      expect(meerkat.eat("scorpion")).to eq("Timon eats a scorpion.")
    end
  end
end
