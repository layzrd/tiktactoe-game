require 'rspec'
require '../lib/player.rb'
require '../lib/score.rb'

RSpec.describe Score do
  subject { Score.new(player) }
  let(:board) { [[1, 2, 3], [4, 5, 6], [7, 8, 9]] }
  let(:player) do
    player = Player.new
    player.players.push('Abd')
    player.players.push('Alex')
    player
  end

  context 'when first created' do
    it 'should be instance of Score' do
      expect(subject).to be_kind_of(Score)
    end

    it 'should have a player' do
      expect(subject.players.players).to include('Alex')
    end
  end

  context '#get_position' do
    it 'should return the actual position fot the given board item' do
      expect(subject.get_position(board, 1)).to eql([0, 0])
    end
  end

  context '#check_winner' do
    it 'test for a horizontal direction accomplishment' do
      expect(subject.check_winner([['*', 2, 3], ['*', 5, 6], [7, 8, 9]], 7)).to be(true)
    end

    it 'test for a diagonal' do
      expect(subject.check_winner([[1, 2, '*'], [4, 5, 6], ['*', 8, 9]], 5)).to be(true)
    end

    it 'test for a diagonal' do
      expect(subject.check_winner([[1, 2, '*'], [4, 5, '*'], [7, 8, 9]], 9)).to be(true)
    end

    it 'test for a unfinished game' do
      expect(subject.check_winner([[1, 2, '*'], [4, 5, 6], [7, 8, 9]], 9)).to be(false)
    end
  end
end
