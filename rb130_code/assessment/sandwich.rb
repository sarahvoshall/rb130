def sandwich(array)
  puts "I'm making a sandwich!"
  puts "Start with a slice of bread."
  yield(array)
  puts "Finish off with another slice of bread!"
  puts "Yum!"
end

lunch = ["Spread Mustard.", "Add Lettuce.", "Add Sliced Ham.", "Add Cheese.", "Spread Mayo."]
pbj = ["Spread Peanut Butter.", "Spread Jelly.", "Add Sliced Banana."]

sandwich(lunch) { |condiment| puts condiment }
sandwich(pbj) { |condiment| puts condiment }

# I'm making a sandwich!
# Start with a slice of bread.
# Spread Mustard.
# Add Lettuce.
# Add Sliced Ham.
# Add Cheese.
# Spread Mayo.
# Finish off with another slice of bread!
# Yum!

# I'm making a sandwich!
# Start with a slice of bread.
# Spread Peanut Butter.
# Spread Jelly.
# Add Sliced Banana.
# Finish off with another slice of bread!
# Yum!

# name = "Alice"

def run
  name = "Cassidy"
  yield(name)
end

puts run { "Hey there, #{name}" }
name = "Bill"