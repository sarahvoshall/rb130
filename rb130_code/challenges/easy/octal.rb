class Octal
  attr_reader :string

	def initialize(string)
    @string = string.match(/[^0-7]/) ? 0 : string
  end

  def to_decimal
    return 0 if string == 0 

    string.chars.map.with_index do |char, index|
      char.to_i * 8**(string.size - index - 1)
    end.sum
  end
end