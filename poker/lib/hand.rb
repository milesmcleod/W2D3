class Hand

  attr_accessor :contents

  def initialize
    @contents = []
  end

  def calculate
    if royal_flush
      :royal_flush
    elsif straight_flush
      :straight_flush
    elsif four_of_a_kind
      :four_of_a_kind
    elsif full_house
      :full_house
    elsif flush
      :flush
    elsif straight
      :straight
    elsif three_of_a_kind
      :three_of_a_kind
    elsif two_pair
      :two_pair
    elsif pairs
      :pair
    else
      :high_card
    end
  end

  private

  def high_card
    card_values = []
    @contents.each do |card|
      card_values << VALUE_HASH[card.value]
    end
    card_values.sort
  end

  def pairs
    card_values = []
    pairs = []
    @contents.each do |card|
      card_values << VALUE_HASH[card.value]
    end
    card_values.each do |value|
      if card_values.count(value) == 2
        pairs << value
      end
    end
    if pairs.length == 4
      return pairs.sort
    elsif pairs.length == 2
      return pairs
    else
      return nil
    end
  end

  def two_pair
    cards = pairs
    if cards && cards.length == 4
      return cards
    else
      return nil
    end
  end

  def three_of_a_kind
    card_values = []
    trips = []
    @contents.each do |card|
      card_values << VALUE_HASH[card.value]
    end
    card_values.each do |value|
      if card_values.count(value) == 3
        trips << value
      end
    end
    if trips.length == 3
      return trips
    else
      return nil
    end
  end

  def straight
    card_values = []
    straight = []
    @contents.each do |card|
      card_values << VALUE_HASH[card.value]
    end
    card_values.sort!
    i = 0
    while i < 4
      straight << card_values[i] if card_values[i] != card_values[i + 1] - 1
      i += 1
    end
    if straight.length == 4
      return card_values
    else
      nil
    end
  end

  def flush
    card_values = []
    @contents.each do |card|
      card_values << VALUE_HASH[card.value]
    end
    if @contents.all? { |card| card.suit == @contents[0].suit }
      return card_values.sort
    else
      nil
    end
  end

  def full_house
    if pairs && three_of_a_kind
      return pairs + three_of_a_kind
    else
      nil
    end
  end

  def four_of_a_kind
    card_values = []
    quads = []
    @contents.each do |card|
      card_values << VALUE_HASH[card.value]
    end
    card_values.each do |value|
      if card_values.count(value) == 4
        quads << value
      end
    end
    if quads.length == 4
      return quads
    else
      return nil
    end
  end

  def straight_flush
    if flush && straight
      return straight
    else
      nil
    end
  end

  def royal_flush
    if flush && straight && straight.max == 14
      return straight
    else
      nil
    end
  end



VALUE_HASH = {
  1 => 1,
  2 => 2,
  3 => 3,
  4 => 4,
  5 => 5,
  6 => 6,
  7 => 7,
  8 => 8,
  9 => 9,
  10 => 10,
  Jack: 11,
  Queen: 12,
  King: 13,
  Ace: 14
}

end
