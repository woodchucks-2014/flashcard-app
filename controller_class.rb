class Controller
  attr_accessor :deck

  def add(deck)
    @deck = deck
  end

  def show_card
    card = deck.draw
    ask_question(card.question, card.answer)
    #show_card
  end

  def ask_question(question, answer)
    user_answer = View.ask_question(question)
    ask_question(question, answer) unless user_answer == answer
  end

end
