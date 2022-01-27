=begin
Write a program that determines what kind of triangle an array is. 
- equilateral: three equal sides
- isosceles: two sides equal length
- scalene: no sides equal
For an array to be a triangle, all sides must be greater than 0 and 
the sum of the lengths of any two sides must be greater than third side
=end

class Triangle
  attr_reader :sides

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort
    raise ArgumentError, "Invalid triangle" if invalid? 
  end

  def invalid?
    sides.min == 0 ||
    sides.first(2).sum <= sides.last
  end

  def kind
    return "equilateral" if sides.uniq.size == 1
    return "isosceles" if sides.uniq.size == 2
    return "scalene"
  end
end