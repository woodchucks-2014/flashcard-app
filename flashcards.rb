require 'sqlite3'
require_relative 'view_module.rb'
require_relative 'deck_class.rb'
require_relative 'card_class.rb'
require_relative 'controller_class.rb'
require_relative 'database_stuff.rb'

# my_deck = Deck.new('ruby')
# question = "what can fly?"
# answer = "birds"
# my_card = Card.new(question, answer)
# p my_card.question == question
# p my_card.answer == answer
# my_deck.add(my_card)
# my_deck.add(Card.new("How much wood can a woodchuck chuck?", "42"))
# my_deck.add(Card.new("Who let the dogs out?", "Whoo"))
# p my_deck.draw == my_card

# my_controller = Controller.new
# my_controller.add(my_deck)

# my_controller.show_card

# View.login
# View.login_success
# my_decks = []
# my_decks << Deck.new("Ruby") << Deck.new("SQL") << Deck.new("Javascript") << Deck.new("Html & CSS")
# View.choose_deck(my_decks)

db = Flashcards.new("flashcards.db")
card_info = db.convert_to_hash

my_controller = Controller.new
test_deck = Deck.create(card_info)
my_controller.add(test_deck)
my_controller.run
