require 'rspec'
require 'card'

describe Card do
  subject(:card) { Card.new(:ace, :spades) }

  describe '#initialize' do

    it 'initializes with a card value variable' do
      expect(card.value).to eq(:ace)
    end

    it 'initializes with a suit variable' do
      expect(card.suit).to eq(:spades)
    end

  end

  describe '#to_s' do

    it 'converts value and suit to readable string' do
      expect(card.to_s).to eq("ace of spades")
    end

  end

end
