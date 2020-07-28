require '../lib/score.rb'

describe "#check_winner" do
  it 'test for a row' do
    score = Score.new
    expect(score.check_winner([['*', 2, 3], ['*', 5, 6], [7, 8, 9]], 7)).to be(true)
  end

  it 'test for a diagonal' do
    score = Score.new
    expect(score.check_winner([[1, 2, '*'], [4, 5, 6], ['*', 8, 9]], 5)).to be(true)
  end

  it 'test for a diagonal' do
    score = Score.new
    expect(score.check_winner([[1, 2, '*'], [4, 5, '*'], [7, 8, 9]], 9)).to be(true)
  end

  it 'test for a unfinished game' do
    score = Score.new
    expect(score.check_winner([[1, 2, '*'], [4, 5, 6], [7, 8, 9]], 9)).to be(false)
  end
  
end
