=begin
Write a method that takes a sorted array 
and returns an array that includes all the missing integers in order
between the first and last elements of the argument

Initialize a results array
From a range beginning at index 0 and ending at index -1 of input array
Push integer at index to results array if input array does not include that integer
Return that array
=end

# def missing(arr)
#   results = []
#   (arr[0]..arr[-1]).to_a.each do |int| 
#     results << int unless arr.include?(int)
#   end
#   results
# end

# do without using a block (without using iteration)

def missing(arr)
  (arr[0]..arr[-1]).to_a - arr
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []