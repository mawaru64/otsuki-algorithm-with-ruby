f = [0, 1]

2.upto(50) do |n|
  f[n] = f[n - 1] + f[n - 2]
  puts "#{n} 項目: #{f[n]}"
end
