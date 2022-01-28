require 'pry'

class SumOfMultiples
  attr_reader :multiples

  def initialize(*multiples)
    @multiples = multiples.size > 0 ? multiples : [3, 5]
  end

  def self.to(n)
    SumOfMultiples.new().to(n)
  end

  def to(n)
    (1...n).select do |num|
      valid_multiple?(num)
    end.sum
  end

  def valid_multiple?(num)
    multiples.any? do |multiple|
      num % multiple == 0
    end
  end
end

p SumOfMultiples.to(4)