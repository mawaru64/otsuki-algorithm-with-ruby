n, k = gets.strip.split.map(&:to_i)
a = n.times.map { gets.strip.to_i }
b = n.times.map { gets.strip.to_i }

min_value = 20_000_000
a.each do |a_i|
  b.each do |b_j|
    next if a_i + b_j < k

    min_value = a_i + b_j if a_i + b_j < min_value
  end
end

puts min_value
