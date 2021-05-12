require './lib/player'

describe Player do
  describe '#initialize' do
    it 'Fetch the value of :name variable from the check_winner and assign it to @name instance variable' do
      player = Player.new({ name: 'Lucky', marker: '✖️', spt: [] })
      expect(player.name).to eq('Lucky')
    end
    it 'Fetch the value of :maker variable from the check_winner and assign it to @maker instance variable' do
      player = Player.new({ name: 'Lucky', marker: '✖️', spt: [] })
      expect(player.marker).to eq('✖️')
    end
    it 'Fetch the value of :spt variable from the check_winner and assign it to @spot instance variable' do
      player = Player.new({ name: 'Lucky', marker: '✖️', spt: [] })
      expect(player.spt).to eq([])
    end
  end
end
