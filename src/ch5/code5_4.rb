def chmin(dp, dp_index, competitor)
  dp[dp_index] = competitor if dp[dp_index] > competitor
end

n = gets.to_i
h = gets.split.map(&:to_i)
dp = Array.new(n) { Float::INFINITY }
dp[0] = 0

n.times do |i|
  chmin(dp, i + 1, dp[i] + (h[i] - h[i + 1]).abs) if i + 1 < n
  chmin(dp, i + 2, dp[i] + (h[i] - h[i + 2]).abs) if i + 2 < n
end

puts dp.last
