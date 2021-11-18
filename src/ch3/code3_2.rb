n, v = gets.strip.split.map(&:to_i)
a = n.times.map { gets.strip.to_i }

found_id = -1
a.each.with_index do |a_i, idx|
  if a_i == v
    found_id = idx
    break
  end
end

puts found_id
