require_relative '../meerkat'

describe Meerkat do
  describe '#talk' do
    it 'barks' do
      meer = Meerkat.new('meer')
      expect(meer.talk).to eq('Meer barks')
    end
  end
end
