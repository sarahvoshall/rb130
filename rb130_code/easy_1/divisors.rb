=begin

Write a method that takes an integer and returns an array of all the
integer's divisors. (All integers by which the input is evenly divisible.)

From a range of 1 to n, 
iterate through integers determining whether n modulus that integer is 0
If so, push it to a results array 
or use select to retun the divisors

=end

def divisors(int)
  1.upto(int).select do |num|
    int % num == 0
  end
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute