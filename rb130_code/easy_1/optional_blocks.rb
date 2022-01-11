=begin
Write a method that takes an optional block. 
If the block is specified, the method should execute it, 
and return the value returned by the block. 
If no block is specified, the method should simply return the 
String 'Does not compute.'.

=end

def compute(arg)
  # block_given? ? yield : "Does not compute."
  return "Does not compute." unless block_given?
  yield(arg)
end

p compute(4) { |arg| arg + 3 } == 7
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute.'