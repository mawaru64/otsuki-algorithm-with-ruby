n, v = gets.strip.split.map(&:to_i)
a = n.times.map { gets.strip.to_i }
puts "n: #{n}, v: #{v}"
puts "a: #{a}"

exist = false
a.each { |a_i| exist = true if a_i == v }

puts exist ? 'Yes' : 'No'
