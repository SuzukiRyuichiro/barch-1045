require_relative '../lion'

describe Lion do
  simba = Lion.new('simba')

  describe '#talk' do
    it 'roars' do
      expect(simba.talk).to eq('Simba roars')
    end
  end

  describe '#eat' do
    it "returns a statement with 'Law of the jungle!' appended" do
      statement = simba.eat('gazelle')
      expect(statement).to eq('Simba eats a gazelle. Law of the Jungle!')
    end
  end
end
