require "sqlite3"


class Flashcards

  def initialize(file_to)
    # @flashcards = flashcards
    @db = SQLite3::Database.new(file_to)
  end

  def convert_to_hash
    card_array = []
    term = @db.execute "SELECT term FROM flashcards"
    definition = @db.execute "SELECT definition FROM flashcards"
    for i in 0...term.length do
      card_array << { definition: definition[i].first,  term: term[i].first }
    end
    card_array
  end

  def load(file_from)

    file = File.open(file_from, 'r')
    file.each.each_slice(3) do |definition, term, whitespace|
      definition = definition.chomp
      term = term.chomp

      @db.execute <<-SQL
        CREATE TABLE IF NOT EXISTS flashcards (
            id INTEGER PRIMARY KEY,
            term TEXT,
            definition TEXT
            );
      SQL
      @db.execute <<-SQL
        CREATE TABLE IF NOT EXISTS deck (
            id INTEGER PRIMARY KEY,
            name TEXT,
            deck_id INTEGER,
            FOREIGN KEY(deck_id) REFERENCES flashcards(id)
            );
      SQL
      @db.execute "INSERT INTO flashcards VALUES (NULL, ?, ? )", term, definition
    end
  end
end
f = Flashcards.new("flashcards.db")
# f.load('flashcards.txt')

p f.convert_to_hash
