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
    @current_deck = deck_num
    show_card(deck[@current_deck])
  end

  def show_card(my_deck)
    card = my_deck.draw
    user_input(ask_question(card), card)
  end

  def ask_question(card)
    View.top_box
    user_answer = View.ask_question(card.question)
    return user_answer
  end

  def user_input(input, card)
    case input
    when "quit"
      return nil
    when "next"
      show_card(deck[@current_deck])
    when card.answer
      #card.decrease_difficulty
      show_card(deck[@current_deck])
    end
    puts "                     Wrong!"
    sleep(1)
    show_card(deck[@current_deck])
  end

end
