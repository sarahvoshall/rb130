# def zip(arr1, arr2)
#   new_arr = []
#   counter = 0

#   until new_arr.size == arr1.size
#     new_arr << [arr1[counter], arr2[counter]]
#     counter += 1
#   end

#   new_arr
# end

# def zip(arr1, arr2)
#   result = []
#   arr1.each_with_index do |element, index|
#     result << [element, arr2[index]]
#   end
#   result
# end

def zip(arr1, arr2)
  arr1.each_with_index.with_object([]) do |(element, index), result|
    result << [element, arr2[index]]
  end
end


p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]