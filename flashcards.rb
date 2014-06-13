require 'sqlite3'
require 'view_module.rb'
require 'deck_class.rb'
require 'card_class.rb'
require 'controller_class.rb'

=begin
deck class
store several cards
pick a card at random
return the card.question
get the card.answer
decide whether to move one to next card

card class
has a question
has an answer
can return question or answer
verify the answer == card.answer
=end

# class Deck
#   attr_accessor :cards

#   def initialize
#     @cards = []
#   end

#   def add(card)
#     cards << card
#   end

#   def draw
#     cards.sample
#   end

#   def self.create(card_array)
#     my_deck = Deck.new
#     card_array.each do |card_info|
#       my_deck.add(Card.create(card_info))
#     end
#     my_deck
#   end

# end


# class Card
#   attr_accessor :question, :answer

#   def initialize(q, a)
#     @question = q
#     @answer = a
#   end

#   def self.create(info_hash)
#     Card.new(info_hash[:definition], info_hash[:term])
#   end

# end

# class Controller
#   attr_accessor :deck

#   def add(deck)
#     @deck = deck
#   end

#   def show_card
#     card = deck.draw
#     ask_question(card.question, card.answer)
#     show_card
#   end

#   def ask_question(question, answer)
#     user_answer = View.ask_question(question)
#     ask_question(question, answer) unless user_answer == answer
#   end

# end


#testcode

my_deck = Deck.new
question = "what can fly?"
answer = "birds"
my_card = Card.new(question, answer)
p my_card.question == question
p my_card.answer == answer
my_deck.add(my_card)
my_deck.add(Card.new("How much wood can a woodchuck chuck?", "42"))
my_deck.add(Card.new("Who let the dogs out?", "Whoo"))
p my_deck.draw == my_card

my_controller = Controller.new
my_controller.add(my_deck)

my_controller.show_card

View.login
View.login_success
my_decks = []
my_decks << Deck.new("Ruby") << Deck.new("SQL") << Deck.new("Javascript") << Deck.new("Html & CSS")
View.choose_deck(my_decks)
