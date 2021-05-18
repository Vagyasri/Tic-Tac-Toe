require './lib/logic'
require './lib/player'

describe Logic do
  describe '#initialize' do
    let(:player_x) { { name: 'Lucky' } }
    context 'when we pass an argument' do
      it 'we should get the value of the player' do
        play = Logic.new({ name: 'Lucky' })
        expect(play.player).to eq({ name: 'Lucky' })
      end
    end
    context "when we don't pass an argument" do
      it 'we should raise an error' do
        expect { Logic.new }.to raise_error(StandardError)
      end
    end
  end
  describe '#winner?' do
    player = Player.new({ name: 'Lucky', marker: '✖️', spt: [1, 2, 3] })
    it 'returns true if WIN1 = player.spt' do
      logic = Logic.new(player)
      expect(logic.winner?).to eq true
    end
  end
end
