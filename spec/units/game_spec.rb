require 'game'

describe Game do 
subject(:game) { described_class.new }
let(:player_one) { double :player_one }
let(:player_two) { double :player_two }

  # describe '#attack' do
  #   it 'damages opponent' do 
  #     expect(player_two).to receive(:receive_damage)
  #     game.attack(player_two)
  #   end
  # end

end
