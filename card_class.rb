require 'sqlite3'
require_relative 'view_module.rb'
require_relative 'deck_class.rb'
require_relative 'card_class.rb'
require_relative 'controller_class.rb'

class Card
  attr_accessor :question, :answer, :difficulty

  def initialize(q, a)
    @question = q
    @answer = a
    @difficulty = 0 # 0 is hardest, 4 is easiest
  end

  def decrease_difficulty
    @difficulty += 1 unless @difficulty == 4
  end

  def self.create(info_hash)
    Card.new(info_hash[:definition], info_hash[:term])
  end

end



