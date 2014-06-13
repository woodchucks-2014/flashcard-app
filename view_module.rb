require 'sqlite3'
require_relative 'view_module.rb'
require_relative 'deck_class.rb'
require_relative 'card_class.rb'
require_relative 'controller_class.rb'

module View

  def self.top_box
    print "\e[2J"
    print "\e[H"
    print "\n\n"
    puts '--------------------------------------------------------------------------------------------------'
    puts '  /$$$$$$                  /$$            /$$$$$$                            /$$           /$$'
    puts ' /$$__  $$                | $$           /$$__  $$                          | $$          | $$'
    puts '| $$  \__/  /$$$$$$   /$$$$$$$  /$$$$$$ | $$  \__/  /$$$$$$   /$$$$$$   /$$$$$$$  /$$$$$$$| $$'
    puts '| $$       /$$__  $$ /$$__  $$ /$$__  $$| $$       |____  $$ /$$__  $$ /$$__  $$ /$$_____/| $$'
    puts '| $$      | $$  \ $$| $$  | $$| $$$$$$$$| $$        /$$$$$$$| $$  \__/| $$  | $$|  $$$$$$ |__/'
    puts '| $$    $$| $$  | $$| $$  | $$| $$_____/| $$    $$ /$$__  $$| $$      | $$  | $$ \____  $$'
    puts '|  $$$$$$/|  $$$$$$/|  $$$$$$$|  $$$$$$$|  $$$$$$/|  $$$$$$$| $$      |  $$$$$$$ /$$$$$$$/ /$$'
    puts ' \______/  \______/  \_______/ \_______/ \______/  \_______/|__/       \_______/|_______/ |__/'
    puts '--------------------------------------------------------------------------------------------------'
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
    deck_num = gets.chomp
    return deck_num
  end


  def self.ask_question(q)
    print "\n\n     Definition: #{q}\n       Term: "
    answer = gets.chomp
    return answer
  end

end





