n, k = gets.split.map(&:to_i)
a = n.times.map { gets.to_i }.sort
b = n.times.map { gets.to_i }.sort

min_value = Float::INFINITY
b.push(Float::INFINITY)

a.each do |a_i|
  b_j = b.find { |v| v >= k - a_i }
  min_value = a_i + b_j if min_value > a_i + b_j
end

puts min_value
