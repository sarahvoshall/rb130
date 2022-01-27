class Scrabble
  attr_reader :word

  TILES = { 1 => %w(A E I O U L N R S T), 
            2 => %w(D G), 
            3 => %w(B C M P), 
            4 => %w(F H V W Y),
            5 => %w(K),
            8 => %w(J X), 
            10 => %w(Q Z)
          } 

  def initialize(word)
    @word = word ? '' : word
  end

  def self.score(word)
    Scrabble.new(word).score   
  end

  def score
    total = 0
    word.upcase.chars.each do |letter|
      TILES.each_pair do |key, value|
        total += key if TILES[key].include?(letter)
      end
    end
    total
  end
end
