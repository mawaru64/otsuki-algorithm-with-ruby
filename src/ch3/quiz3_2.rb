n, v = gets.split.map(&:to_i)
a = n.times.map { gets.to_i }

puts a.count { |a_i| a_i == v }
