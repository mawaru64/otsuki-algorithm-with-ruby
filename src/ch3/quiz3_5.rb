n = gets.to_i
a = gets.split.map(&:to_i)

count = 0
while a.all? { |a_i| a_i.even? }
  a = a.map { |a_i| a_i / 2 }
  count += 1
end

puts count
