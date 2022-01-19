# iterate through an array and return the element for which the return value of the block is greatest
# return an array of the return values
# by index, return whichever is largest

def max_by(array)
  max = array[0]
  current_num = 0

  array.each_with_index do |element, index|
    if yield(element).to_i > current_num
      max = element
      current_num = yield(element)
    end
  end

  max
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil