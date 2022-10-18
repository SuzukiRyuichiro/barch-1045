require_relative '../animal'

describe Animal do
  animal = Animal.new('Babe')

  describe '#initialize' do
    it 'instanciates an Animal' do
      expect(animal).to be_a(Animal)
    end
  end

  describe '#name' do
    it "returns animal's name" do
      expect(animal.name).to eq('Babe')
    end
  end

  describe '::phyla' do
    it 'returns an array of the four phyla of the animal kingdom' do
      phyla = Animal.phyla
      expect(phyla.count).to eq(4)
    end
  end

  describe '#eat' do
    it 'returns a statement that the animal ate the given food' do
      expect(animal.eat('scorpion')).to eq('Babe eats a scorpion.')
    end
  end
end
