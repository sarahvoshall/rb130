def convert(string)
  return string.dup unless block_given?

  string.chars.map do |char|
    yield(char)
  end.join
end

p convert('A simple string') { |char| char.upcase } # => "A SIMPLE STRING"
p convert('xyyz') { |char| char + char }            # => xxyyyyzz
p convert('Ready? Set. Go!') { |char|              # => Ready?Set.Go!
  char == ' ' ? '' : char
}                               # => Ready?Set.Go! 
p convert('a string')                        # => a string


# p("Hello") do
#   p "Goodbye"
# end