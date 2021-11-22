n, w = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
dp = Array.new(n + 1) { [false] * (w + 1) }

n.times do |i|
  w.times do |j|
    dp[i + 1][j] = true if dp[i][j]
    dp[i + 1][j] = true if j >= a[i] && dp[i][j - a[i]]
  end
end

puts dp[n][w] ? 'Yes' : 'No'
