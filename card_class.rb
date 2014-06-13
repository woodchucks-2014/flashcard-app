class Card
  attr_accessor :question, :answer

  def initialize(q, a)
    @question = q
    @answer = a
  end

  def self.create(info_hash)
    Card.new(info_hash[:definition], info_hash[:term])
  end

end
