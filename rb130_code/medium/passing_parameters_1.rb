def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "Nice selection of food we have gathered!"
end

produce = ['apples', 'corn', 'cabbage', 'wheat']
items = ['marshmallows', 'berries']

gather(produce) do |item| 
  puts "We have gathered some vegetables: #{produce[1]} and #{produce[2]}!"
end

gather(items) do |item|
  puts item.join(', ')
end
