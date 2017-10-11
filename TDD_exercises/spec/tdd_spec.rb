require 'tdd'
require 'rspec'

RSpec.describe '#my_uniq' do
  let(:a) { [1,2,3] }


  it "has no duplicates in the final array" do
    expect(my_uniq([1,1,2,3])).to eq([1,2,3])
  end

  it "returns a new array" do
    expect(my_uniq(a)).to_not be(a)
  end

  it 'does\'nt use built-in #uniq method' do
    expect(a).to_not receive(:uniq)
    my_uniq(a)
  end

end

describe '#two_sum' do
  let(:a) { [-1, 0, 2, -2, 1] }

  it 'finds pairs of indexes where values sum to zero' do
    expect(two_sum(a)).to match_array([[0, 4], [2, 3]])
  end

  it 'returns array of pairs sorted dicionary-wise' do
    expect(two_sum(a)).to eq([[0, 4], [2, 3]])
  end

end

describe '#my_transpose' do
  let(:a) { [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ] }

  it 'swaps rows with columns' do
    expect(my_transpose(a)).to eq([
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ])
  end

  it 'doesn\'nt call the built in #transpose method' do
    expect(a).to_not receive(:transpose)
    my_transpose(a)
  end
end

describe '#stock_picker' do
  let(:a) { [9, 12, 11, 14, 3, 11]}

  it 'produces a buy date that is before the sell date' do
    result = stock_picker(a)
    expect(result[0]).to be <= result[1]
  end

  it 'finds the most profitable pair' do
    expect(stock_picker(a)).to eq([4,5])
  end
end
