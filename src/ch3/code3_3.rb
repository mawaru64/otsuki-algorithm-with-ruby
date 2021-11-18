n = gets.strip.to_i
a = n.times.map { gets.strip.to_i }

min_value = 20_000_000
a.each { |a_i| min_value = a_i if a_i < min_value }

puts min_value
