class Diamond
  def self.make_diamond(letter)
    range = ('A'..letter).to_a
    total_width = range.size * 2 - 1
    outer_space = range.size - 1
    array = []

    range.each do |letter|
      array << construct_row(letter, total_width, outer_space)
      outer_space += 1
    end

    outer_space -= 2

    range.reverse[1..-1].each do |letter|
      array << construct_row(letter, total_width, outer_space)
      outer_space -= 1
    end

    array.join
  end

  class << self

    def construct_row(letter, total_width, outer_space)
      string = ' ' * total_width
      string[outer_space] = letter
      string[-outer_space - 1] = letter
      string + "\n"
    end 
  end
end