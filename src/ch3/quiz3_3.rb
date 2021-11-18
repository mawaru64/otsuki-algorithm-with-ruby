n = gets.to_i
a = n.times.map { gets.to_i }

first_min  = 200_000_000
second_min = 200_000_000

a.each do |a_i|
  if a_i <= first_min
    first_min, second_min = a_i, first_min
  elsif a_i <= second_min
    second_min = a_i
  end
end

puts second_min
