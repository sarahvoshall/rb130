# frozen_string_literal: true

# determines whether the anagrams of a string from a given array
class Anagram
  attr_reader :string

  def initialize(string)
    @string = string.downcase
  end

  def match(array)
    array.select do |element|
      anagram?(element) unless same_string?(element)
    end
  end

  private

  def anagram?(element)
    element.downcase.chars.sort == string.chars.sort
  end

  def same_string?(element)
    element.downcase == string
  end
end
