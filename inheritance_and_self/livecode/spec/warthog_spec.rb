require_relative '../warthog'

describe Warthog do
  describe "#talk" do
    it 'returns a string saying that it grunts with the name' do
      warthog = Warthog.new("Pumba")
      expect(warthog.talk).to eq("Pumba grunts")
    end
  end
end
