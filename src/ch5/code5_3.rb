def chmin(dp, dp_index, competitor)
  dp[dp_index] = competitor if dp[dp_index] > competitor
end

n = gets.to_i
h = gets.split.map(&:to_i)
dp = Array.new(n) { Float::INFINITY }

n.times do |i|
  next dp[i] = 0 if i.zero?

  chmin(dp, i, dp[i - 1] + (h[i] - h[i - 1]).abs)
  chmin(dp, i, dp[i - 2] + (h[i] - h[i - 2]).abs) if i > 1
end

puts dp.last
