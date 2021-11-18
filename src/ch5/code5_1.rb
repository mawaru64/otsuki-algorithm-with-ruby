n = gets.to_i
h = gets.split.map(&:to_i)
dp = []

n.times do |i|
  puts i
  next dp[i] = 0 if i.zero?
  next dp[i] = (h[i] - h[i - 1]).abs if i == 1

  dp[i] = [
    dp[i - 1] + (h[i] - h[i - 1]).abs,
    dp[i - 2] + (h[i] - h[i - 2]).abs
  ].min
end

puts dp[n - 1]
