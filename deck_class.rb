class Deck
  attr_accessor :cards, :name

  def initialize(name)
    @name = name
    @cards = []
  end

  def add(card)
    cards << card
  end

  def draw
    cards.sample
  end

  def self.create(card_array)
    my_deck = Deck.new('Ruby')
    card_array.each do |card_info|
      my_deck.add(Card.create(card_info))
    end
    my_deck
  end

end

