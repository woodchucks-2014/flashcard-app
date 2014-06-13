require 'sqlite3'
require_relative 'view_module.rb'
require_relative 'deck_class.rb'
require_relative 'card_class.rb'
require_relative 'controller_class.rb'

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

my_deck = Deck.create([{definition: "q", term: "a"}])
puts my_deck.name
