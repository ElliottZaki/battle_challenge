require 'player'

describe 'Player returns their name' do
    subject(:elliott) { Player.new('Elliott') }
    subject(:jessica) { Player.new('Jessica') }

    describe '#name' do
        it 'returns the name of Player_1' do
            expect(elliott.name).to eq('Elliott')
        end
    end

    describe '#hit_points' do
        it 'shows the value of opponents health' do
            expect(elliott.hit_points).to eq Player::DEFAULT_HIT_POINTS
        end
     end 

    describe '#attack' do
        it 'damaged the opponent' do
            expect(jessica).to receive(:receive_damage)
            elliott.attack(jessica) 
        end
    end

    describe '#receive_damage' do
        it 'reduces the players hitpoints' do
            expect { elliott.receive_damage }.to change { elliott.hit_points }.by(-20)
        end
    end


end