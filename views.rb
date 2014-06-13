module View

  def self.top_box
    print "\e[2J"
    print "\e[H"
    print "\n\n"
    puts '--------------------------------------------------------------------------------------------------'
    puts ' /$$$$$$$$ /$$                     /$$        /$$$$$$                            /$$           /$$'
    puts '| $$_____/| $$                    | $$       /$$__  $$                          | $$          | $$'
    puts '| $$      | $$  /$$$$$$   /$$$$$$$| $$$$$$$ | $$  \__/  /$$$$$$   /$$$$$$   /$$$$$$$  /$$$$$$$| $$'
    puts '| $$$$$   | $$ |____  $$ /$$_____/| $$__  $$| $$       |____  $$ /$$__  $$ /$$__  $$ /$$_____/| $$'
    puts '| $$__/   | $$  /$$$$$$$|  $$$$$$ | $$  \ $$| $$        /$$$$$$$| $$  \__/| $$  | $$|  $$$$$$ |__/'
    puts '| $$      | $$ /$$__  $$ \____  $$| $$  | $$| $$    $$ /$$__  $$| $$      | $$  | $$ \____  $$    '
    puts '| $$      | $$|  $$$$$$$ /$$$$$$$/| $$  | $$|  $$$$$$/|  $$$$$$$| $$      |  $$$$$$$ /$$$$$$$/ /$$'
    puts '|__/      |__/ \_______/|_______/ |__/  |__/ \______/  \_______/|__/       \_______/|_______/ |__/'
    puts '--------------------------------------------------------------------------------------------------'
    puts ''
  end

  def self.login
    print "\e[2J"
    print "\e[H"
    print "\n\n\n\n             Enter your name: "
    name = gets.chomp
    return name
  end

  def self.login_success
    print "\e[2J"
    print "\e[H"
    print "\n\n"
    puts '              /$$      /$$           /$$                                            '
    puts '             | $$  /$ | $$          | $$                                            '
    puts '             | $$ /$$$| $$  /$$$$$$ | $$  /$$$$$$$  /$$$$$$  /$$$$$$/$$$$   /$$$$$$ '
    puts '             | $$/$$ $$ $$ /$$__  $$| $$ /$$_____/ /$$__  $$| $$_  $$_  $$ /$$__  $$'
    puts '             | $$$$_  $$$$| $$$$$$$$| $$| $$      | $$  \ $$| $$ \ $$ \ $$| $$$$$$$$'
    puts '             | $$$/ \  $$$| $$_____/| $$| $$      | $$  | $$| $$ | $$ | $$| $$_____/'
    puts '             | $$/   \  $$|  $$$$$$$| $$|  $$$$$$$|  $$$$$$/| $$ | $$ | $$|  $$$$$$$'
    puts '             |__/     \__/ \_______/|__/ \_______/ \______/ |__/ |__/ |__/ \_______/'
    sleep(0.8)
    print "\e[2J"
    print "\e[H"
    print "\n\n"
    puts '                                         /$$              '
    puts '                                        | $$              '
    puts '                                       /$$$$$$    /$$$$$$ '
    puts '                                      |_  $$_/   /$$__  $$'
    puts '                                        | $$    | $$  \ $$'
    puts '                                        | $$ /$$| $$  | $$'
    puts '                                        |  $$$$/|  $$$$$$/'
    puts '                                         \___/   \______/ '
    sleep(0.6)
    View.top_box
  end

  def self.choose_deck(deck_array)
    puts "\n\n      Choose your deck: "
    deck_array.each_with_index do |deck, i|
      puts "          - #{i+1}. #{deck.name}"
    end
    print "\n       Deck: "
    answer = gets.chomp
    return answer
  end


  def self.ask_question(q)
    puts q
    answer = gets.chomp
    return answer
  end

end

View.login
View.login_success
class Deck
  attr_reader :name
  def initialize(name)
    @name = name
  end
end
my_decks = []
my_decks << Deck.new("Ruby") << Deck.new("SQL") << Deck.new("Javascript") << Deck.new("Html & CSS")
View.choose_deck(my_decks)





