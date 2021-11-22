n = gets.to_i
a, b, c = n.times.map { gets.split.map(&:to_i) }.transpose
# i日にaを行った場合の最大合計幸福度
dp_a = [0] * (n + 1)
dp_b = [0] * (n + 1)
dp_c = [0] * (n + 1)

n.times do |i|
  dp_a[i + 1] = [dp_b[i] + a[i], dp_c[i] + a[i]].max
  dp_b[i + 1] = [dp_a[i] + b[i], dp_c[i] + b[i]].max
  dp_c[i + 1] = [dp_a[i] + c[i], dp_b[i] + c[i]].max
end

puts [dp_a.last, dp_b.last, dp_c.last].max
