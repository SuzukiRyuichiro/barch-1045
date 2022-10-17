require_relative '../warthog'

describe Warthog do
  describe '#talk' do
    it 'grunts' do
      tiffany = Warthog.new('tiffany')
      expect(tiffany.talk).to eq('Tiffany grunts')
    end
  end
end
