require 'rspec'
require 'deck'
require 'card'

describe Deck do
  let(:card1) { double("card1")}
  let(:card2) { double("card2")}
  subject(:deck) { Deck.new([card1, card2]) }

  describe '#initialize' do

    it 'initializes with an array of cards' do
      expect(deck.cards).to match_array([card1, card2])
    end

    it 'has no repeats' do
      expect(deck.cards.uniq).to eq(deck.cards)
    end
  end

  describe '#shuffle' do
    it 'shuffles the cards' do
      expect(deck.cards).to receive(:shuffle!)
      deck.shuffle!
    end
  end

  describe '::standard_deck' do
    let(:new_deck) { Deck.standard_deck }

    it 'makes a new deck object' do
      expect(new_deck).to be_a(Deck)
    end

    it 'puts 52 different card objects into the new deck object' do
      boolean = new_deck.cards.all? { |el| el.is_a?(Card) }
      expect(boolean).to be true
    end

  end



end
