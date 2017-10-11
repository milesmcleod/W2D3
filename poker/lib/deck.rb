class Deck

SUITS = [:Spades, :Hearts, :Diamonds, :Clubs]
VALUES = ('2'..'10').to_a.map(&:to_sym) + [:Ace, :King, :Queen, :Jack]

  attr_reader :cards

  def initialize(card_array = [] )
    @cards = card_array
    @cards = @cards.shuffle!
  end

  def shuffle!
    @cards.shuffle!
  end

  def self.standard_deck
    cards = []
    VALUES.each do |value|
      SUITS.each do |suit|
        cards << Card.new(value, suit)
      end
    end
    Deck.new(cards)
  end

end
