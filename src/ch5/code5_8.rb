s = gets.strip
t = gets.strip
dp = Array.new(s.size + 1) { Array.new(t.size + 1) { Float::INFINITY } }
dp[0][0] = 0

(s.size + 1).times do |i|
  (t.size + 1).times do |j|
    if i.positive? && j.positive?
      dp[i][j] = [dp[i][j], dp[i - 1][j - 1]].min if s[i - 1] == t[j - 1]
      dp[i][j] = [dp[i][j], dp[i - 1][j - 1] + 1].min unless s[i - 1] == t[j - 1]
    end

    dp[i][j] = [dp[i][j], dp[i - 1][j] + 1].min if i.positive?
    dp[i][j] = [dp[i][j], dp[i][j - 1] + 1].min if j.positive?
  end
end

puts dp[s.size][t.size]
