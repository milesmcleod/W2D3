require 'rspec'
require'hand'

describe Hand do
  subject(:hand) { Hand.new }

  describe '#initialize' do

    it 'starts with an empty hand' do
      expect(hand.contents).to eq([])
    end
  end

  # describe '#calculate' do
  #
  #   it 'finds a royal flush' do
  #
  #   end
  #
  #   it 'finds a sraightflush'
  #
  #   it 'finds four of a kind'
  #
  #   it 'finds a full house'
  #
  #   it 'finds a flush'
  #
  #   it 'finds a straight'
  #
  #   it 'finds three of a kind'
  #
  #   it 'finds two pair'
  #
  #   it 'finds a pair'
  #
  #   it 'finds high card'
  #
  #
  # end

end
