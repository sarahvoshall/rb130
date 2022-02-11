def filter(arr, &block)
  return [] unless block_given?

  arr.select do |element|
    yield(element)
  end
end

arr = [1, 2, 3, 4, 5]

filtered_arr = filter(arr) { |el| el != 3 }
p filtered_arr                               # [1, 2, 4, 5]
p arr                                        # [1, 2, 3, 4, 5]

filtered_arr = filter(arr) { |el| el <= 3 }
p filtered_arr                               # [1, 2, 3]
p arr                                        # [1, 2, 3, 4, 5]

filtered_arr = filter(arr)
p filtered_arr                               # []
p arr                                        # [1, 2, 3, 4, 5]

def do_something_silly(word)
  yield word
end

do_something_silly("hello") do |word, another_word|
  p word
  p another_word
end