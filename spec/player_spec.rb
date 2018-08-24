require 'player'

describe Player do
subject(:player) { Player.new('test') }
let(:ringo) { Player.new('Ringo') }
let(:george) { Player.new('George') }

  describe '#initialize' do 
    it 'should know its name' do 
      expect(subject.name).to eq('test')  
    end
    it 'defaults with hit points to 60' do
      expect(ringo.hp).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do 
    it 'reduces the player hit points' do 
      expect { george.receive_damage }.to change { george.hp }.by(-10)
    end
  end


end
