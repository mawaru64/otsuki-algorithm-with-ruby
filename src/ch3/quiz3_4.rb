n = gets.to_i
a = n.times.map { gets.to_i }
min, max = 200_000_000, -200_000_000

a.each do |a_i|
  min = a_i if a_i < min
  max = a_i if a_i > max
end

diff = max - min
puts diff
