require './lib/logic'

describe Logic do
  describe '#initialize' do
    let (:player_x) {{name: "Lucky"}}
    context 'when we pass an argument' do
      it 'we should get the value of the player' do 
        play = Logic.new({name: "Lucky"})
        expect(play.player).to eq({name:"Lucky"})
      end
  end
    context "when we don't pass an argument" do
      it 'we should raise an error' do 
        expect { Logic.new }.to raise_error(StandardError)
      end
  end
  end
  #  describe '#winner?' do
  #    it 'Checks the row/column/diagonal values of the board' do
  #     win = ["x", "x", "x"].freeze
  #     expect()
  #   end
  #  end
end
