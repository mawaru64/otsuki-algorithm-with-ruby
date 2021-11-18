n, w = gets.strip.split.map(&:to_i)
a = n.times.map { gets.strip.to_i }

exist = false
(0...(1 << n)).each do |bit|
  sum = 0
  a.each.with_index { |a_i, idx| sum += a_i if (bit & 1 << idx).positive? }

  exist = true if sum == w
end

puts exist ? 'Yes' : 'No'
