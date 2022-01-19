def step(first, last, step)
  target = first

  until target > last
    yield(target)
    target += step 
  end
end

step(1, 10, 3) { |value| puts "value = #{value}" }

# value = 1
# value = 4
# value = 7
# value = 10