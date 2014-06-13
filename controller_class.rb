require 'sqlite3'
require_relative 'view_module.rb'
require_relative 'deck_class.rb'
require_relative 'card_class.rb'
require_relative 'controller_class.rb'

class Controller
  attr_accessor :deck

  def initialize
    @deck = []
  end

  def add(deck)
    @deck << deck
  end

  def run
    @user = View.login
    View.login_success
    deck_num = View.choose_deck(deck).to_i - 1
    show_card(deck[deck_num])
  end

  def show_card(my_deck)
    card = my_deck.draw
    match = nil
    until match do
      match = ask_question(card.question, card.answer)
    end
    #show_card
  end

  def ask_question(question, answer)
    View.top_box
    user_answer = View.ask_question(question)
    return user_answer == answer
  end

end
