class Series
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def slices(number)
    raise ArgumentError if number > string.size

    string.chars.each_cons(number).with_object([]) do |sub_arr, array|
      array << sub_arr.map(&:to_i)
    end
  end
end

p Series.new('5678').slices(3)