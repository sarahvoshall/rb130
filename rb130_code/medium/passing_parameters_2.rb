def splat(array)
  yield(array)
end

birds = %w(raven finch hawk eagle)

splat(birds) do |_, _, *birds|
  puts "Raptors: #{birds.join(', ')}"
end