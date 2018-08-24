require 'player'


describe Player do
subject(:player) { Player.new('test') }

  describe '#initialize' do 
    it 'should know its name' do 
      expect(subject.name).to eq('test')  
    end
  end

  describe '#attack' do
    it 'subtracts 10 from hp' do
      p1 = Player.new('Al')
      subject.attack(p1)
      expect(p1.hp).to eq 40
    end
  end

end

  # describe '#attack' do
  #   it 'subtracts 10 from hp' do
  #     Alastair = Player.new('Al')
  #     subject.attack('Al')
  #     expect(subject.hp).to eq 40
  #   end
  # end
