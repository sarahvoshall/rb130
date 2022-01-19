=begin
write a method that iterates through an array until a given block returns false
if an element evaluates to true, it is not added to the return array
if an element evaluates to false, it is added to the array
iteration ceases once an element evaluates to true
  - that element is added to the array
=end

def drop_while(array)
  found = false

  array.each.with_object([]) do |element, result|
    if yield(element) && found == false
      next
    elsif yield(element) && found == true
      result << element 
    else !yield(element)
      result << element
      found = true
    end
  end
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []