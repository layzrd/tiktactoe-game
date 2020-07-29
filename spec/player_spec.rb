require 'rspec'
require '../lib/player'

RSpec.describe Player do
  context 'when first created' do
    it 'should be instance of player class' do
      expect(subject).to be_instance_of Player
    end

    it 'should have players array' do
      expect(subject.players).to be_a_kind_of Array
    end
  end
end