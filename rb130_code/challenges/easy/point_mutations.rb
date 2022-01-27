=begin
Given two strings, determine the number of differences between strings. 
If a string is longer, compute the difference using the length of shorter
=end

class DNA
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def hamming_distance(string2)
    counter = 0
    string.chars.each_with_index do |char, index|
      counter += 1 if char != string2[index] unless char.nil? || string2[index].nil?
    end
    counter
  end
end

p DNA.new('ghghghghghghg').hamming_distance('ghghghghghghttghgh')